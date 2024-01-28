// ZOIX MODULE FOR FAULT INJECTION AND STROBING

`timescale 1ps / 1ps

`ifndef TOPLEVEL
	`define TOPLEVEL cv32e40p_top
`endif

module strobe;


// Inject faults
initial begin

        $display("ZOIX INJECTION");
        //$fs_inject;       // by default

        $fs_delete;			// CHECK THIS
        $fs_add(`TOPLEVEL);		// CHECK THIS

end


// Strobe point
initial begin

        //#`START_TIME;
        #59990; //equivalent to strobe_offset tmax
        forever begin
                //another output = fault_detected_o
        //OUTPUTS

                $fs_strobe(`TOPLEVEL.instr_req_o);
                $fs_strobe(`TOPLEVEL.data_req_o);
                $fs_strobe(`TOPLEVEL.data_we_o);
                $fs_strobe(`TOPLEVEL.instr_addr_o);
                $fs_strobe(`TOPLEVEL.data_addr_o);
                $fs_strobe(`TOPLEVEL.data_wdata_o);
                $fs_strobe(`TOPLEVEL.data_be_o);

                $fs_strobe(`TOPLEVEL.error_detected_ex1);
                $fs_strobe(`TOPLEVEL.error_detected_alu);
                $fs_strobe(`TOPLEVEL.error_detected_alu2);
                $fs_strobe(`TOPLEVEL.error_detected_alu3);
                $fs_strobe(`TOPLEVEL.error_detected_alu4);
                $fs_strobe(`TOPLEVEL.error_detected_alu5);
                $fs_strobe(`TOPLEVEL.error_detected_alu6);
                $fs_strobe(`TOPLEVEL.error_detected_alu7);
                $fs_strobe(`TOPLEVEL.error_detected_alu8);
                $fs_strobe(`TOPLEVEL.error_detected_mult);
		$fs_strobe(`TOPLEVEL.error_detected_mult2);
		$fs_strobe(`TOPLEVEL.error_detected_mult3);
		$fs_strobe(`TOPLEVEL.error_detected_mult4);
                $fs_strobe(`TOPLEVEL.error_detected_mult5);
		$fs_strobe(`TOPLEVEL.error_detected_mult6);
		$fs_strobe(`TOPLEVEL.error_detected_mult7);
		$fs_strobe(`TOPLEVEL.error_detected_mult8);
                $fs_strobe(`TOPLEVEL.error_detected_if1);
                $fs_strobe(`TOPLEVEL.error_detected_if2);
		$fs_strobe(`TOPLEVEL.error_detected_dec);
		$fs_strobe(`TOPLEVEL.error_detected_dec2);
                $fs_strobe(`TOPLEVEL.error_detected_dec3);
                $fs_strobe(`TOPLEVEL.error_detected_dec4);
                $fs_strobe(`TOPLEVEL.error_detected_dec5);
		$fs_strobe(`TOPLEVEL.error_detected_dec6);
                $fs_strobe(`TOPLEVEL.error_detected_dec7);
                $fs_strobe(`TOPLEVEL.error_detected_dec8);
                $fs_strobe(`TOPLEVEL.error_detected_id1);
                $fs_strobe(`TOPLEVEL.error_detected_id2);
                $fs_strobe(`TOPLEVEL.error_detected_id3);
                //$fs_strobe(`TOPLEVEL.error_detected_ls1);
                //$fs_strobe(`TOPLEVEL.error_detected_ls2);
                //$fs_strobe(`TOPLEVEL.error_detected_ls3);

                $fs_strobe(`TOPLEVEL.error_parity_regfile_o);
		$fs_strobe(`TOPLEVEL.error_parity_id_ex_stage_o);
		$fs_strobe(`TOPLEVEL.error_load_store_o);
		$fs_strobe(`TOPLEVEL.error_prefech_buffer_parity_o);
		
		$fs_strobe(`TOPLEVEL.test_so1);
		$fs_strobe(`TOPLEVEL.test_so2);
		$fs_strobe(`TOPLEVEL.test_so3);
		$fs_strobe(`TOPLEVEL.test_so4);


                #10000; // TMAX Strobe period
        end

end



endmodule
