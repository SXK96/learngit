`timescale 1ns/ 1ps
`include "led_t.v"

module led_tb();

reg	sys_clk;
reg	sys_rst_n;

wire  [1:0]  led;

initial begin
	sys_clk = 1'b0;
	sys_clk = 1'b0;
	#200
	sys_rst_n =1'b1;
end

always #10 sys_clk = ~sys_clk;

/*iverilog */
initial
begin            
    $dumpfile("led.vcd");        //生成的vcd文件名称
    $dumpvars(0, led_tb);     //tb模块名称
end
/*iverilog */

led_t u_led_twinkle(
	.sys_clk	(sys_clk),
	.sys_rst_n	(sys_rst_n),
	.led		(led)
);

endmodule 
