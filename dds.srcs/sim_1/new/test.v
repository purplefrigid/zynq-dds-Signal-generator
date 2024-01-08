`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/13 21:57:43
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test(

    );
     //输入
reg clk; 
//reg rst_n;
reg [3:0] key;
wire [7:0] out_put;
    //信号初始化
initial begin
    clk = 1'b0;
    key[0]=0;
    key[1]=0;
    key[2]=0;
//    key[3]=1;
end
    
    //生成时钟，模拟晶振实际的周期时序
always #5 clk = ~clk; //每10ns，sys_clk进行翻转，达到模拟晶振周期为20ns
//always #3000 key[0] = ~key[0];
//always #3000 key[2] = ~key[2];
	initial begin
        key[3] = 0;
        #200;
        key[3] = 1;
        key[0]=1;
    end    
    //模块例化
DDS DDS_test(
 .clk(clk),
// .rst_n(rst_n),
 .key(key),
 .out_put(out_put)
  );
endmodule
