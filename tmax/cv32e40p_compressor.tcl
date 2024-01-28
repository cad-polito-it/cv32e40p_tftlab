source ../NangateOpenCell.dc_setup_scan.tcl
#set library_path "../../syn/techlib/NangateOpenCellLibrary.v"
set circuit_path "../cv32e40p_top.v"
#set spf_path ""
set entity "cv32e40p_top"

read_verilog $circuit_path
current_design $entity
link
check_design

report_area
set_dft_configuration -scan_compression enable

set test_default_scan_style multiplexed_flip_flop

set_scan_configuration -chain_count 4
set_scan_compression_configuration -chain_count 10

create_test_protocol -infer_asynch -infer_clock
dft_drc
preview_dft
insert_dft

streaming_dft_planner

change_names -rules verilog -hierarchy

report_scan_path -test_mode all

report_area

write -hierarchy -format verilog -output ../cv32e40p_top_scan.v

write_test_protocol -output ../cv32e40p_top_scan.spf -test_mode Internal_scan
write_test_protocol -output ../cv32e40p_top_scancompress.spf -test_mode ScanCompression_mode

quit
