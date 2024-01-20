module cv32e40p_errorChecking_ham (
    input logic [37:0] data_in_from_RF,
    input logic [37:0] recomputed_input,
    output logic [31:0] data_Out,
    output logic RF_double_Error
);

    logic [5:0] addr_of_wrong_bit ;

    logic [37_0] temp_vect ;

    assign addr_of_wrong_bit[0] = data_in_from_RF[0] ^ recomputed_input[0] ; 
    assign addr_of_wrong_bit[1] = data_in_from_RF[1] ^ recomputed_input[1] ;
    assign addr_of_wrong_bit[2] = data_in_from_RF[3] ^ recomputed_input[3] ;
    assign addr_of_wrong_bit[3] = data_in_from_RF[7] ^ recomputed_input[7] ;
    assign addr_of_wrong_bit[4] = data_in_from_RF[15] ^ recomputed_input[15] ;
    assign addr_of_wrong_bit[5] = data_in_from_RF[31] ^ recomputed_input[31] ;

    always_comb begin
      
     data_Out[0] = data_in_from_RF[2] ;
     data_Out[3:1] = data_in_from_RF[6:4] ;
     data_Out[10:4] = data_in_from_RF[14:8] ;
     data_Out[25:11] = data_in_from_RF[30:16] ;
     data_Out[31:26] = data_in_from_RF[37:32] ;

    if (addr_of_wrong_bit == 0) begin
      // If input1 is zero, well my friend, that means that no error occured.
      RF_double_Error = 0 ;
    end else if (addr_of_wrong_bit > 38 ) begin
      // If input1 is greater than 38, this means a double error has occured.
      RF_double_Error = 1 ;
    end else begin
      // Flip the bit at position addr_of_wrong_bit in the signal in order to flip the bit
      data_Out[addr_of_wrong_bit - 1 ] = data_in_from_RF ^ (1 << (addr_of_wrong_bit - 1 )) ;  // l ha scritto chatGPT, verificare se e' giusto lmao. 
      RF_double_Error = 0 ;
    end

  end


endmodule