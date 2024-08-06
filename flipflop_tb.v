`timescale 1ns/1ns
`include "flipflop.v"

module flipflop_tb;

reg D = 0, CLK = 0;
wire Q;

flipflop UUT(D, CLK, Q);

always begin 
    CLK = ~CLK;
    #10;

end 

initial begin
    $dumpfile("flipflop.vcd");
    $dumpvars(0, flipflop_tb);
    D = 0; #45;
    D = 1; #45;
    D = 0; #45;
    $finish;


end


endmodule