`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:35:02 PM
// Design Name: 
// Module Name: alu_control
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


module IF_ID(input clk, 
             input [31:0] PCplusfour,
             input [31:0] Instr,
             input stall,
             output reg [31:0] IF_ID_PCplusfour,
             output reg [31:0] IF_ID_Instr);

    always @ (negedge clk) begin
        if(!stall) begin
            IF_ID_PCplusfour <= PCplusfour;
            IF_ID_Instr <= Instr;
        end
    end

endmodule
