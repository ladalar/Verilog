`timescale 1ns / 1ns         // Set time interval
`include "wireTest.v"

module wireTest_tb;

reg A;                       //input wire
wire B;                      //output wire
wire C;                      //output wire

wireTest uut(A, B, C);       // instance of wire test

initial begin                //set clock

//put outputs of the results into file
    $dumpfile("wireTest_tb.vcd");
    $dumpvars(0, wireTest_tb);

    A = 0;
    #20                      //waiting time

    A = 1;
    #20

    A = 0;
    #20

    A = 1;
    #20

    $display("Wire test complete!");
end

endmodule