
module M1 (
	clk_clk,
	leds_export,
	pushbuttons_export,
	reset_reset_n,
	switches_export,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd);	

	input		clk_clk;
	output	[8:0]	leds_export;
	input	[1:0]	pushbuttons_export;
	input		reset_reset_n;
	input	[3:0]	switches_export;
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
endmodule
