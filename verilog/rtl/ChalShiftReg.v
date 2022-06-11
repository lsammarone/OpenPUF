//-----------------------------------------------------------------------------
// Challenge Shift Register
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module ChalShiftReg
(
  input wire  clk,
  input wire si,
  input wire rstn,
  output [127:0] c,
  output wire so
);

  reg [127:0] c;

  // N-Bit shift register with scan in and scan out
  always @ (posedge clk or negedge rstn) begin
    if (~rstn) begin
      c[127:0] <= 0;
    end else begin
      c[127:0] <= {c[126:0], si};
    end
  end

  assign so = c[127];

endmodule


