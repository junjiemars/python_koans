#!/bin/bash

workspaceRoot=${workspaceRoot:-$(cd `dirname ${BASH_SOURCE[0]}`/../ && pwd)}

if ! [[ $PS1 =~ ^\(python_koans\)$ ]]; then
  source ${workspaceRoot}/bin/activate
fi

#major_version="`python -V 2>&1 | \
#  sed -e 's/^Python\ \([0-9]*\)\.[0-9]*\.[0-9]*/\1/'`"
major_version="`python -c 'import sys; print(sys.version_info[0])'`"

cd ${workspaceRoot}/python${major_version}
python contemplate_koans.py
