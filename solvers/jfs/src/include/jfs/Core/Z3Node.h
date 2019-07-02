//===----------------------------------------------------------------------===//
//
//                        JFS - The JIT Fuzzing Solver
//
// Copyright 2017-2019 REDACTED
//
// This file is distributed under the MIT license.
// See LICENSE.txt for details.
//
//===----------------------------------------------------------------------===//
#ifndef JFS_CORE_Z3NODE_H
#define JFS_CORE_Z3NODE_H
#include "z3.h"
#include <assert.h>
#include <string>
#include <vector>

namespace jfs {
namespace core {

template <typename T> class Z3NodeHandle {
  // Internally these Z3 types are pointers
  // so storing these should be cheap.
  // It would be nice if we could infer the Z3_context from the node
  // but I can't see a way to do this from Z3's API.
protected:
  T node;
  ::Z3_context context;

private:
  // To be specialised
  inline void inc_ref(T node);
  inline void dec_ref(T node);

public:
  Z3NodeHandle() : node(NULL), context(NULL) {}
  Z3NodeHandle(const T _node, const ::Z3_context _context)
      : node(_node), context(_context) {
    if (node && context) {
      inc_ref(node);
    }
  };
  ~Z3NodeHandle() {
    if (node && context) {
      dec_ref(node);
    }
  }
  Z3NodeHandle(const Z3NodeHandle& b) : node(b.node), context(b.context) {
    if (node && context) {
      inc_ref(node);
    }
  }
  Z3NodeHandle& operator=(const Z3NodeHandle& b) {
    if (node == NULL && context == NULL) {
      // Special case for when this object was constructed
      // using the default constructor. Try to inherit a non null
      // context.
      context = b.context;
    }
    assert(context == b.context && "Mismatched Z3 contexts!");
    // node != nullptr ==> context != NULL
    assert((node == NULL || context) &&
           "Can't have non nullptr node with nullptr context");

    if (node && context) {
      dec_ref(node);
    }
    node = b.node;
    if (node && context) {
      inc_ref(node);
    }
    return *this;
  }
  // To be specialised
  void dump() const;
  std::string toStr() const;

  operator T() const { return node; }

  Z3_context getContext() const { return context; }
  bool isNull() const { return node == nullptr; }
};

// Instantiate templates

// Specialise for Z3_sort
template <> inline void Z3NodeHandle<Z3_sort>::inc_ref(Z3_sort node) {
  // In Z3 internally this call is just a cast. We could just do that
  // instead to simplify our implementation but this seems cleaner.
  ::Z3_inc_ref(context, ::Z3_sort_to_ast(context, node));
}
template <> inline void Z3NodeHandle<Z3_sort>::dec_ref(Z3_sort node) {
  // In Z3 internally this call is just a cast. We could just do that
  // instead to simplify our implementation but this seems cleaner.
  ::Z3_dec_ref(context, ::Z3_sort_to_ast(context, node));
}
template <> void Z3NodeHandle<Z3_sort>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_sort>::toStr() const __attribute__((used));

class Z3ASTHandle;

class Z3SortHandle : public Z3NodeHandle<Z3_sort> {
public:
  // Inherit constructors
  using Z3NodeHandle<Z3_sort>::Z3NodeHandle;
  // Helper methods
  Z3_sort_kind getKind() const;
  bool isBoolTy() const;
  bool isBitVectorTy() const;
  bool isFloatingPointTy() const;
  // Return 0 if not bitvector, floating point, or bool
  unsigned getWidth() const;
  // Return 0 if not a bitvector
  unsigned getBitVectorWidth() const;
  // Return 0 if not floating point
  unsigned getFloatingPointBitWidth() const;
  unsigned getFloatingPointExponentBitWidth() const;
  unsigned getFloatingPointSignificandBitWidth() const; // Includes implicit bit
  Z3ASTHandle asAST() const;

