//========================================================================
// tb_controller
//========================================================================

`timescale 1ns/1ps

module tb_controller;

    //----------------------------------------------------------------------
    // Signals
    //----------------------------------------------------------------------

    reg  clk;
    reg  rst;
    reg  start;
    reg  rw;
    wire precharge;
    wire wl_en;
    wire sae;
    wire done;

    //----------------------------------------------------------------------
    // Instantiate DUT
    //----------------------------------------------------------------------

    controller dut (
        .clk       (clk),
        .rst       (rst),
        .start     (start),
        .rw        (rw),
        .precharge (precharge),
        .wl_en     (wl_en),
        .sae       (sae),
        .done      (done)
    );

    //----------------------------------------------------------------------
    // Clock (10 ns)
    //----------------------------------------------------------------------

    always #5 clk = ~clk;

    //----------------------------------------------------------------------
    // Test tasks
    //----------------------------------------------------------------------

    task run_write_then_read();
    begin
        #10 start = 1; rw = 1;
        #10 start = 0;
        @(posedge done);
        $display("Write-read cycle complete");
    end
    endtask

    task run_read_only();
    begin
        #20 start = 1; rw = 0;
        #10 start = 0;
        @(posedge done);
        $display("Read cycle complete");
    end
    endtask

    //----------------------------------------------------------------------
    // Main
    //----------------------------------------------------------------------

    initial begin
        $dumpfile("tb_controller.vcd");
        $dumpvars(0, tb_controller);

        clk = 0; rst = 1; start = 0; rw = 1;
        #20 rst = 0;

        run_write_then_read();
        run_read_only();

        #20 $finish;
    end

    //----------------------------------------------------------------------
    // Monitor
    //----------------------------------------------------------------------

    initial begin
        $monitor("t=%0t state: pre=%b wl=%b sae=%b done=%b",
                         $time, precharge, wl_en, sae, done);
    end

endmodule