# Copyright (c) 2017, Daniel Liew
# This file is covered by the license in LICENSE.txt
# vim: set sw=4 ts=4 softtabstop=4 expandtab:
import logging
import yaml
import sys

_logger = logging.getLogger(__name__)

def loadYaml(openFile):
    if hasattr(yaml, 'CLoader'):
        # Use libyaml which is faster
        _loader = yaml.CLoader
    else:
        _logger.warning('Using slow Python YAML loader')
        _loader = yaml.Loader
    return yaml.load(openFile, Loader=_loader)

def writeYaml(openFile, data):
    if hasattr(yaml, 'CDumper'):
        # Use libyaml which is faster
        _dumper = yaml.CDumper
    else:
        _logger.warning('Using slow Python YAML dumper')
        _dumper = yaml.Dumper
    _logger.info('Writing "{}"'.format(openFile.name))
    as_yaml = yaml.dump(data, default_flow_style=False, Dumper=_dumper)
    openFile.write(as_yaml)
    return
