//========================================================================
// controller
//========================================================================
//
// Sequences precharge → write → read cycle for SRAM testchip.

module controller (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,      // begin a write-read cycle
    input  wire        rw,         // 1 = write, 0 = read
    output reg         precharge,
    output reg         wl_en,      // enable wordline (feeds pulse gen trigger)
    output reg         sae,        // sense amp enable
    output reg         done
);

    localparam IDLE      = 2'd0;
    localparam PRECHARGE = 2'd1;
    localparam WRITE     = 2'd2;
    localparam READ      = 2'd3;

    reg [1:0] state, next;
    reg [3:0] count; // cycle counter for timing

    // state register
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            count <= 0;
        end else begin
            state <= next;
            count <= (state == next) ? count + 1 : 0;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            IDLE:      next = start ? PRECHARGE : IDLE;
            PRECHARGE: next = (count == 4'd2) ? (rw ? WRITE : READ) : PRECHARGE;
            WRITE:     next = (count == 4'd4) ? READ : WRITE;
            READ:      next = (count == 4'd4) ? IDLE : READ;
            default:   next = IDLE;
        endcase
    end

    // output logic
    always @(*) begin
        // defaults
        precharge = 0;
        wl_en     = 0;
        sae       = 0;
        done      = 0;

        case (state)
            IDLE: begin
                done      = 1;
            end
            PRECHARGE: begin
                precharge = 1;
            end
            WRITE: begin
                wl_en     = 1;  // trigger pulse generator
            end
            READ: begin
                wl_en     = (count < 4'd2);
                sae       = (count >= 4'd2); 
            end
        endcase
    end

endmodule