`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2023 02:54:08 PM
// Design Name: 
// Module Name: main
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


module main(
		input clk,
		output reg LED1,
		output reg LED2,
		output reg LED3,
		output reg LED4
    );
    reg [3:0] countA;
    reg [3:0] countB;
    initial begin
    	countA = 0;
    	countB = 0;
    	LED1 = 0;
    	LED2 = 0;
    	LED3 = 0;
    	LED4 = 0;
    end
    always @ (posedge clk) begin
    	if(countA == 10) begin
        	countB = countB + 1;
    		if(countB == 4) begin
    			countB = 0;
    		end
    		countA = 0;
    	end
    	case(countB) 
    		2'b00: 
    		begin
    			LED1 <= 1;
    			LED2 <= 0;
    			LED3 <= 0;
    			LED4 <= 0;
    		end
    		
    		2'b01: 
    		begin
    			LED1 <= 0;
    			LED2 <= 1;
    			LED3 <= 0;
    			LED4 <= 0;
    		end
    		2'b10: 
    		begin
    			LED1 <= 0;
    			LED2 <= 0;
    			LED3 <= 1;
    		    LED4 <= 0;
    		end
    		2'b11: 
    		begin
    			LED1 <= 0;
    			LED2 <= 0;
    			LED3 <= 0;
    			LED4 <= 1;
    		end
    	endcase
    	countA <= countA + 1;
    end
endmodule
