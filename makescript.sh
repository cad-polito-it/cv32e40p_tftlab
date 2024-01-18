make synthesis/nangate45
make compile_sbst
make questa/compile
make questa/lsim/rtl/shell
make questa/lsim/gate/shell
# make questa/lsim/gate-timing/shell
make zoix/compile
# make zoix/compile-timing
make zoix/fgen/saf
make zoix/lsim
mv run/zoix/cv32e40p_top_saf.rpt fault_list/
make zoix/fsim FAULT_LIST="/fault_list/cv32e40p_top_saf.rpt"
