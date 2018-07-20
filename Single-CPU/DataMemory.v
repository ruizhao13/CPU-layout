`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:12 04/26/2018 
// Design Name: 
// Module Name:    DataMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMemory(
    input clk,
	 input DataMemRW,            // ���ݴ洢����д�����źţ�Ϊ1д��Ϊ0��
    input [7:0] DAddr,         // ���ݴ洢����ַ����˿�
    input [31:0] DataIn,        // ���ݴ洢����������˿�
    output [31:0] DataOut   // ���ݴ洢����������˿�
    );

    reg [31:0] memory[0:255];

    // ��ʼ��ֵ
    integer i;
    initial
     begin
        for (i = 0; i <= 255; i = i + 1)  memory[i] <= 0;
     end
	
	 assign DataOut = memory[DAddr];
	 
    always@(posedge clk)
     begin
	  if (DataMemRW)
         begin
            memory[DAddr] <= DataIn;
         end
     end

endmodule