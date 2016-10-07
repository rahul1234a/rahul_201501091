`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:38:01 10/07/2016
// Design Name:   inverse_matrix
// Module Name:   F:/xillix_lab_assigment/Inverse_Matrix_Fpga/inverse_matrix_tb.v
// Project Name:  Inverse_Matrix_Fpga
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inverse_matrix
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inverse_matrix_tb;

	// Inputs
	reg start;
	reg clk;

	// Outputs
	wire [31:0] ran_acc_mem;
	wire [31:0] wr_st;

	// Instantiate the Unit Under Test (UUT)
	inverse_matrix uut (
		.ran_acc_mem(ran_acc_mem), 
		.start(start), 
		.clk(clk), 
		.wr_st(wr_st)
	);

	initial begin
		// Initialize Inputs
		start = 0;
		clk = 0;
		#100;
        end
		 
     always
	begin
		#5 clk = ~clk; 
	end

      
endmodule

