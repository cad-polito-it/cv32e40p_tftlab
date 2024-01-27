// ZOIX MODULE FOR FAULT INJECTION AND STROBING

`timescale 1ps / 1ps

`ifndef TOPLEVEL
	`define TOPLEVEL cv32e40p_top
`endif

module strobe;


// Inject faults
initial begin

		//force `TOPLEVEL.core_i.ex_stage_i.alu_voter.voter_2.U6.A = 0;
		force `TOPLEVEL.core_i.ex_stage_i.alu_voter.voter_1.U157.B2 = 1;

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

        //OUTPUTS

                $fs_strobe(`TOPLEVEL.instr_req_o);
                $fs_strobe(`TOPLEVEL.data_req_o);
                $fs_strobe(`TOPLEVEL.data_we_o);
                $fs_strobe(`TOPLEVEL.instr_addr_o);
                $fs_strobe(`TOPLEVEL.data_addr_o);
                $fs_strobe(`TOPLEVEL.data_wdata_o);
                $fs_strobe(`TOPLEVEL.data_be_o);

				// PART1

				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_1.result_o);
				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_1.comparison_result_o);
				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_1.ready_o);

				//PART2

				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.result);
				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.cmp_result);
				//$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.ready);

				//PART3
				
				//$fs_strobe(`TOPLEVEL.top_alu_faulty_1);
				//$fs_strobe(`TOPLEVEL.top_alu_faulty_2);
				//$fs_strobe(`TOPLEVEL.top_alu_faulty_3);

				$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.faulty_o_1);
				$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.faulty_o_2);
				$fs_strobe(`TOPLEVEL.core_i.ex_stage_i.alu_voter.faulty_o_3);
				
                #10000; // TMAX Strobe period
        end

end



endmodule
