`default_nettype none
`define MPRJ_IO_PADS 38

module puf_super #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    input wire reset,
    input wire clk,
    input wire si,
    input wire rstn,
    input wire [1:0] puf_sel,
    input wire [1:0] length,
    output reg out,
    output wire so
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
  reg [3:0] reset_puf;
  reg [127:0] c;
  wire out_1;
  wire out_2;
  wire out_3;
  wire out_4;

  // reset demux, out mux
  always @ (*) begin
    case(puf_sel)
      2'b00: begin 
               reset_puf <= {3'b111, reset};
               out <= out_1;
             end
      2'b01: begin
               reset_puf <= {2'b11, reset, 1'b1};
               out <= out_2; 
             end  
      2'b10: begin
               reset_puf <= {1'b1, reset, 2'b11};
               out <= out_3;
             end  
      2'b11: begin
               reset_puf <= {reset, 3'b111};
               out <= out_4;
             end
    endcase
  end


  ChalShiftReg ChalShiftReg_inst (
    .clk(clk),
    .si(si),
    .rstn(rstn),
    .c(c),
    .so(so)
  );

  puf puf1_inst (
    .reset(reset_puf[0]),
    .length(length),
    .c(c),
    .out(out_1)
  );

  puf puf2_inst (
    .reset(reset_puf[1]),
    .length(length),
    .c(c),
    .out(out_2)
  );

  puf puf3_inst (
    .reset(reset_puf[2]),
    .length(length),
    .c(c),
    .out(out_3)
  );

  puf puf4_inst (
    .reset(reset_puf[3]),
    .length(length),
    .c(c),
    .out(out_4)
  );



endmodule

`default_nettype wire

