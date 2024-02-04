module wireTest (A,B,C);   //Create a module with 3 wires

    input A;               //A is an input wire
    output B;              //B is an output wire
    output C;              //C is an output wire

    assign B = A;          //set B equal to the value of A (0 or 1)
    assign C = !A;         //set C not equal to the value of A (0 or 1)

endmodule
