#!/bin/sh

ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

# Sanitization 
[ -z ${1} ] && echo "Techlib not specified! Usage $0 NangateOpenCellLibrary|LIB065|pdt2002" && exit 1
[ "${1}" != "NangateOpenCellLibrary"   ]                  &&
    [ "${1}}" != "LIB065"              ]                  &&
    [ "${1}}" != "pdt2002"             ]                  &&
    echo "Invalid/Unsupported Techlib"                    &&
    echo "Usage $0 NangateOpenCellLibrary|LIB065|pdt2002" && 
    exit 1

pushd ${ROOT_DIR}/syn/run 
    export ROOT_PATH=${ROOT_DIR}                                    &&
    export TECHLIB=${1}                                             &&
    dc_shell -f ../bin/syn_nangate.tcl | tee ../log/syn_nangate.log &&
    mv command.log ../log
popd