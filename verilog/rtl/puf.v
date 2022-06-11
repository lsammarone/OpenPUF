`default_nettype none
`define MPRJ_IO_PADS 38

module puf 
(
    input wire reset,
    input wire [1:0] length,
    input wire [127:0] c,
    output reg out
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
  reg [3:0] reset_in;
  wire out_32;
  wire out_64;
  wire out_128;

  // reset demux, out mux
  always @ (*) begin
    case(length)
      2'b00: begin 
               reset_in <= {3'b111, reset};
               out <= out_32;
             end
      2'b01: begin
               reset_in <= {2'b11, reset, 1'b1};
               out <= out_64; 
             end  
      2'b10: begin
               reset_in <= {1'b1, reset, 2'b11};
               out <= out_128;
             end  
      2'b11: begin
               reset_in <= {1'b1, reset, 2'b11};
               out <= out_128;
             end
    endcase
  end


  BR32 BR32_inst (
    .RESET(reset_in[0]),
    .C(c[31:0]),
    .OUT(out_32)
  );

  BR64 BR64_inst (
    .RESET(reset_in[1]),
    .C(c[63:0]),
    .OUT(out_64)
  );

  BR128 BR128_inst (
    .RESET(reset_in[2]),
    .C(c[127:0]),
    .OUT(out_128)
  );

endmodule

`default_nettype wire

