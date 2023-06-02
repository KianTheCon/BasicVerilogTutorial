`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 03:10:49 PM
// Design Name: 
// Module Name: TestbenchMain
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


module TestbenchMain;
	
	//Inputs
	reg clk;
	
	//Outputs
	wire LED1;
	wire LED2;
	wire LED3;
	wire LED4;
	
	initial
		begin: CLK_GENERATOR
		clk = 0;
		forever
			begin
				#5 clk = ~clk;
			end
	    end
	
	// Unit under test (UUT)
	main uut (
		.clk(clk),
		.LED1(LED1),
		.LED2(LED2),
		.LED3(LED3),
		.LED4(LED4)
	);
	
	initial
	begin
	end
	
endmodule
