#!/bin/sh -f
ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

pushd ${ROOT_DIR}/syn/run 
    export ROOT_PATH=${ROOT_DIR}                                                          &&
    dc_shell -f ../bin/spf_gen.tcl | tee ../log/spf_gen.log &&
    mv command.log ../log/command_spf.log
popd