  static Z3SortHandle getBoolTy(Z3_context ctx);
  static Z3SortHandle getBitVectorTy(Z3_context, unsigned bitWidth);
  static Z3SortHandle getFloat32Ty(Z3_context ctx);
  static Z3SortHandle getFloat64Ty(Z3_context ctx);
};

// Specialise for Z3_ast
template <> inline void Z3NodeHandle<Z3_ast>::inc_ref(Z3_ast node) {
  ::Z3_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_ast>::dec_ref(Z3_ast node) {
  ::Z3_dec_ref(context, node);
}
template <> void Z3NodeHandle<Z3_ast>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_ast>::toStr() const __attribute__((used));

class Z3AppHandle;
class Z3FuncDeclHandle;

// Provide a class rather than a typedef so we can add
// additional helper methods.
class Z3ASTHandle : public Z3NodeHandle<Z3_ast> {
public:
  // Inherit constructors
  using Z3NodeHandle<Z3_ast>::Z3NodeHandle;

  // Helper methods
  Z3_ast_kind getKind() const;
  bool isApp() const;
  bool isFuncDecl() const;
  bool isSort() const;
  bool isNumeral() const;

  bool isTrue() const;
  bool isFalse() const;
  bool isConstant() const;
  // FIXME: Should be renamed isAppOfFreeVariable
  bool isFreeVariable() const;
  bool isAppOf(Z3_decl_kind) const;
  bool isStructurallyEqualTo(Z3ASTHandle other) const;
  Z3SortHandle getSort() const;

  Z3AppHandle asApp() const;
  Z3FuncDeclHandle asFuncDecl() const;

  static Z3ASTHandle getTrue(Z3_context ctx);
  static Z3ASTHandle getFalse(Z3_context ctx);
  static Z3ASTHandle getBVZero(Z3_context, unsigned width);
  static Z3ASTHandle getBVZero(Z3SortHandle sort);
  static Z3ASTHandle getBV(Z3SortHandle sort, uint64_t value);
  static Z3ASTHandle getFloatAbsoluteSmallestSubnormal(Z3SortHandle sort,
                                                       bool positive);
  static Z3ASTHandle getFloatAbsoluteLargestSubnormal(Z3SortHandle sort,
                                                      bool positive);
  static Z3ASTHandle getFloatAbsoluteSmallestNormal(Z3SortHandle sort,
                                                    bool positive);
  static Z3ASTHandle getFloatAbsoluteLargestNormal(Z3SortHandle sort,
                                                   bool positive);
  static Z3ASTHandle getFloatZero(Z3SortHandle sort, bool positive = true);
  static Z3ASTHandle getFloatInfinity(Z3SortHandle sort, bool positive = true);
  static Z3ASTHandle getFloatNAN(Z3SortHandle sort);
  static Z3ASTHandle getFloatFromInt(Z3SortHandle sort, signed value);
};

// Specialise for Z3_app
template <> inline void Z3NodeHandle<Z3_app>::inc_ref(Z3_app node) {
  ::Z3_inc_ref(context, ::Z3_app_to_ast(context, node));
}
template <> inline void Z3NodeHandle<Z3_app>::dec_ref(Z3_app node) {
  ::Z3_dec_ref(context, ::Z3_app_to_ast(context, node));
}
template <> void Z3NodeHandle<Z3_app>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_app>::toStr() const __attribute__((used));

// FIXME: It's silly that Z3AppHandle does not inherit from Z3ASTHandle
// to reflect the hierarchy in Z3.
// Provide a class rather than a typedef so we can add
// additional helper methods.
class Z3AppHandle : public Z3NodeHandle<Z3_app> {
public:
  // Inherit constructors
  using Z3NodeHandle<Z3_app>::Z3NodeHandle;

  // Helper methods
  Z3FuncDeclHandle getFuncDecl() const;
  Z3_decl_kind getKind() const;
  unsigned getNumKids() const;
  Z3ASTHandle getKid(unsigned) const;

  bool isConstant() const;
  // FIXME: Should be renamed isAppOfFreeVariable
  bool isFreeVariable() const;
  bool isSpecialFPConstant() const;
  Z3ASTHandle asAST() const;
  Z3SortHandle getSort() const;

  bool getConstantAsUInt64(uint64_t* out) const;
};

// Specialise for Z3_func_decl
template <> inline void Z3NodeHandle<Z3_func_decl>::inc_ref(Z3_func_decl node) {
  ::Z3_inc_ref(context, ::Z3_func_decl_to_ast(context, node));
}
template <> inline void Z3NodeHandle<Z3_func_decl>::dec_ref(Z3_func_decl node) {
  ::Z3_dec_ref(context, ::Z3_func_decl_to_ast(context, node));
}
template <> void Z3NodeHandle<Z3_func_decl>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_func_decl>::toStr() const __attribute__((used));

// FIXME: It's silly that Z3FuncDeclHandle does not inherit from Z3ASTHandle
// to reflect the hierarchy in Z3.
// Provide a class rather than a typedef so we can add
// additional helper methods.
class Z3FuncDeclHandle : public Z3NodeHandle<Z3_func_decl> {
  // Inherit constructors
public:
  using Z3NodeHandle<Z3_func_decl>::Z3NodeHandle;
  Z3_decl_kind getKind() const;
  Z3SortHandle getSort() const;
  std::string getName() const;
  Z3ASTHandle asAST() const;

  // Parameters
  unsigned getNumParams() const;
  Z3_parameter_kind getParamKind(unsigned index) const;
  int getIntParam(unsigned index) const;
};

// Specialise for Z3_solver
template <> inline void Z3NodeHandle<Z3_solver>::inc_ref(Z3_solver node) {
  ::Z3_solver_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_solver>::dec_ref(Z3_solver node) {
  ::Z3_solver_dec_ref(context, node);
}
typedef Z3NodeHandle<Z3_solver> Z3SolverHandle;
template <> void Z3NodeHandle<Z3_solver>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_solver>::toStr() const __attribute__((used));

// Specialise for Z3_params
template <> inline void Z3NodeHandle<Z3_params>::inc_ref(Z3_params node) {
  ::Z3_params_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_params>::dec_ref(Z3_params node) {
  ::Z3_params_dec_ref(context, node);
}
typedef Z3NodeHandle<Z3_params> Z3ParamsHandle;
template <> void Z3NodeHandle<Z3_params>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_params>::toStr() const __attribute__((used));

// Specialise for Z3_model
template <> inline void Z3NodeHandle<Z3_model>::inc_ref(Z3_model node) {
  ::Z3_model_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_model>::dec_ref(Z3_model node) {
  ::Z3_model_dec_ref(context, node);
}
template <> void Z3NodeHandle<Z3_model>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_model>::toStr() const __attribute__((used));

class Z3ModelHandle : public Z3NodeHandle<Z3_model> {
  // Inherit constructors
public:
  using Z3NodeHandle<Z3_model>::Z3NodeHandle;
  Z3ASTHandle getAssignmentFor(Z3FuncDeclHandle);
  bool hasAssignmentFor(Z3FuncDeclHandle d) const;
  bool addAssignmentFor(Z3FuncDeclHandle decl, Z3ASTHandle e,
                        bool allowOverwrite = false);
  uint64_t getNumAssignments() const;
  Z3FuncDeclHandle getVariableDeclForIndex(uint64_t index);
  Z3ASTHandle evaluate(Z3ASTHandle e, bool modelCompletion);
  bool isEmpty() const;
};

// Specialise for Z3_goal
template <> inline void Z3NodeHandle<Z3_goal>::inc_ref(Z3_goal node) {
  ::Z3_goal_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_goal>::dec_ref(Z3_goal node) {
  ::Z3_goal_dec_ref(context, node);
}
template <> void Z3NodeHandle<Z3_goal>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_goal>::toStr() const __attribute__((used));

class Z3GoalHandle : public Z3NodeHandle<Z3_goal> {
  // Inherit constructors
public:
  using Z3NodeHandle<Z3_goal>::Z3NodeHandle;
  void addFormula(Z3ASTHandle);
  unsigned getNumFormulas() const;
  Z3ASTHandle getFormula(unsigned index) const;
};

class Z3ApplyResultHandle;

// Specialise for Z3_tactic
template <> inline void Z3NodeHandle<Z3_tactic>::inc_ref(Z3_tactic node) {
  ::Z3_tactic_inc_ref(context, node);
}
template <> inline void Z3NodeHandle<Z3_tactic>::dec_ref(Z3_tactic node) {
  ::Z3_tactic_dec_ref(context, node);
}
template <> void Z3NodeHandle<Z3_tactic>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_tactic>::toStr() const __attribute__((used));

class Z3TacticHandle : public Z3NodeHandle<Z3_tactic> {
  // Inherit constructors
public:
  using Z3NodeHandle<Z3_tactic>::Z3NodeHandle;
  Z3ApplyResultHandle apply(Z3GoalHandle goal);
  Z3ApplyResultHandle applyWithParams(Z3GoalHandle goal, Z3ParamsHandle params);
};

// Specialise for Z3_apply_result
template <>
inline void Z3NodeHandle<Z3_apply_result>::inc_ref(Z3_apply_result node) {
  ::Z3_apply_result_inc_ref(context, node);
}
template <>
inline void Z3NodeHandle<Z3_apply_result>::dec_ref(Z3_apply_result node) {
  ::Z3_apply_result_dec_ref(context, node);
}
template <>
void Z3NodeHandle<Z3_apply_result>::dump() const __attribute__((used));
template <>
std::string Z3NodeHandle<Z3_apply_result>::toStr() const __attribute__((used));

class Z3ApplyResultHandle : public Z3NodeHandle<Z3_apply_result> {
  // Inherit constructors
public:
  using Z3NodeHandle<Z3_apply_result>::Z3NodeHandle;
  unsigned getNumGoals() const;
  Z3GoalHandle getGoal(unsigned index) const;
  void collectAllFormulas(std::vector<Z3ASTHandle>&) const;
  Z3ModelHandle convertModelForGoal(unsigned index, Z3ModelHandle toConvert);
};
}
}
#endif
