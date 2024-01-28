#!/bin/sh

mkdir -pv reports

# Move to the run directory
cd reports

# Invoke TetraMAX and run the TCL script
#dc_shell -f ../cv32e40p_compressor.tcl
tmax -shell ../tmax_atpg.tcl #> full_reportATPG.txt
