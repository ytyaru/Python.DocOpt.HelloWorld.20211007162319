#!/usr/bin/env python3
# coding: utf8
"""
Usage:
  run.sh <PATH>
  run.sh [-t <title>] <PATH>
  run.sh [-f <folder>] <PATH>
  run.sh [-t <title>] [-f <folder>] <PATH>
"""
import docopt
args = docopt.docopt(__doc__)
print(args)
