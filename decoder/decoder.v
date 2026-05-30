//========================================================================
// decoder
//========================================================================

module decoder (
    input  wire addr,
    output wire wl0,
    output wire wl1
);

    assign wl0 = ~addr;
    assign wl1 = addr;

endmodule