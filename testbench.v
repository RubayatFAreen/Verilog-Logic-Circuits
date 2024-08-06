`timescale 1ns/1ns
`include "main.v"

module decoder5to32_tb;

reg [4:0] A;
wire [31:0] D;

top UUT (A, D); // instantiate the module

integer i = 0;

initial begin
    $dumpfile("decoder5to32.vcd");
    $dumpvars(0, decoder5to32_tb);
    
    for (i = 0; i < 32; i = i + 1) begin
        A = i; #20;

    end

    


    
    
end


endmodule
