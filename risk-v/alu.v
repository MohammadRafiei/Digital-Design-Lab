module alu(input [31:0]input1,input[31:0] input2,output[31:0] result, input [7:0]controlresult);
 reg [31:0]aluresult;
always @(*)
    begin
        case(controlresult)
         aluresult = input1 + input2 ;
         aluresult = input1 - input2 ;
         aluresult = input1 * input2;
         aluresult = input1/input2;
         aluresult = input1^input2;
         aluresult = input1&input2;
         aluresult = input1|input2;
         default: aluresult == 0 ; 
        endcase
    end
endmodule