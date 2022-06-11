//-----------------------------------------------------------------------------
// BR128 - Bistable Ring PUF 128-bit 
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module BR128 
(
  input wire RESET,
  input wire [127:0] C,
  output wire OUT
);
  supply1 VDD;
  supply0 VSS;
  // empty module
  // see lib file
  
endmodule
