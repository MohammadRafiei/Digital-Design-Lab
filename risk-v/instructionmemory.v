module instructionmemory(length_memory,output_memory,clk);
input  [31:0] length_memory;
output [31:0] output_memory;
input clk;
reg [31:0] memory[0:128];
    initial 
    $readmemh("instructiondata.txt", memory);

    assign outputmemory; = memory[length_memory];

endmodule