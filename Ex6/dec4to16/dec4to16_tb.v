`timescale 1ns/1ns
`include "dec4to16.v"

module dec4to16_tb;

reg A,B,C,D;
output [15:0] y;

dec4to16 uut(A,B,C,D,y);

initial begin
    
    $dumpfile("dec4to16_tb.vcd");
    $dumpvars(0 , dec4to16_tb);


    A = 0; B = 0; C = 0; D = 0;
    A = 0; B = 0; C = 0; D = 1; 
    A = 0; B = 0; C = 1; D = 0;
    A = 0; B = 0; C = 1; D = 1;
    A = 0; B = 1; C = 0; D = 0;
    A = 0; B = 1; C = 0; D = 1;
    A = 0; B = 1; C = 1; D = 0;
    A = 0; B = 1; C = 1; D = 1;
    A = 1; B = 0; C = 0; D = 0;
    A = 1; B = 0; C = 0; D = 1; 
    A = 1; B = 0; C = 1; D = 0; 
    A = 1; B = 0; C = 1; D = 1; 
    A = 1; B = 1; C = 0; D = 0; 
    A = 1; B = 1; C = 0; D = 1;
    A = 1; B = 1; C = 1; D = 0; 
    A = 1; B = 1; C = 1; D = 1; 


    $monitor("finish");

end

endmodule