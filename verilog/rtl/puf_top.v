`default_nettype none

module puf_top 
(
    `ifdef USE_POWER_PINS
        inout vccd2,  // User area 2 1.8V power
        inout vssd2,  // User area 2 digital ground
    `endif
    input wire reset,
    input wire [1:0] puf_sel,
    input wire clk,
    input wire si,
    input wire rstn,
    input wire [1:0] length,
    output reg out,
    output reg so
);

    puf_super puf_super_0 (
        .reset(reset),
        .clk(clk),
        .si(si),
        .rstn(rstn),
        .\puf_sel[1](puf_sel[1]),
        .\puf_sel[0](puf_sel[0])
        .\length[1](length[1]),
        .\length[0](length[0]),
        .out(out),
        .so(so)
    `ifdef USE_POWER_PINS
        ,
        .vssd1(vssd2),	// User area 1 1.8V supply
        .vccd1(vccd2)	// User area 1 digital ground
    `endif
    );



endmodule

`default_nettype wire