// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-015
//  Generated date: Tue Mar 01 14:54:47 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    dot_product_core
// ------------------------------------------------------------------


module dot_product_core (
  clk, en, arst_n, input_a_rsc_mgc_in_wire_d, input_b_rsc_mgc_in_wire_d, output_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [7:0] input_a_rsc_mgc_in_wire_d;
  input [7:0] input_b_rsc_mgc_in_wire_d;
  output [7:0] output_rsc_mgc_out_stdreg_d;
  reg [7:0] output_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [7:0] MAC_4_mul_itm;
    reg [7:0] MAC_acc_6_itm;
    reg [7:0] MAC_acc_itm;
    reg [7:0] MAC_2_mul_itm;

    begin : mainExit
      forever begin : main
        // C-Step 0 of Loop 'main'
        begin : waitLoop0Exit
          forever begin : waitLoop0
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop0Exit;
          end
        end
        // C-Step 1 of Loop 'main'
        MAC_4_mul_itm = conv_u2u_16_8(input_a_rsc_mgc_in_wire_d * input_b_rsc_mgc_in_wire_d);
        begin : waitLoop1Exit
          forever begin : waitLoop1
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop1Exit;
          end
        end
        // C-Step 2 of Loop 'main'
        MAC_acc_6_itm = MAC_4_mul_itm + conv_u2u_16_8(input_a_rsc_mgc_in_wire_d *
            input_b_rsc_mgc_in_wire_d);
        begin : waitLoop2Exit
          forever begin : waitLoop2
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop2Exit;
          end
        end
        // C-Step 3 of Loop 'main'
        MAC_acc_itm = MAC_acc_6_itm + conv_u2u_16_8(input_a_rsc_mgc_in_wire_d * input_b_rsc_mgc_in_wire_d);
        begin : waitLoop3Exit
          forever begin : waitLoop3
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop3Exit;
          end
        end
        // C-Step 4 of Loop 'main'
        MAC_2_mul_itm = conv_u2u_16_8(input_a_rsc_mgc_in_wire_d * input_b_rsc_mgc_in_wire_d);
        begin : waitLoop4Exit
          forever begin : waitLoop4
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop4Exit;
          end
        end
        // C-Step 5 of Loop 'main'
        output_rsc_mgc_out_stdreg_d <= MAC_acc_itm + (MAC_2_mul_itm + conv_u2u_16_8(input_a_rsc_mgc_in_wire_d
            * input_b_rsc_mgc_in_wire_d));
        begin : waitLoop5Exit
          forever begin : waitLoop5
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop5Exit;
          end
        end
        // C-Step 6 of Loop 'main'
      end
    end
    MAC_2_mul_itm = 8'b0;
    MAC_acc_itm = 8'b0;
    MAC_acc_6_itm = 8'b0;
    MAC_4_mul_itm = 8'b0;
    output_rsc_mgc_out_stdreg_d <= 8'b0;
  end


  function  [7:0] conv_u2u_16_8 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_8 = vector[7:0];
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    dot_product
//  Generated from file(s):
//    2) $PROJECT_HOME/../student_files_2015/student_files_2015/prj1/dot_product_source/dot_product.cpp
// ------------------------------------------------------------------


module dot_product (
  input_a_rsc_z, input_b_rsc_z, output_rsc_z, clk, en, arst_n
);
  input [7:0] input_a_rsc_z;
  input [7:0] input_b_rsc_z;
  output [7:0] output_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [7:0] input_a_rsc_mgc_in_wire_d;
  wire [7:0] input_b_rsc_mgc_in_wire_d;
  wire [7:0] output_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(8)) input_a_rsc_mgc_in_wire (
      .d(input_a_rsc_mgc_in_wire_d),
      .z(input_a_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(8)) input_b_rsc_mgc_in_wire (
      .d(input_b_rsc_mgc_in_wire_d),
      .z(input_b_rsc_z)
    );
  mgc_out_stdreg #(.rscid(3),
  .width(8)) output_rsc_mgc_out_stdreg (
      .d(output_rsc_mgc_out_stdreg_d),
      .z(output_rsc_z)
    );
  dot_product_core dot_product_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .input_a_rsc_mgc_in_wire_d(input_a_rsc_mgc_in_wire_d),
      .input_b_rsc_mgc_in_wire_d(input_b_rsc_mgc_in_wire_d),
      .output_rsc_mgc_out_stdreg_d(output_rsc_mgc_out_stdreg_d)
    );
endmodule


