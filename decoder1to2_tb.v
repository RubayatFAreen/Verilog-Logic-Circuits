`timescale 1ns/1ns
`include "main.v"

module decoder1to2_tb;

reg A;
wire [1:0] D;

decoder1to2 UUT (A, D); // instantiate the module

initial begin
    $dumpfile("decoder1to2.vcd");
    $dumpvars(0, decoder1to2_tb);
    
    A = 1'b0; #20;
    A = 1'b1; #20;
end


endmodule
