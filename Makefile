GATE_DIR      = $(CURDIR)/syn/out
TECHLIB_DIR   = $(CURDIR)/syn/techlib
export TB_DIR = $(CURDIR)/example_tb/core
FIRMWARE      = $(CURDIR)/sbst/sbst.hex

TOP_LEVEL     = cv32e40p_top
EVCD          = $(CURDIR)/run/questasim/$(TOP_LEVEL).evcd
EVCD_TOP	  = tb_top.wrapper_i.top_i
SDF           = $(GATE_DIR)/$(TOP_LEVEL).sdf
SDF_TOP       = /wrapper_i/top_i

export TB_CLK_NS     = 10.0
export SYN_CLK_NS    = 5.0

# --- Flags taken from example_tb/core/Makefile -------------

PYTHON          = python3
ZOIX			= zoix
FR2FDEF			= fr2fdef
FAULT_REPORT	= fault_report
PT_SHELL		= pt_shell

# vsim configuration
VLIB			= vlib

VLOG			= vlog
VLOG_FLAGS		= -pedanticerrors -suppress 2577 -suppress 2583 -define CV32E40P_TRACE_EXECUTION
VLOG_LOG        = vloggy

VOPT			= vopt
VOPT_FLAGS		= -debugdb -fsmdebug -pedanticerrors -suppress 2732 +acc #=mnprft

VSIM			= vsim
VSIM_HOME       = ${QUESTASIM_HOME}
VSIM_FLAGS      = -suppress 3015 -suppress 3448 -suppress 16107 +dumpports+nocollapse
ALL_VSIM_FLAGS  = $(VSIM_FLAGS)
VSIM_DEBUG_FLAG = -debugdb
VSIM_GUI_FLAGS  = -gui -debugdb

