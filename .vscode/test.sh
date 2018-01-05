#!/bin/bash

workspaceRoot=${workspaceRoot:-`dirname ${PWD}/../`}

if ! [[ $PS1 =~ ^\(python_koans\)$ ]]; then
  source ${workspaceRoot}/bin/activate
fi

major_version="`python -V 2>&1|sed -e 's/^Python\ \([0-9]*\)\.[0-9]*\.[0-9]*/\1/'`"

cd ${workspaceRoot}/python${major_version}
python contemplate_koans.py
