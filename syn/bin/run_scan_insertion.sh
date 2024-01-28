#!/bin/sh -f
ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../..

pushd ${ROOT_DIR}/syn/run 
    export ROOT_PATH=${ROOT_DIR}                                                          &&
    dc_shell -f ../bin/postsyn_scan_insertion.tcl | tee ../log/postsyn_scan_insertion.log &&
    mv command.log ../log/command_scan.log
popd


