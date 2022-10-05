	assign2_system u0 (
		.clk_clk                                         (<connected-to-clk_clk>),                                         //                                       clk.clk
		.keys_external_connection_export                 (<connected-to-keys_external_connection_export>),                 //                  keys_external_connection.export
		.lcd_external_RS                                 (<connected-to-lcd_external_RS>),                                 //                              lcd_external.RS
		.lcd_external_RW                                 (<connected-to-lcd_external_RW>),                                 //                                          .RW
		.lcd_external_data                               (<connected-to-lcd_external_data>),                               //                                          .data
		.lcd_external_E                                  (<connected-to-lcd_external_E>),                                  //                                          .E
		.leds_green_external_connection_export           (<connected-to-leds_green_external_connection_export>),           //            leds_green_external_connection.export
		.leds_red_external_connection_export             (<connected-to-leds_red_external_connection_export>),             //              leds_red_external_connection.export
		.reset_reset_n                                   (<connected-to-reset_reset_n>),                                   //                                     reset.reset_n
		.sdram_pll_sdram_clk_clk                         (<connected-to-sdram_pll_sdram_clk_clk>),                         //                       sdram_pll_sdram_clk.clk
		.sdram_wire_addr                                 (<connected-to-sdram_wire_addr>),                                 //                                sdram_wire.addr
		.sdram_wire_ba                                   (<connected-to-sdram_wire_ba>),                                   //                                          .ba
		.sdram_wire_cas_n                                (<connected-to-sdram_wire_cas_n>),                                //                                          .cas_n
		.sdram_wire_cke                                  (<connected-to-sdram_wire_cke>),                                  //                                          .cke
		.sdram_wire_cs_n                                 (<connected-to-sdram_wire_cs_n>),                                 //                                          .cs_n
		.sdram_wire_dq                                   (<connected-to-sdram_wire_dq>),                                   //                                          .dq
		.sdram_wire_dqm                                  (<connected-to-sdram_wire_dqm>),                                  //                                          .dqm
		.sdram_wire_ras_n                                (<connected-to-sdram_wire_ras_n>),                                //                                          .ras_n
		.sdram_wire_we_n                                 (<connected-to-sdram_wire_we_n>),                                 //                                          .we_n
		.switches_external_connection_export             (<connected-to-switches_external_connection_export>),             //              switches_external_connection.export
		.uart_external_connection_rxd                    (<connected-to-uart_external_connection_rxd>),                    //                  uart_external_connection.rxd
		.uart_external_connection_txd                    (<connected-to-uart_external_connection_txd>),                    //                                          .txd
		.video_vga_controller_0_external_interface_CLK   (<connected-to-video_vga_controller_0_external_interface_CLK>),   // video_vga_controller_0_external_interface.CLK
		.video_vga_controller_0_external_interface_HS    (<connected-to-video_vga_controller_0_external_interface_HS>),    //                                          .HS
		.video_vga_controller_0_external_interface_VS    (<connected-to-video_vga_controller_0_external_interface_VS>),    //                                          .VS
		.video_vga_controller_0_external_interface_BLANK (<connected-to-video_vga_controller_0_external_interface_BLANK>), //                                          .BLANK
		.video_vga_controller_0_external_interface_SYNC  (<connected-to-video_vga_controller_0_external_interface_SYNC>),  //                                          .SYNC
		.video_vga_controller_0_external_interface_R     (<connected-to-video_vga_controller_0_external_interface_R>),     //                                          .R
		.video_vga_controller_0_external_interface_G     (<connected-to-video_vga_controller_0_external_interface_G>),     //                                          .G
		.video_vga_controller_0_external_interface_B     (<connected-to-video_vga_controller_0_external_interface_B>)      //                                          .B
	);

