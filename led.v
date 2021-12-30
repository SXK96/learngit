module led_t(
	input	sys_clk,
	input	sys_rst_n,
	
	output [1:0] led
);

reg [25:0] cnt;

assign led = (cnt<26'd5) ? 2'b01 : 2'b10;

always @ (posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
	  cnt <= 26'd0;
	else if(cnt<26'd10)
	  cnt <= cnt+1'b1;
	else
	  cnt <=26'b0;
end
endmodule

