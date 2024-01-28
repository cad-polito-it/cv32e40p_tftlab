set ROOT_PATH      $env(ROOT_PATH)
set DESIGN_RTL_DIR $ROOT_PATH/rtl
set RISCV_PATH     $ROOT_PATH
set GATE_PATH      ../../tmax/
set LOG_PATH       ../log
set TECHLIB_PATH   ../techlib
set TOPLEVEL       cv32e40p_top

set_app_var template_naming_style    "%s"
set_app_var template_parameter_style ""


# ------------------------------------------------------------------------------- #
# Libraries, Design Sources                                                       #
# ------------------------------------------------------------------------------- #

set search_path [ join "$RISCV_PATH/rtl/include $search_path" ]
set search_path [ join "$TECHLIB_PATH $search_path" ]

set synthetic_library dw_foundation.sldb
source ../bin/NangateOpenCell.dc_setup_synthesis.tcl
set link_library [list $target_library $synthetic_library]

analyze -format sverilog -work work ${TECHLIB_PATH}/NangateOpenCellLibrary_cv32e40p_clock_gate.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/include/cv32e40p_apu_core_pkg.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/include/cv32e40p_fpu_pkg.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/include/cv32e40p_pkg.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_if_stage.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_cs_registers.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_register_file_ff.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_load_store_unit.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_id_stage.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_aligner.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_decoder.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_compressed_decoder.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_fifo.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_prefetch_buffer.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_hwloop_regs.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_mult.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_int_controller.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_ex_stage.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_alu_div.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_alu.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_ff_one.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_popcnt.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_apu_disp.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_controller.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_obi_interface.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_prefetch_controller.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_sleep_unit.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_core.sv
analyze -format sverilog -work work ${DESIGN_RTL_DIR}/cv32e40p_top.sv



# ------------------------------------------------------------------------------- #
# Standalone configuration                                                        #
# ------------------------------------------------------------------------------- #
set COREV_PULP       0
set COREV_CLUSTER    0
set FPU              0
set FPU_ADDMUL_LAT   0
set FPU_OTHERS_LAT   0
set ZFINX            0
set NUM_MHPMCOUNTERS 1

set PARAMETERS "COREV_PULP=${COREV_PULP},
COREV_CLUSTER=${COREV_CLUSTER},
FPU=${FPU},
FPU_ADDMUL_LAT=${FPU_ADDMUL_LAT},
FPU_OTHERS_LAT=${FPU_OTHERS_LAT},
ZFINX=${ZFINX},
NUM_MHPMCOUNTERS=${NUM_MHPMCOUNTERS}"


# ------------------------------------------------------------------------------- #
#  Elaborate, Clocks & Delays                                                     #
# ------------------------------------------------------------------------------- #

elaborate $TOPLEVEL -work work -parameters $PARAMETERS
link
uniquify
check_design 

read_sdc $ROOT_PATH/constraints/cv32e40p_core.sdc

set_operating_conditions $OPER_COND

# ------------------------------------------------------------------------------- #
#  Compile and Export                                                             #
# ------------------------------------------------------------------------------- #
set uniquify_naming_style "%s_%d"
uniquify -force

#-gate_clock -no_boundary_optimization -timing
compile_ultra -no_autoungroup
#compile 

report_timing > ${LOG_PATH}/report_timing.log
change_names -hierarchy -rules verilog
write -hierarchy -format verilog -output "${GATE_PATH}/${TOPLEVEL}.v"
write -hierarchy -format ddc     -output "${GATE_PATH}/${TOPLEVEL}.ddc"
write_sdf        -version 3.0            "${GATE_PATH}/${TOPLEVEL}.sdf"
write_sdc                                "${GATE_PATH}/${TOPLEVEL}.sdc"

# ------------------------------------------------------------------------------- #
#  TestMAX Compliance                                                             #
# ------------------------------------------------------------------------------- #
write_test_protocol              -output "${GATE_PATH}/${TOPLEVEL}.spf"
write_tmax_library               -path "${GATE_PATH}"

quit
