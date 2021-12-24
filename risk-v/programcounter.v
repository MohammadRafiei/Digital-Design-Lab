module programcounter(input input1,output counter,output1,input clk);
reg [31:0] countern;
always @(posedge clk) begin
    if(input1 == 1)
    countern[31:0];
    else
    counter[31:0]<=counter[31:0]+1
end
endmodule