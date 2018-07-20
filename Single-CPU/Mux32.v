`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:53 04/25/2018 
// Design Name: 
// Module Name:    Mux32 
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
module Mux32(
    input control,
    input [31:0] in1,
    input [31:0] in0,
    output [31:0] out
    );

    assign out = control ? in1 : in0;

endmodule
