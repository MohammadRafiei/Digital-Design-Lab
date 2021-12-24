module mux2to1(input1[31:0],input2[31:0],input3[31:0],output3[31:0]);
wire1,wire2,wire3;
not (wire3,input3);
and (wire1,input1,wire3);
and (wire2,input2,input3);
or (output3,wire2,wire1);
endmodule