# RTL source files
RTLSRC_HOME           := $(TB_DIR)/../..
export DESIGN_RTL_DIR  = $(RTLSRC_HOME)/rtl
CV_CORE_MANIFEST      := $(RTLSRC_HOME)/cv32e40p_manifest.flist
RTLSRC_TB_PKG		  := $(TB_DIR)/include/perturbation_pkg.sv
RTLSRC_TB_TOP		  := $(TB_DIR)/tb_top.sv
RTLSRC_TB		      := $(filter-out $(TB_DIR)/cv32e40p_fp_wrapper.sv, $(wildcard $(TB_DIR)/*.sv))

RTLSRC_FPNEW_TB		  := $(wildcard $(TB_DIR)/*.sv)
RTLSRC_FPNEW_INCDIR	  := $(RTLSRC_HOME)/rtl/fpnew/src/common_cells/include
RTLSRC_FPNEW_PKG	  := $(RTLSRC_HOME)/rtl/fpnew/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv $(RTLSRC_HOME)/rtl/fpnew/src/fpnew_pkg.sv $(RTLSRC_HOME)/rtl/fpnew/src/common_cells/src/cf_math_pkg.sv
RTLSRC_FPNEW		  := $(filter-out $(RTLSRC_HOME)/rtl/fpnew/src/fpnew_pkg.sv, $(wildcard $(RTLSRC_HOME)/rtl/fpnew/src/*.sv)) \
						 $(filter-out $(RTLSRC_HOME)/rtl/fpnew/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv, $(wildcard $(RTLSRC_HOME)/rtl/fpnew/src/fpu_div_sqrt_mvp/hdl/*.sv)) \
						 $(RTLSRC_HOME)/rtl/fpnew/src/common_cells/src/rr_arb_tree.sv  $(RTLSRC_HOME)/rtl/fpnew/src/common_cells/src/lzc.sv

RTLSRC_VLOG_TB_TOP	  := $(basename $(notdir $(RTLSRC_TB_TOP)))
RTLSRC_VOPT_TB_TOP	  := $(addsuffix _vopt, $(RTLSRC_VLOG_TB_TOP))




# ============== HELPERS ==============================


help::
	@printf "\033[1mSynthesis\033[0m\n"
	@printf "\033[31m\tsynthesis/nangate45\033[39m Invokes Synopsys Design Compiler to synthesize the CV32E40P using nangate45 as tech lib\n"
	@printf "\033[31m\tsynthesis/nangate45/scan_insertion \033[39m Invokes Synopsys Design Compiler to insert scan chains in CV32E40P (assuming Nangate as tech lib)\n"
	@printf "\033[1mStatic Timing Analysis\033[0m\n"
	@printf "\033[31m\tpt/generate_gsf\033[39m Invokes Synopsys Prime Time to generate a Global Slack File for the gate-level of CV32E40P\n"
	@printf "\033[1mCross Compile\033[0m\n"
	@printf "\033[31m\tcompile_sbst\033[39m Cross-Compiles your STL for the CV32E40P RISC-V ISA.\n"
	@printf "\033[1mLogic Simulation\033[0m\n"
	@printf "\033[31m\tquesta/lsim/compile\033[39m Invokes Siemens QuestaSIM to compile CV32E40P RT-level and Gate-level descriptions for functional logic simulation\n"
	@printf "\033[31m\tquesta/lsim/compile-timing\033[39m Invokes Siemens QuestaSIM to compile CV32E40P RT-level and Gate-level descriptions for timing logic simulation\n"
	@printf "\033[31m\tquesta/lsim/rtl/shell\033[39m Invokes QuestaSIM to perform an RT-level simulation of the sbst in shell mode.\n"
	@printf "\033[31m\tquesta/lsim/rtl/gui\033[39m Invokes QuestaSIM to perform an RT-level simulation of the sbst in gui mode.\n"
	@printf "\033[31m\tquesta/lsim/gate/shell\033[39m Invokes QuestaSIM to perform a Gate-level functional simulation of the sbst in shell mode.\n"
	@printf "\033[31m\tquesta/lsim/gate/gui\033[39m Invokes QuestaSIM to perform a Gate-level functional simulation of the sbst in gui mode.\n"
	@printf "\033[31m\tquesta/lsim/gate-timing/shell\033[39m Invokes QuestaSIM to perform a Gate-level timing simulation of the sbst in shell mode.\n"
	@printf "\033[31m\tquesta/lsim/gate-timing/gui\033[39m Invokes QuestaSIM to perform a Gate-level timing simulation of the sbst in gui mode.\n"
	@printf "\033[1mFault Simulation\033[0m\n"
	@printf "\033[31m\tzoix/compile\033[39m Compiles sources for Z01X usage in functional mode.\n"
	@printf "\033[31m\tzoix/compile-timing\033[39m Compiles sources for Z01X usage with delay information (.sdf).\n"
	@printf "\033[31m\tzoix/fgen/tdf\033[39m Generates TDF fault list in SFF for Z01X.\n"
	@printf "\033[31m\tzoix/fgen/saf\033[39m Generates SAF fault list in SFF for Z01X.\n"
	@printf "\033[31m\tzoix/fgen/sdd SDD_CONFIG="..."\033[39m Generates SDD (Small Delay Defects) fault list in SFF for Z01X.\n\t\033[0;33mUsage: zoix/fgen/sdd S=<float>|K=<float> [M=<float>]\" (\" \" are needed!!!)\n"
	@printf "\033[31m\tzoix/lsim\033[39m Logic simulation to validate eVCD stimuli.\n"
	@printf "\033[31m\tzoix/lsim-timing\033[39m Logic simulation with timing annotations to validate eVCD stimuli.\n"
	@printf "\033[31m\tzoix/fsim FAULT_LIST=...\033[39m Fault simulation of CV32E40P for FAULT_LIST.\n"
	@printf "\033[31m\tzoix/fsim FAULT_LIST=...\033[39m Fault simulation with timing annotation of CV32E40P for FAULT_LIST.\n"
	@printf "\033[1mOther\033[0m\n"
	@printf "\033[31m\tclean\033[39m Cleans all run/ dirs and sbst/.\n"
	@printf "\033[31m\ttarball\033[39m Cleans all run/ dirs and sbst/ and generates a tarball.\n"

# ============== SYNTHESIS ==============================

synthesis/nangate45:
	
	bash syn/bin/run_syn.sh NangateOpenCellLibrary

synthesis/nangate45/scan_insertion:
	
	bash syn/bin/run_scan_insertion.sh

# ============== QUESTASIM ==============================

$(CURDIR)/run/questasim:
	mkdir -pv $@

questa/%: RUN_DIR    = $(CURDIR)/run/questasim
questa/%: export TOP = $(TOP_LEVEL)

.questa-compile-gate: $(CURDIR)/run/questasim

	cd $(RUN_DIR) && \
	$(VLIB) $(VWORK_GATE)

	cd $(RUN_DIR) && \
	$(VLOG) -work $(VWORK_GATE) \
		$(DEFINE_FUNCTIONAL) \
		${TECHLIB_DIR}/NangateOpenCellLibrary.v

	cd $(RUN_DIR) && \
	$(VLOG) -sv -work $(VWORK_GATE) -cover t \
		-timescale "1 ns/ 1 ps" \
		$(VLOG_FLAGS) \
		+incdir+${DESIGN_RTL_DIR}/include \
		+incdir+${DESIGN_RTL_DIR}/../bhv \
		+incdir+${DESIGN_RTL_DIR}/../bhv/include \
		+incdir+${DESIGN_RTL_DIR}/../sva \
		${DESIGN_RTL_DIR}/include/cv32e40p_apu_core_pkg.sv \
		${DESIGN_RTL_DIR}/include/cv32e40p_fpu_pkg.sv \
		${DESIGN_RTL_DIR}/include/cv32e40p_pkg.sv \
		+define+GATE_LEVEL_TOP=$(TOP_LEVEL) \
		${GATE_DIR}/cv32e40p_top.v \
		${TECHLIB_DIR}/NangateOpenCellLibrary_cv32e40p_clock_gate.sv \
		${DESIGN_RTL_DIR}/../bhv/include/cv32e40p_tracer_pkg.sv \
		${DESIGN_RTL_DIR}/../bhv/cv32e40p_tb_wrapper.sv \
		$(RTLSRC_TB_PKG) \
		$(RTLSRC_TB)

	cd $(RUN_DIR) && \
	$(VOPT) -work $(VWORK_GATE) \
		$(VOPT_FLAGS) $(VOPT_SDF) \
		$(RTLSRC_VLOG_TB_TOP) -o $(RTLSRC_VOPT_TB_TOP)     

.questa-compile-rtl: $(CURDIR)/run/questasim

	cd $(RUN_DIR) && \
	$(VLIB) work_rtl

	cd $(RUN_DIR) && \
	$(VLOG) -work work_rtl $(VLOG_FLAGS) \
		-f $(CV_CORE_MANIFEST) $(RTLSRC_TB_PKG) $(RTLSRC_TB)

	cd $(RUN_DIR) && \
	$(VOPT) -work work_rtl  $(VOPT_FLAGS) \
		$(RTLSRC_VLOG_TB_TOP) -o $(RTLSRC_VOPT_TB_TOP)

questa/compile: DEFINE_FUNCTIONAL = +define+functional
questa/compile: VWORK_GATE         = work_gate

#questa/compile: .questa-compile-rtl .questa-compile-gate
questa/compile: .questa-compile-gate

questa/compile-timing: VOPT_SDF   = -sdftyp $(SDF_TOP)=$(SDF)
questa/compile-timing: VWORK_GATE = work_gate_timing

questa/compile-timing: .questa-compile-rtl .questa-compile-gate

.questa-lsim: $(CURDIR)/run/questasim compile_sbst

	cd $(RUN_DIR) && \
	$(VSIM) -c \
		$(VSIM_FLAGS) $(VSIM_DEBUG_FLAG) \
		-work $(VWORK) tb_top_vopt \
		"+firmware=$(FIRMWARE)" \
		+dumpports+nocollapse \
		-do $(CURDIR)/tcl/vsim.tcl

.questa-lsim-gui: $(CURDIR)/run/questasim compile_sbst

	cd $(RUN_DIR) && \
	$(VSIM) \
		$(VSIM_FLAGS) $(VSIM_GUI_FLAGS) \
		-work $(VWORK) tb_top_vopt \
		"+firmware=$(FIRMWARE)" \
		+dumpports+nocollapse \
		-do $(CURDIR)/tcl/vsim.tcl

questa/lsim/rtl/shell: export RUN_GUI  = 0
questa/lsim/rtl/shell: export RUN_GATE = 0
questa/lsim/rtl/shell: VWORK           = work_rtl

questa/lsim/rtl/shell: .questa-lsim

questa/lsim/gate/shell: export RUN_GUI  = 0
questa/lsim/gate/shell: export RUN_GATE = 1
questa/lsim/gate/shell: VWORK           = work_gate

questa/lsim/gate/shell: .questa-lsim

questa/lsim/gate-timing/shell: export RUN_GUI  = 0
questa/lsim/gate-timing/shell: export RUN_GATE = 1
questa/lsim/gate-timing/shell: VWORK           = work_gate_timing

questa/lsim/gate-timing/shell: .questa-lsim

questa/lsim/rtl/gui: export RUN_GUI  = 1
questa/lsim/rtl/gui: export RUN_GATE = 0
questa/lsim/rtl/gui: VWORK           = work_rtl

questa/lsim/rtl/gui: .questa-lsim-gui

questa/lsim/gate/gui: export RUN_GUI  = 1
questa/lsim/gate/gui: export RUN_GATE = 1
questa/lsim/gate/gui: VWORK           = work_gate

questa/lsim/gate/gui: .questa-lsim-gui

questa/lsim/gate-timing/gui: export RUN_GUI  = 1
questa/lsim/gate-timing/gui: export RUN_GATE = 1
questa/lsim/gate-timing/gui: VWORK           = work_gate_timing

questa/lsim/gate-timing/gui: .questa-lsim-gui

# ============== SBST ==============================

compile_sbst:

	$(MAKE) -C $(CURDIR)/sbst

# ============== PRIMETIME ==============================

$(CURDIR)/run/pt:
	mkdir -pv $@

%.gsf: export DDC = $*.ddc
%.gsf: export SDC = $*.sdc
%.gsf: export SDF = $*.sdf
%.gsf: export GSF = $@
%.gsf: export ROOT_DIR = $(CURDIR)
%.gsf: %.sdf $(CURDIR)/run/pt
	cd $(CURDIR)/run/pt && \
	$(PT_SHELL) -file $(CURDIR)/tcl/pt.tcl

pt/generate_gsf: $(GATE_DIR)/cv32e40p_top.gsf

%.gsf.csv: %.gsf
	@echo "fault_site,max_rise,max_fall"                             > $@
	@tail $< -n+10 | head -n-3 | awk '{OFS=","}{print $$3,$$1,$$2}' >> $@
	@echo "Generated file: $@"


# ============== ZOIX ==============================

$(CURDIR)/run/zoix:
	mkdir -pv $@

$(CURDIR)/run/zoix_timing:
	mkdir -pv $@

$(CURDIR)/run/zoix/zoix.sim:
	mkdir -pv $(CURDIR)/run/zoix

	cd $(CURDIR)/run/zoix && \
	$(ZOIX) -w \
		-v $(TECHLIB_DIR)/NangateOpenCellLibrary.v \
		$(GATE_DIR)/cv32e40p_top.v \
		$(CURDIR)/zoix/strobe.sv \
		+timescale+override+1ps/1ps \
		+top+$(TOP_LEVEL)+strobe \
		+sv \
		+notimingchecks \
		+define+ZOIX \
		+define+TOPLEVEL=$(TOP_LEVEL) \
		+suppress+cell \
		+delay_mode_fault \
		+verbose+undriven \
		-l zoix_compile.log
	
$(CURDIR)/run/zoix_timing/zoix.sim:
	mkdir -pv $(CURDIR)/run/zoix_timing

	cd $(CURDIR)/run/zoix_timing && \
	$(ZOIX) -w \
		-v $(TECHLIB_DIR)/NangateOpenCellLibrary.v \
		$(GATE_DIR)/cv32e40p_top.v \
		$(CURDIR)/zoix/strobe.sv \
		+timescale+override+1ps/1ps \
		+top+$(TOP_LEVEL)+strobe \
		+sv \
		+notimingchecks \
		+define+ZOIX \
		+define+TOPLEVEL=$(TOP_LEVEL) \
		+suppress+cell \
		+sdf_file+$(SDF) \
    	+sdf_path+$(TOP_LEVEL) \
		+delay_mode_path \
		+verbose+undriven \
		-l zoix_compile.log

zoix/compile: $(CURDIR)/run/zoix/zoix.sim

zoix/compile-timing: $(CURDIR)/run/zoix_timing

.zoix-fgen: 

	cd $(RUN_DIR) && \
	$(FR2FDEF) \
		+format+standard +verbose +warnreturn+0 +nocollapse \
		+dut+$(TOP_LEVEL) \
		-fr $(GEN_SFF) \
		-l fgen_z.log
	
	cd $(RUN_DIR) && \
	$(FAULT_REPORT) -out $(OUT_RPT)

zoix/fgen/saf: RUN_DIR = $(CURDIR)/run/zoix
zoix/fgen/saf: GEN_SFF = $(CURDIR)/zoix/gen_saf_cv32e40p_top.sff
zoix/fgen/saf: OUT_RPT = $(RUN_DIR)/cv32e40p_top_saf.rpt

zoix/fgen/saf: $(CURDIR)/run/zoix/zoix.sim .zoix-fgen 

zoix/fgen/tdf: RUN_DIR = $(CURDIR)/run/zoix
zoix/fgen/tdf: GEN_SFF = $(CURDIR)/zoix/gen_tdf_cv32e40p_top.sff
zoix/fgen/tdf: OUT_RPT = $(RUN_DIR)/cv32e40p_top_tdf.rpt

zoix/fgen/tdf: $(CURDIR)/run/zoix/zoix.sim .zoix-fgen 

zoix/fgen/sdd: RUN_DIR = $(CURDIR)/run/zoix_timing
zoix/fgen/sdd: export GSF_CSV = $(GATE_DIR)/cv32e40p_top.gsf.csv
zoix/fgen/sdd: export TDF_RPT = $(RUN_DIR)/../zoix/cv32e40p_top_tdf.rpt
zoix/fgen/sdd: export SDD_RPT = $(RUN_DIR)/cv32e40p_top_sdd$(shell [ -z  "$(S)" ] && ([ -z  "$(K)" ] || printf "_K$(K)"; [ -z  "$(M)" ] || printf "_M$(M)") || printf "_S$(S)"  ).rpt
zoix/fgen/sdd: export TOPLEVEL = $(TOP_LEVEL)

zoix/fgen/sdd: $(CURDIR)/run/zoix_timing/zoix.sim zoix/fgen/tdf $(GATE_DIR)/cv32e40p_top.gsf.csv

ifeq ($(or $(K), $(S), $(M)),)
	@printf "\033[0;33mUsage (one of the following):\033[39m\n"
	@printf "\033[0;33m  $@ K=<float>\033[39m\n"
	@printf "\033[0;33m  $@ M=<float> K=<float>\033[39m\n"
	@printf "\033[0;33m  $@ S=<float>\033[39m\n"
	@exit 1
endif
ifdef S
	cd $(RUN_DIR) && \
	$(PYTHON) $(CURDIR)/gen_sdd_flist.py -S $(S)
else
ifdef K
ifdef M
	cd $(RUN_DIR) && \
	$(PYTHON) $(CURDIR)/gen_sdd_flist.py -K $(K) -M $(M)
else
	cd $(RUN_DIR) && \
	$(PYTHON) $(CURDIR)/gen_sdd_flist.py -K $(K)
endif
endif
endif
.zoix-lsim: $(EVCD)

	cd $(RUN_DIR) && \
	./zoix.sim \
		+vcd+file+"$(EVCD)" \
		+vcd+dut+$(TOP_LEVEL)+$(EVCD_TOP) \
		+vcd+verbose \
		+vcd+verify \
		-l zoix_logic_sim.log 

zoix/lsim:        RUN_DIR = $(CURDIR)/run/zoix
zoix/lsim-timing: RUN_DIR = $(CURDIR)/run/zoix_timing

zoix/lsim: $(CURDIR)/run/zoix/zoix.sim .zoix-lsim 

zoix/lsim-timing: $(CURDIR)/run/zoix_timing/zoix.sim .zoix-lsim

.zoix-fsim: $(EVCD)

ifndef FAULT_LIST
	@printf "\033[31mYou must provide a Fault List for fault simulation! Usage: make $@  FAULT_LIST=path/to_your/fault_list\033[39m\n"
	@exit 1
endif 
	rm -rfv $(RUN_DIR)/fault_report.log
	rm -rfv $(RUN_DIR)/fmsh.log
	rm -rfv $(RUN_DIR)/__*__

	cd $(RUN_DIR) && \
	FAULT_LIST=$(CURDIR)/$(FAULT_LIST) \
	ROOT_DIR=$(CURDIR) \
	VCD=$(EVCD) \
	fmsh -load $(CURDIR)/zoix/fsim_evcd.fmsh | tee zoix_fsim_evcd.log

zoix/fsim:        RUN_DIR = $(CURDIR)/run/zoix
zoix/fsim-timing: RUN_DIR = $(CURDIR)/run/zoix_timing

zoix/fsim: $(CURDIR)/run/zoix/zoix.sim .zoix-fsim

zoix/fsim-timing: $(CURDIR)/run/zoix_timing/zoix.sim .zoix-fsim

zoix/clean-all: zoix/clean zoix/clean-timing

zoix/clean:
	rm -vfr $(CURDIR)/run/zoix

zoix/clean-timing:
	rm -vfr $(CURDIR)/run/zoix_timing

clean: 
	rm -vfr $(CURDIR)/run/*
	rm -vfr $(CURDIR)/syn/run/*
	rm -vfr $(GATE_DIR)/run/*
	rm -vfr $(GATE_DIR)/*gsf*
	$(MAKE) -C $(CURDIR)/sbst clean 
	$(MAKE) -C $(TB_DIR) clean 

tarball: clean 
	tar -zcvf ../cv32e40p_tftlab.tar.gz .
