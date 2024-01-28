### design variables
set library_path "../NangateOpenCellLibrary.v"
set circuit_path "../cv32e40p_top_scan.v"
#set spf_path "../cv32e40p_top_scancompress.spf"
set spf_path "../cv32e40p_top_scan.spf"
set entity "cv32e40p_top"

#read the netlist
read_netlist $library_path -format verilog -library -insensitive
read_netlist $circuit_path -format verilog -master -insensitive

# Elaborate the top-level
run_build_model $entity

# DRC
# Adding pi constraints and output masks
#add_clocks 0 clk_i
#add_clocks 1 rst_ni
#set_dft_signal -view existing_dft -type Constant -port pulp_clock_en_i -active_state 1

# Run default DRC or use SPF file
run_drc $spf_path
#run_drc
#dft_drc

##########################
######## test ############
##########################
#Set fault model
set_faults -model stuck
#Create fault list or import it (one of the following)
add_faults -all
#add_faults $entity
#or add_faults -module <module name>
# or reading faults from file
# read_faults <file name> -add [-force_retain_code] [-maintain_detection]



#####################
## fault simulation #
#####################
#Read internal patterns
#set_patterns -internal

#set_atpg -abort_limit 50
#set_atpg -analyze_untestable_faults

#set_atpg -full_seq_atpg

# Enabling Fast-Sequential ATPG
#set_atpg -capture_cycles 2

run_atpg




########################
### Report summaries ###
########################
set_faults -summary verbose -fault_coverage
report_summaries > report_summaryTMAX.txt

write_patterns cv32e40p_top_patterns.stil -internal -format stil
#Write fault list
#write_faults fault_list_transition_fullA_LOS.txt -all -replace -uncollapsed
#write_faults fault_list_transition_collapsedA_LOS.txt -all -replace -collapsed

quit
