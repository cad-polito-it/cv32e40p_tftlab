TECHLIB_DIR	= $(CURDIR)
TOP_LEVEL	= cv32e40p_top
STIL	= $(CURDIR)/cv32e40p_top_scan.spf
GEN_SFF	= $(CURDIR)/gen_saf_cv32e40p_top.sff
#ZOIX	= zoix

$(CURDIR)/run/zoix/zoix.sim:
	mkdir -pv $(CURDIR)/run/zoix

	cd run/zoix && \
	zoix -w \
		-v $(TECHLIB_DIR)/NangateOpenCellLibrary.v \
		$(CURDIR)/cv32e40p_top_scan.v \
		$(CURDIR)/strobe.sv \
		+timescale+override+1ps/1ps \
		+top+$(TOP_LEVEL)+strobe \
		+sv \
		+notimingchecks \
		+define+ZOIX \
		+define+TOPLEVEL=$(TOP_LEVEL) \
		+suppress+cell \
		+verbose+undriven \
		+stil+limit+mismatch+100 \
		+stil+dut+TOPLEVEL=$(TOP_LEVEL) \
		+stil+verify \
		+stil+sdi+test_si1+test_si2+test_si3+test_si4 \
		+stil+sdo+test_so1+test_so2+test_so3+test_so4 \
		+stil+offset+force+5 \
		+stil+offset+strobe+5 \
		-l zoix_compile.log

.zoix-stil: $(STIL)

ifndef FAULT_LIST
	@printf "\033[31mYou must provide a Fault List for fault simulation! Usage: make $@  FAULT_LIST=path/to_your/fault_list\033[39m\n"
	@exit 1
endif

	rm -rfv $(RUN_DIR)/fault_report.log
	rm -rfv $(RUN_DIR)/fmsh.log
	rm -rfv $(RUN_DIR)/__*__


	cd $(CURDIR)/run/zoix && \
	FAULT_LIST=$(CURDIR)/$(FAULT_LIST) \
	ROOT_DIR=$(CURDIR) \
	STIL=$(STIL) \
	fmsh -load $(CURDIR)/fsim_stil.fmsh

	cd $(RUN_DIR) && \
	fault_report -out cv32e40p_top_stil_fc.rpt

zoix/fsim_stil: $(CURDIR)/run/zoix/zoix.sim .zoix-stil

zoix/fsim_stil: RUN_DIR =$(CURDIR)/run/zoix

zoix/fgen/saf: $(CURDIR)/run/zoix/zoix.sim .zoix-fgen

.zoix-fgen: 

	cd run/zoix && \
	fr2fdef \
                +format+standard +verbose +warnreturn+0 +nocollapse \
                +dut+$(TOP_LEVEL) \
                -fr $(GEN_SFF) \
                -l fgen_z.log

	fault_report -out cv32e40p_top_saf.rpt

