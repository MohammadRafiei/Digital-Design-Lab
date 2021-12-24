module datamemory(input [31:0]address,input [31:0]writedata,input [31:0]dataread,input writememory,input memoryread,input clk,output[31:0]);
   reg        [31:0] dataread[128:0];
   assign dataread = memory[address];
   always @ (posedge clk)
     begin
        if (writememory)
           memory[address] <= memory;
     end
endmodule