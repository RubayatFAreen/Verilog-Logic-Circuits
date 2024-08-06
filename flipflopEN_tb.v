`timescale 1ns/1ns
`include "flipflopEN.v"

module flipflopEN_tb;

reg D = 0, En = 0, CLK = 0;
wire Q;

flipflopEN UUT(D, CLK, Q);

always begin 
    CLK = ~CLK;
    #15;

end 

initial begin
    $dumpfile("flipflopEN.vcd");
    $dumpvars(0, flipflopEN_tb);
    En = 0; #40;
    D = 0; #45;
    D = 1; #45;
    D = 0; #45;
    En = 1; #40;
    D = 0; #45;
    D = 1; #45;
    D = 0; #45;
    $finish;


end


endmodule