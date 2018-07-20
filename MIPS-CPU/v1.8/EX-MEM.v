`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:19 05/17/2018 
// Design Name: 
// Module Name:    EX-MEM 
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
module EX_MEM(
	 input clk,
	 input reset,
	 input [2:0] WB_in,
	 output [2:0] WB_out,
	 input [11:0] MEM_in,
    input [31:0] nextAddress_in,
	 output [31:0] nextAddress_out,
	 input zero_in,
	 output zero_out,
	 input [31:0] ALUresult_in,
	 output [31:0] ALUresult_out,
	 input [31:0] B_in,
	 output [31:0] B_out,
	 input [4:0] Insaddr_in,
	 output [4:0] Insaddr_out,
	 input [31:0] jaddr_in,
	 output [31:0] jaddr_out,
	 output jump,
	 output Branch,
	 output MemRead,
	 output MemWrite,
	 output [1:0] PCbackSrc,
	 output [2:0] loadtype,
	 output [1:0] storetype,
	 output connect
	 );
wire [11:0] MEM_out;
assign connect = MEM_out[11];
assign storetype= MEM_out[10:9];
assign loadtype = MEM_out[8:6];
assign PCbackSrc = MEM_out[5:4];
assign jump = MEM_out[3:3];
assign Branch = MEM_out[2:2];
assign MemRead = MEM_out[1:1];
assign MemWrite = MEM_out[0:0];
Reg #(0)zeroreg(clk,reset,zero_in,zero_out);
Reg #(2)WBreg(clk,reset,WB_in,WB_out);
Reg #(11)MEMreg(clk,reset,MEM_in,MEM_out);
Reg newPCreg(clk,reset,nextAddress_in,nextAddress_out),
	 ALUreg(clk,reset,ALUresult_in,ALUresult_out),
	 Breg(clk,reset,B_in,B_out),
	 jumpreg(clk,reset,jaddr_in,jaddr_out);
Reg #(4)Insreg(clk,reset,Insaddr_in,Insaddr_out);
endmodule
