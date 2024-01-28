TECHLIB_DIR = syn/techlib/
GATE_DIR = tmax/
TOP_LEVEL = cv32e40p_top
STIL = tmax/reports/cv32e30p_top_patterns.stil
FAULT_LIST = run/zoix/cv32e40p_top_saf.rpt

mkdir -pv run/zoix

        cd ./run/zoix && \
        zoix -w \
                -v $(TECHLIB_DIR)/NangateOpenCellLibrary.v \
                $(GATE_DIR)/cv32e40p_top_scan.v \
                zoix/strobe.sv \
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

FAULT_LIST=./$(FAULT_LIST) \
ROOT_DIR= . \
STIL=$(STIL) \

fmsh -load zoix/fsim_stil.fmsh | tee zoix_fsim_stil.log

