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
     //����
reg clk; 
//reg rst_n;
reg [3:0] key;
wire [7:0] out_put;
    //�źų�ʼ��
initial begin
    clk = 1'b0;
    key[0]=0;
    key[1]=0;
    key[2]=0;
//    key[3]=1;
end
    
    //����ʱ�ӣ�ģ�⾧��ʵ�ʵ�����ʱ��
always #5 clk = ~clk; //ÿ10ns��sys_clk���з�ת���ﵽģ�⾧������Ϊ20ns
//always #3000 key[0] = ~key[0];
//always #3000 key[2] = ~key[2];
	initial begin
        key[3] = 0;
        #200;
        key[3] = 1;
        key[0]=1;
    end    
    //ģ������
DDS DDS_test(
 .clk(clk),
// .rst_n(rst_n),
 .key(key),
 .out_put(out_put)
  );
endmodule
