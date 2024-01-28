 make clean 
 make synthesis/nangate45 | grep Error
 make compile_sbst | grep Error 
 make questa/compile | grep Error
 make questa/lsim/gate/shell | grep Error 
 make zoix/lsim
 make zoix/fgen/saf
 make zoix/fsim FAULT_LIST=run/zoix/cv32e40p_top_saf.rpt 
