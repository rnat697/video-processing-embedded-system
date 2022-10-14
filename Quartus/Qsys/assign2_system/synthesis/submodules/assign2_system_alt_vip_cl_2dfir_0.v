// assign2_system_alt_vip_cl_2dfir_0.v

// This file was auto-generated from alt_vip_cl_2dfir_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module assign2_system_alt_vip_cl_2dfir_0 (
		input  wire        main_clock,            // main_clock.clk
		input  wire        main_reset,            // main_reset.reset
		input  wire [23:0] din_data,              //        din.data
		input  wire        din_valid,             //           .valid
		input  wire        din_startofpacket,     //           .startofpacket
		input  wire        din_endofpacket,       //           .endofpacket
		output wire        din_ready,             //           .ready
		output wire [23:0] dout_data,             //       dout.data
		output wire        dout_valid,            //           .valid
		output wire        dout_startofpacket,    //           .startofpacket
		output wire        dout_endofpacket,      //           .endofpacket
		input  wire        dout_ready,            //           .ready
		input  wire [8:0]  control_address,       //    control.address
		input  wire [3:0]  control_byteenable,    //           .byteenable
		input  wire        control_write,         //           .write
		input  wire [31:0] control_writedata,     //           .writedata
		input  wire        control_read,          //           .read
		output wire [31:0] control_readdata,      //           .readdata
		output wire        control_readdatavalid, //           .readdatavalid
		output wire        control_waitrequest    //           .waitrequest
	);

	wire          scheduler_av_st_cmd_lb_valid;           // scheduler:av_st_cmd_lb_valid -> line_buffer:av_st_cmd_valid
	wire   [63:0] scheduler_av_st_cmd_lb_data;            // scheduler:av_st_cmd_lb_data -> line_buffer:av_st_cmd_data
	wire          scheduler_av_st_cmd_lb_ready;           // line_buffer:av_st_cmd_ready -> scheduler:av_st_cmd_lb_ready
	wire          scheduler_av_st_cmd_lb_startofpacket;   // scheduler:av_st_cmd_lb_startofpacket -> line_buffer:av_st_cmd_startofpacket
	wire          scheduler_av_st_cmd_lb_endofpacket;     // scheduler:av_st_cmd_lb_endofpacket -> line_buffer:av_st_cmd_endofpacket
	wire          scheduler_av_st_cmd_ac_valid;           // scheduler:av_st_cmd_ac_valid -> alg_core:av_st_cmd_valid
	wire   [63:0] scheduler_av_st_cmd_ac_data;            // scheduler:av_st_cmd_ac_data -> alg_core:av_st_cmd_data
	wire          scheduler_av_st_cmd_ac_ready;           // alg_core:av_st_cmd_ready -> scheduler:av_st_cmd_ac_ready
	wire          scheduler_av_st_cmd_ac_startofpacket;   // scheduler:av_st_cmd_ac_startofpacket -> alg_core:av_st_cmd_startofpacket
	wire          scheduler_av_st_cmd_ac_endofpacket;     // scheduler:av_st_cmd_ac_endofpacket -> alg_core:av_st_cmd_endofpacket
	wire          alg_core_av_st_resp_valid;              // alg_core:av_st_resp_valid -> scheduler:av_st_resp_ac_valid
	wire   [63:0] alg_core_av_st_resp_data;               // alg_core:av_st_resp_data -> scheduler:av_st_resp_ac_data
	wire          alg_core_av_st_resp_ready;              // scheduler:av_st_resp_ac_ready -> alg_core:av_st_resp_ready
	wire          alg_core_av_st_resp_startofpacket;      // alg_core:av_st_resp_startofpacket -> scheduler:av_st_resp_ac_startofpacket
	wire          alg_core_av_st_resp_endofpacket;        // alg_core:av_st_resp_endofpacket -> scheduler:av_st_resp_ac_endofpacket
	wire          line_buffer_av_st_dout_0_valid;         // line_buffer:av_st_dout_valid_0 -> alg_core:av_st_din_valid
	wire  [103:0] line_buffer_av_st_dout_0_data;          // line_buffer:av_st_dout_data_0 -> alg_core:av_st_din_data
	wire          line_buffer_av_st_dout_0_ready;         // alg_core:av_st_din_ready -> line_buffer:av_st_dout_ready_0
	wire          line_buffer_av_st_dout_0_startofpacket; // line_buffer:av_st_dout_startofpacket_0 -> alg_core:av_st_din_startofpacket
	wire          line_buffer_av_st_dout_0_endofpacket;   // line_buffer:av_st_dout_endofpacket_0 -> alg_core:av_st_din_endofpacket
	wire          scheduler_av_st_cmd_vob_valid;          // scheduler:av_st_cmd_vob_valid -> video_out:av_st_cmd_valid
	wire   [63:0] scheduler_av_st_cmd_vob_data;           // scheduler:av_st_cmd_vob_data -> video_out:av_st_cmd_data
	wire          scheduler_av_st_cmd_vob_ready;          // video_out:av_st_cmd_ready -> scheduler:av_st_cmd_vob_ready
	wire          scheduler_av_st_cmd_vob_startofpacket;  // scheduler:av_st_cmd_vob_startofpacket -> video_out:av_st_cmd_startofpacket
	wire          scheduler_av_st_cmd_vob_endofpacket;    // scheduler:av_st_cmd_vob_endofpacket -> video_out:av_st_cmd_endofpacket
	wire          video_in_resp_av_st_resp_valid;         // video_in_resp:av_st_resp_valid -> scheduler:av_st_resp_vib_valid
	wire   [63:0] video_in_resp_av_st_resp_data;          // video_in_resp:av_st_resp_data -> scheduler:av_st_resp_vib_data
	wire          video_in_resp_av_st_resp_ready;         // scheduler:av_st_resp_vib_ready -> video_in_resp:av_st_resp_ready
	wire          video_in_resp_av_st_resp_startofpacket; // video_in_resp:av_st_resp_startofpacket -> scheduler:av_st_resp_vib_startofpacket
	wire          video_in_resp_av_st_resp_endofpacket;   // video_in_resp:av_st_resp_endofpacket -> scheduler:av_st_resp_vib_endofpacket
	wire          video_in_resp_av_st_dout_valid;         // video_in_resp:av_st_dout_valid -> video_in_cmd:av_st_din_valid
	wire   [55:0] video_in_resp_av_st_dout_data;          // video_in_resp:av_st_dout_data -> video_in_cmd:av_st_din_data
	wire          video_in_resp_av_st_dout_ready;         // video_in_cmd:av_st_din_ready -> video_in_resp:av_st_dout_ready
	wire          video_in_resp_av_st_dout_startofpacket; // video_in_resp:av_st_dout_startofpacket -> video_in_cmd:av_st_din_startofpacket
	wire          video_in_resp_av_st_dout_endofpacket;   // video_in_resp:av_st_dout_endofpacket -> video_in_cmd:av_st_din_endofpacket
	wire          scheduler_av_st_cmd_vib_valid;          // scheduler:av_st_cmd_vib_valid -> video_in_cmd:av_st_cmd_valid
	wire   [63:0] scheduler_av_st_cmd_vib_data;           // scheduler:av_st_cmd_vib_data -> video_in_cmd:av_st_cmd_data
	wire          scheduler_av_st_cmd_vib_ready;          // video_in_cmd:av_st_cmd_ready -> scheduler:av_st_cmd_vib_ready
	wire          scheduler_av_st_cmd_vib_startofpacket;  // scheduler:av_st_cmd_vib_startofpacket -> video_in_cmd:av_st_cmd_startofpacket
	wire          scheduler_av_st_cmd_vib_endofpacket;    // scheduler:av_st_cmd_vib_endofpacket -> video_in_cmd:av_st_cmd_endofpacket
	wire          video_in_cmd_av_st_dout_valid;          // video_in_cmd:av_st_dout_valid -> input_demux:av_st_din_valid
	wire   [55:0] video_in_cmd_av_st_dout_data;           // video_in_cmd:av_st_dout_data -> input_demux:av_st_din_data
	wire          video_in_cmd_av_st_dout_ready;          // input_demux:av_st_din_ready -> video_in_cmd:av_st_dout_ready
	wire          video_in_cmd_av_st_dout_startofpacket;  // video_in_cmd:av_st_dout_startofpacket -> input_demux:av_st_din_startofpacket
	wire          video_in_cmd_av_st_dout_endofpacket;    // video_in_cmd:av_st_dout_endofpacket -> input_demux:av_st_din_endofpacket
	wire          input_demux_av_st_dout_0_valid;         // input_demux:av_st_dout_valid_0 -> line_buffer:av_st_din_valid
	wire   [55:0] input_demux_av_st_dout_0_data;          // input_demux:av_st_dout_data_0 -> line_buffer:av_st_din_data
	wire          input_demux_av_st_dout_0_ready;         // line_buffer:av_st_din_ready -> input_demux:av_st_dout_ready_0
	wire          input_demux_av_st_dout_0_startofpacket; // input_demux:av_st_dout_startofpacket_0 -> line_buffer:av_st_din_startofpacket
	wire          input_demux_av_st_dout_0_endofpacket;   // input_demux:av_st_dout_endofpacket_0 -> line_buffer:av_st_din_endofpacket
	wire          alg_core_av_st_dout_valid;              // alg_core:av_st_dout_valid -> out_gb:av_st_din_valid
	wire   [55:0] alg_core_av_st_dout_data;               // alg_core:av_st_dout_data -> out_gb:av_st_din_data
	wire          alg_core_av_st_dout_ready;              // out_gb:av_st_din_ready -> alg_core:av_st_dout_ready
	wire          alg_core_av_st_dout_startofpacket;      // alg_core:av_st_dout_startofpacket -> out_gb:av_st_din_startofpacket
	wire          alg_core_av_st_dout_endofpacket;        // alg_core:av_st_dout_endofpacket -> out_gb:av_st_din_endofpacket
	wire          out_gb_av_st_dout_valid;                // out_gb:av_st_dout_valid -> output_mux:av_st_din_valid_0
	wire   [55:0] out_gb_av_st_dout_data;                 // out_gb:av_st_dout_data -> output_mux:av_st_din_data_0
	wire          out_gb_av_st_dout_ready;                // output_mux:av_st_din_ready_0 -> out_gb:av_st_dout_ready
	wire          out_gb_av_st_dout_startofpacket;        // out_gb:av_st_dout_startofpacket -> output_mux:av_st_din_startofpacket_0
	wire          out_gb_av_st_dout_endofpacket;          // out_gb:av_st_dout_endofpacket -> output_mux:av_st_din_endofpacket_0
	wire          input_demux_av_st_dout_1_valid;         // input_demux:av_st_dout_valid_1 -> user_bps_conv:av_st_din_valid
	wire   [55:0] input_demux_av_st_dout_1_data;          // input_demux:av_st_dout_data_1 -> user_bps_conv:av_st_din_data
	wire          input_demux_av_st_dout_1_ready;         // user_bps_conv:av_st_din_ready -> input_demux:av_st_dout_ready_1
	wire          input_demux_av_st_dout_1_startofpacket; // input_demux:av_st_dout_startofpacket_1 -> user_bps_conv:av_st_din_startofpacket
	wire          input_demux_av_st_dout_1_endofpacket;   // input_demux:av_st_dout_endofpacket_1 -> user_bps_conv:av_st_din_endofpacket
	wire          user_bps_conv_av_st_dout_valid;         // user_bps_conv:av_st_dout_valid -> output_mux:av_st_din_valid_1
	wire   [55:0] user_bps_conv_av_st_dout_data;          // user_bps_conv:av_st_dout_data -> output_mux:av_st_din_data_1
	wire          user_bps_conv_av_st_dout_ready;         // output_mux:av_st_din_ready_1 -> user_bps_conv:av_st_dout_ready
	wire          user_bps_conv_av_st_dout_startofpacket; // user_bps_conv:av_st_dout_startofpacket -> output_mux:av_st_din_startofpacket_1
	wire          user_bps_conv_av_st_dout_endofpacket;   // user_bps_conv:av_st_dout_endofpacket -> output_mux:av_st_din_endofpacket_1
	wire          output_mux_av_st_dout_valid;            // output_mux:av_st_dout_valid -> video_out:av_st_din_valid
	wire   [55:0] output_mux_av_st_dout_data;             // output_mux:av_st_dout_data -> video_out:av_st_din_data
	wire          output_mux_av_st_dout_ready;            // video_out:av_st_din_ready -> output_mux:av_st_dout_ready
	wire          output_mux_av_st_dout_startofpacket;    // output_mux:av_st_dout_startofpacket -> video_out:av_st_din_startofpacket
	wire          output_mux_av_st_dout_endofpacket;      // output_mux:av_st_dout_endofpacket -> video_out:av_st_din_endofpacket
	wire          scheduler_av_st_cmd_mux_valid;          // scheduler:av_st_cmd_mux_valid -> output_mux:av_st_cmd_valid
	wire   [63:0] scheduler_av_st_cmd_mux_data;           // scheduler:av_st_cmd_mux_data -> output_mux:av_st_cmd_data
	wire          scheduler_av_st_cmd_mux_ready;          // output_mux:av_st_cmd_ready -> scheduler:av_st_cmd_mux_ready
	wire          scheduler_av_st_cmd_mux_startofpacket;  // scheduler:av_st_cmd_mux_startofpacket -> output_mux:av_st_cmd_startofpacket
	wire          scheduler_av_st_cmd_mux_endofpacket;    // scheduler:av_st_cmd_mux_endofpacket -> output_mux:av_st_cmd_endofpacket
	wire          scheduler_av_st_coeff_valid;            // scheduler:av_st_coeff_valid -> alg_core:av_st_coeff_valid
	wire   [35:0] scheduler_av_st_coeff_data;             // scheduler:av_st_coeff_data -> alg_core:av_st_coeff_data
	wire          scheduler_av_st_coeff_ready;            // alg_core:av_st_coeff_ready -> scheduler:av_st_coeff_ready
	wire          scheduler_av_st_coeff_startofpacket;    // scheduler:av_st_coeff_startofpacket -> alg_core:av_st_coeff_startofpacket
	wire          scheduler_av_st_coeff_endofpacket;      // scheduler:av_st_coeff_endofpacket -> alg_core:av_st_coeff_endofpacket
	wire  [103:0] line_buffer_av_st_dout_data;            // port fragment
	wire    [0:0] line_buffer_av_st_dout_valid;           // port fragment
	wire    [0:0] line_buffer_av_st_dout_startofpacket;   // port fragment
	wire    [0:0] line_buffer_av_st_dout_endofpacket;     // port fragment
	wire  [111:0] input_demux_av_st_dout_data;            // port fragment
	wire    [1:0] input_demux_av_st_dout_valid;           // port fragment
	wire    [1:0] input_demux_av_st_dout_startofpacket;   // port fragment
	wire    [1:0] input_demux_av_st_dout_endofpacket;     // port fragment
	wire    [1:0] output_mux_av_st_din_ready;             // port fragment

	alt_vip_video_input_bridge_resp #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.DEFAULT_LINE_LENGTH          (640),
		.VIB_MODE                     ("FULL"),
		.VIDEO_PROTOCOL_NO            (1),
		.READY_LATENCY_1              (1),
		.MAX_WIDTH                    (640),
		.MAX_HEIGHT                   (480),
		.ENABLE_RESOLUTION_CHECK      (1),
		.MULTI_CONTEXT_SUPPORT        (0),
		.PIPELINE_READY               (0),
		.RESP_SRC_ADDRESS             (0),
		.RESP_DST_ADDRESS             (0),
		.DATA_SRC_ADDRESS             (0),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8)
	) video_in_resp (
		.clock                       (main_clock),                             //    main_clock.clk
		.reset                       (main_reset),                             //    main_reset.reset
		.av_st_vid_din_data          (din_data),                               // av_st_vid_din.data
		.av_st_vid_din_valid         (din_valid),                              //              .valid
		.av_st_vid_din_startofpacket (din_startofpacket),                      //              .startofpacket
		.av_st_vid_din_endofpacket   (din_endofpacket),                        //              .endofpacket
		.av_st_vid_din_ready         (din_ready),                              //              .ready
		.av_st_resp_valid            (video_in_resp_av_st_resp_valid),         //    av_st_resp.valid
		.av_st_resp_startofpacket    (video_in_resp_av_st_resp_startofpacket), //              .startofpacket
		.av_st_resp_endofpacket      (video_in_resp_av_st_resp_endofpacket),   //              .endofpacket
		.av_st_resp_data             (video_in_resp_av_st_resp_data),          //              .data
		.av_st_resp_ready            (video_in_resp_av_st_resp_ready),         //              .ready
		.av_st_dout_valid            (video_in_resp_av_st_dout_valid),         //    av_st_dout.valid
		.av_st_dout_startofpacket    (video_in_resp_av_st_dout_startofpacket), //              .startofpacket
		.av_st_dout_endofpacket      (video_in_resp_av_st_dout_endofpacket),   //              .endofpacket
		.av_st_dout_data             (video_in_resp_av_st_dout_data),          //              .data
		.av_st_dout_ready            (video_in_resp_av_st_dout_ready)          //              .ready
	);

	alt_vip_video_output_bridge #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.VIDEO_PROTOCOL_NO            (1),
		.READY_LATENCY_1              (1),
		.SOP_PRE_ALIGNED              (1),
		.MULTI_CONTEXT_SUPPORT        (0),
		.TYPE_11_SUPPORT              (0),
		.NO_CONCATENATION             (0),
		.PIPELINE_READY               (0),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8),
		.LOW_LATENCY_COMMAND_MODE     (0)
	) video_out (
		.clock                        (main_clock),                            //     main_clock.clk
		.reset                        (main_reset),                            //     main_reset.reset
		.av_st_cmd_valid              (scheduler_av_st_cmd_vob_valid),         //      av_st_cmd.valid
		.av_st_cmd_startofpacket      (scheduler_av_st_cmd_vob_startofpacket), //               .startofpacket
		.av_st_cmd_endofpacket        (scheduler_av_st_cmd_vob_endofpacket),   //               .endofpacket
		.av_st_cmd_data               (scheduler_av_st_cmd_vob_data),          //               .data
		.av_st_cmd_ready              (scheduler_av_st_cmd_vob_ready),         //               .ready
		.av_st_din_valid              (output_mux_av_st_dout_valid),           //      av_st_din.valid
		.av_st_din_startofpacket      (output_mux_av_st_dout_startofpacket),   //               .startofpacket
		.av_st_din_endofpacket        (output_mux_av_st_dout_endofpacket),     //               .endofpacket
		.av_st_din_data               (output_mux_av_st_dout_data),            //               .data
		.av_st_din_ready              (output_mux_av_st_dout_ready),           //               .ready
		.av_st_vid_dout_data          (dout_data),                             // av_st_vid_dout.data
		.av_st_vid_dout_valid         (dout_valid),                            //               .valid
		.av_st_vid_dout_startofpacket (dout_startofpacket),                    //               .startofpacket
		.av_st_vid_dout_endofpacket   (dout_endofpacket),                      //               .endofpacket
		.av_st_vid_dout_ready         (dout_ready)                             //               .ready
	);

	alt_vip_line_buffer #(
		.PIXEL_WIDTH             (24),
		.SYMBOLS_IN_SEQ          (1),
		.PIXELS_IN_PARALLEL      (1),
		.CONVERT_TO_1_PIP        (0),
		.MAX_LINE_LENGTH         (640),
		.OUTPUT_PORTS            (1),
		.MODE                    ("LOCKED"),
		.ENABLE_RECEIVE_ONLY_CMD (0),
		.TRACK_LINE_LENGTH       (0),
		.OUTPUT_MUX_SEL          ("NEW"),
		.FIFO_SIZE               (4),
		.KERNEL_SIZE_0           (3),
		.KERNEL_CENTER_0         (1),
		.KERNEL_SIZE_1           (8),
		.KERNEL_START_1          (0),
		.KERNEL_CENTER_1         (3),
		.KERNEL_SIZE_2           (8),
		.KERNEL_START_2          (0),
		.KERNEL_CENTER_2         (3),
		.KERNEL_SIZE_3           (8),
		.KERNEL_START_3          (0),
		.KERNEL_CENTER_3         (3),
		.KERNEL_SIZE_4           (8),
		.KERNEL_START_4          (0),
		.KERNEL_CENTER_4         (3),
		.KERNEL_SIZE_5           (8),
		.KERNEL_START_5          (0),
		.KERNEL_CENTER_5         (3),
		.KERNEL_SIZE_6           (8),
		.KERNEL_START_6          (0),
		.KERNEL_CENTER_6         (3),
		.KERNEL_SIZE_7           (8),
		.KERNEL_START_7          (0),
		.KERNEL_CENTER_7         (3),
		.SRC_WIDTH               (8),
		.DST_WIDTH               (8),
		.CONTEXT_WIDTH           (8),
		.TASK_WIDTH              (8),
		.SOURCE_ADDRESS          (0),
		.ENABLE_FIFOS            (0),
		.ENABLE_PIPELINE_REG     (0),
		.FAMILY                  ("Cyclone IV E")
	) line_buffer (
		.clock                    (main_clock),                              //   main_clock.clk
		.reset                    (main_reset),                              //   main_reset.reset
		.av_st_cmd_valid          (scheduler_av_st_cmd_lb_valid),            //    av_st_cmd.valid
		.av_st_cmd_startofpacket  (scheduler_av_st_cmd_lb_startofpacket),    //             .startofpacket
		.av_st_cmd_endofpacket    (scheduler_av_st_cmd_lb_endofpacket),      //             .endofpacket
		.av_st_cmd_data           (scheduler_av_st_cmd_lb_data),             //             .data
		.av_st_cmd_ready          (scheduler_av_st_cmd_lb_ready),            //             .ready
		.av_st_din_valid          (input_demux_av_st_dout_0_valid),          //    av_st_din.valid
		.av_st_din_startofpacket  (input_demux_av_st_dout_0_startofpacket),  //             .startofpacket
		.av_st_din_endofpacket    (input_demux_av_st_dout_0_endofpacket),    //             .endofpacket
		.av_st_din_data           (input_demux_av_st_dout_0_data),           //             .data
		.av_st_din_ready          (input_demux_av_st_dout_0_ready),          //             .ready
		.av_st_dout_valid         (line_buffer_av_st_dout_valid[0]),         // av_st_dout_0.valid
		.av_st_dout_ready         (line_buffer_av_st_dout_0_ready),          //             .ready
		.av_st_dout_startofpacket (line_buffer_av_st_dout_startofpacket[0]), //             .startofpacket
		.av_st_dout_endofpacket   (line_buffer_av_st_dout_endofpacket[0]),   //             .endofpacket
		.av_st_dout_data          (line_buffer_av_st_dout_data[103:0])       //             .data
	);

	assign2_system_alt_vip_cl_2dfir_0_alg_core alg_core (
		.clock                     (main_clock),                             //  main_clock.clk
		.reset                     (main_reset),                             //  main_reset.reset
		.av_st_cmd_valid           (scheduler_av_st_cmd_ac_valid),           //   av_st_cmd.valid
		.av_st_cmd_startofpacket   (scheduler_av_st_cmd_ac_startofpacket),   //            .startofpacket
		.av_st_cmd_endofpacket     (scheduler_av_st_cmd_ac_endofpacket),     //            .endofpacket
		.av_st_cmd_data            (scheduler_av_st_cmd_ac_data),            //            .data
		.av_st_cmd_ready           (scheduler_av_st_cmd_ac_ready),           //            .ready
		.av_st_din_valid           (line_buffer_av_st_dout_0_valid),         //   av_st_din.valid
		.av_st_din_startofpacket   (line_buffer_av_st_dout_0_startofpacket), //            .startofpacket
		.av_st_din_endofpacket     (line_buffer_av_st_dout_0_endofpacket),   //            .endofpacket
		.av_st_din_data            (line_buffer_av_st_dout_0_data),          //            .data
		.av_st_din_ready           (line_buffer_av_st_dout_0_ready),         //            .ready
		.av_st_resp_valid          (alg_core_av_st_resp_valid),              //  av_st_resp.valid
		.av_st_resp_startofpacket  (alg_core_av_st_resp_startofpacket),      //            .startofpacket
		.av_st_resp_endofpacket    (alg_core_av_st_resp_endofpacket),        //            .endofpacket
		.av_st_resp_data           (alg_core_av_st_resp_data),               //            .data
		.av_st_resp_ready          (alg_core_av_st_resp_ready),              //            .ready
		.av_st_dout_valid          (alg_core_av_st_dout_valid),              //  av_st_dout.valid
		.av_st_dout_startofpacket  (alg_core_av_st_dout_startofpacket),      //            .startofpacket
		.av_st_dout_endofpacket    (alg_core_av_st_dout_endofpacket),        //            .endofpacket
		.av_st_dout_data           (alg_core_av_st_dout_data),               //            .data
		.av_st_dout_ready          (alg_core_av_st_dout_ready),              //            .ready
		.av_st_coeff_valid         (scheduler_av_st_coeff_valid),            // av_st_coeff.valid
		.av_st_coeff_startofpacket (scheduler_av_st_coeff_startofpacket),    //            .startofpacket
		.av_st_coeff_endofpacket   (scheduler_av_st_coeff_endofpacket),      //            .endofpacket
		.av_st_coeff_data          (scheduler_av_st_coeff_data),             //            .data
		.av_st_coeff_ready         (scheduler_av_st_coeff_ready)             //            .ready
	);

	alt_vip_fir_scheduler #(
		.MAX_WIDTH             (640),
		.MAX_HEIGHT            (480),
		.BITS_PER_SYMBOL       (8),
		.EDGE_ADAPTIVE_SHARPEN (0),
		.DEFAULT_SEARCH_RANGE  (5),
		.DEFAULT_UPPER_BLUR    (15),
		.DEFAULT_LOWER_BLUR    (0),
		.V_TAPS                (3),
		.UPDATE_TAPS           (9),
		.COEFF_WIDTH           (4),
		.NO_BLANKING           (0),
		.PIPELINE_READY        (0),
		.RUNTIME_CONTROL       (1),
		.LIMITED_READBACK      (0),
		.USER_PACKET_SUPPORT   ("PASSTHROUGH")
	) scheduler (
		.clock                        (main_clock),                             //     main_clock.clk
		.reset                        (main_reset),                             //     main_reset.reset
		.av_st_resp_vib_valid         (video_in_resp_av_st_resp_valid),         // av_st_resp_vib.valid
		.av_st_resp_vib_startofpacket (video_in_resp_av_st_resp_startofpacket), //               .startofpacket
		.av_st_resp_vib_endofpacket   (video_in_resp_av_st_resp_endofpacket),   //               .endofpacket
		.av_st_resp_vib_data          (video_in_resp_av_st_resp_data),          //               .data
		.av_st_resp_vib_ready         (video_in_resp_av_st_resp_ready),         //               .ready
		.av_st_resp_ac_valid          (alg_core_av_st_resp_valid),              //  av_st_resp_ac.valid
		.av_st_resp_ac_startofpacket  (alg_core_av_st_resp_startofpacket),      //               .startofpacket
		.av_st_resp_ac_endofpacket    (alg_core_av_st_resp_endofpacket),        //               .endofpacket
		.av_st_resp_ac_data           (alg_core_av_st_resp_data),               //               .data
		.av_st_resp_ac_ready          (alg_core_av_st_resp_ready),              //               .ready
		.av_st_cmd_vib_valid          (scheduler_av_st_cmd_vib_valid),          //  av_st_cmd_vib.valid
		.av_st_cmd_vib_startofpacket  (scheduler_av_st_cmd_vib_startofpacket),  //               .startofpacket
		.av_st_cmd_vib_endofpacket    (scheduler_av_st_cmd_vib_endofpacket),    //               .endofpacket
		.av_st_cmd_vib_data           (scheduler_av_st_cmd_vib_data),           //               .data
		.av_st_cmd_vib_ready          (scheduler_av_st_cmd_vib_ready),          //               .ready
		.av_st_cmd_lb_valid           (scheduler_av_st_cmd_lb_valid),           //   av_st_cmd_lb.valid
		.av_st_cmd_lb_startofpacket   (scheduler_av_st_cmd_lb_startofpacket),   //               .startofpacket
		.av_st_cmd_lb_endofpacket     (scheduler_av_st_cmd_lb_endofpacket),     //               .endofpacket
		.av_st_cmd_lb_data            (scheduler_av_st_cmd_lb_data),            //               .data
		.av_st_cmd_lb_ready           (scheduler_av_st_cmd_lb_ready),           //               .ready
		.av_st_cmd_ac_valid           (scheduler_av_st_cmd_ac_valid),           //   av_st_cmd_ac.valid
		.av_st_cmd_ac_startofpacket   (scheduler_av_st_cmd_ac_startofpacket),   //               .startofpacket
		.av_st_cmd_ac_endofpacket     (scheduler_av_st_cmd_ac_endofpacket),     //               .endofpacket
		.av_st_cmd_ac_data            (scheduler_av_st_cmd_ac_data),            //               .data
		.av_st_cmd_ac_ready           (scheduler_av_st_cmd_ac_ready),           //               .ready
		.av_st_cmd_mux_valid          (scheduler_av_st_cmd_mux_valid),          //  av_st_cmd_mux.valid
		.av_st_cmd_mux_startofpacket  (scheduler_av_st_cmd_mux_startofpacket),  //               .startofpacket
		.av_st_cmd_mux_endofpacket    (scheduler_av_st_cmd_mux_endofpacket),    //               .endofpacket
		.av_st_cmd_mux_data           (scheduler_av_st_cmd_mux_data),           //               .data
		.av_st_cmd_mux_ready          (scheduler_av_st_cmd_mux_ready),          //               .ready
		.av_st_cmd_vob_valid          (scheduler_av_st_cmd_vob_valid),          //  av_st_cmd_vob.valid
		.av_st_cmd_vob_startofpacket  (scheduler_av_st_cmd_vob_startofpacket),  //               .startofpacket
		.av_st_cmd_vob_endofpacket    (scheduler_av_st_cmd_vob_endofpacket),    //               .endofpacket
		.av_st_cmd_vob_data           (scheduler_av_st_cmd_vob_data),           //               .data
		.av_st_cmd_vob_ready          (scheduler_av_st_cmd_vob_ready),          //               .ready
		.av_st_coeff_valid            (scheduler_av_st_coeff_valid),            //    av_st_coeff.valid
		.av_st_coeff_startofpacket    (scheduler_av_st_coeff_startofpacket),    //               .startofpacket
		.av_st_coeff_endofpacket      (scheduler_av_st_coeff_endofpacket),      //               .endofpacket
		.av_st_coeff_data             (scheduler_av_st_coeff_data),             //               .data
		.av_st_coeff_ready            (scheduler_av_st_coeff_ready),            //               .ready
		.av_mm_control_address        (control_address),                        //  av_mm_control.address
		.av_mm_control_byteenable     (control_byteenable),                     //               .byteenable
		.av_mm_control_write          (control_write),                          //               .write
		.av_mm_control_writedata      (control_writedata),                      //               .writedata
		.av_mm_control_read           (control_read),                           //               .read
		.av_mm_control_readdata       (control_readdata),                       //               .readdata
		.av_mm_control_readdatavalid  (control_readdatavalid),                  //               .readdatavalid
		.av_mm_control_waitrequest    (control_waitrequest)                     //               .waitrequest
	);

	alt_vip_guard_bands_alg_core #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.IS_422                       (0),
		.SIGNED_INPUT                 (0),
		.SIGNED_OUTPUT                (0),
		.ENABLE_CMD_PORT              (0),
		.OUTPUT_GUARD_BAND_LOWER_0    (0),
		.OUTPUT_GUARD_BAND_UPPER_0    (255),
		.OUTPUT_GUARD_BAND_LOWER_1    (0),
		.OUTPUT_GUARD_BAND_UPPER_1    (255),
		.OUTPUT_GUARD_BAND_LOWER_2    (0),
		.OUTPUT_GUARD_BAND_UPPER_2    (255),
		.OUTPUT_GUARD_BAND_LOWER_3    (0),
		.OUTPUT_GUARD_BAND_UPPER_3    (255),
		.PIPELINE_READY               (0),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8),
		.SOURCE_ID                    (0)
	) out_gb (
		.clock                    (main_clock),                        // main_clock.clk
		.reset                    (main_reset),                        // main_reset.reset
		.av_st_din_valid          (alg_core_av_st_dout_valid),         //  av_st_din.valid
		.av_st_din_startofpacket  (alg_core_av_st_dout_startofpacket), //           .startofpacket
		.av_st_din_endofpacket    (alg_core_av_st_dout_endofpacket),   //           .endofpacket
		.av_st_din_data           (alg_core_av_st_dout_data),          //           .data
		.av_st_din_ready          (alg_core_av_st_dout_ready),         //           .ready
		.av_st_dout_valid         (out_gb_av_st_dout_valid),           // av_st_dout.valid
		.av_st_dout_startofpacket (out_gb_av_st_dout_startofpacket),   //           .startofpacket
		.av_st_dout_endofpacket   (out_gb_av_st_dout_endofpacket),     //           .endofpacket
		.av_st_dout_data          (out_gb_av_st_dout_data),            //           .data
		.av_st_dout_ready         (out_gb_av_st_dout_ready)            //           .ready
	);

	alt_vip_video_input_bridge_cmd #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.PIPELINE_READY               (0),
		.DATA_SRC_ADDRESS             (0),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8)
	) video_in_cmd (
		.clock                    (main_clock),                             // main_clock.clk
		.reset                    (main_reset),                             // main_reset.reset
		.av_st_cmd_valid          (scheduler_av_st_cmd_vib_valid),          //  av_st_cmd.valid
		.av_st_cmd_startofpacket  (scheduler_av_st_cmd_vib_startofpacket),  //           .startofpacket
		.av_st_cmd_endofpacket    (scheduler_av_st_cmd_vib_endofpacket),    //           .endofpacket
		.av_st_cmd_data           (scheduler_av_st_cmd_vib_data),           //           .data
		.av_st_cmd_ready          (scheduler_av_st_cmd_vib_ready),          //           .ready
		.av_st_din_valid          (video_in_resp_av_st_dout_valid),         //  av_st_din.valid
		.av_st_din_startofpacket  (video_in_resp_av_st_dout_startofpacket), //           .startofpacket
		.av_st_din_endofpacket    (video_in_resp_av_st_dout_endofpacket),   //           .endofpacket
		.av_st_din_data           (video_in_resp_av_st_dout_data),          //           .data
		.av_st_din_ready          (video_in_resp_av_st_dout_ready),         //           .ready
		.av_st_dout_valid         (video_in_cmd_av_st_dout_valid),          // av_st_dout.valid
		.av_st_dout_startofpacket (video_in_cmd_av_st_dout_startofpacket),  //           .startofpacket
		.av_st_dout_endofpacket   (video_in_cmd_av_st_dout_endofpacket),    //           .endofpacket
		.av_st_dout_data          (video_in_cmd_av_st_dout_data),           //           .data
		.av_st_dout_ready         (video_in_cmd_av_st_dout_ready)           //           .ready
	);

	alt_vip_packet_demux #(
		.NUM_OUTPUTS        (2),
		.CLIP_ADDRESS_BITS  (0),
		.SHIFT_ADDRESS_BITS (0),
		.REGISTER_OUTPUT    (1),
		.PIPELINE_READY     (0),
		.SRC_WIDTH          (8),
		.DST_WIDTH          (8),
		.CONTEXT_WIDTH      (8),
		.TASK_WIDTH         (8),
		.DATA_WIDTH_INT     (24),
		.USER_WIDTH_INT     (0)
	) input_demux (
		.clock                    (main_clock),                                                                        //   main_clock.clk
		.reset                    (main_reset),                                                                        //   main_reset.reset
		.av_st_din_valid          (video_in_cmd_av_st_dout_valid),                                                     //    av_st_din.valid
		.av_st_din_startofpacket  (video_in_cmd_av_st_dout_startofpacket),                                             //             .startofpacket
		.av_st_din_endofpacket    (video_in_cmd_av_st_dout_endofpacket),                                               //             .endofpacket
		.av_st_din_data           (video_in_cmd_av_st_dout_data),                                                      //             .data
		.av_st_din_ready          (video_in_cmd_av_st_dout_ready),                                                     //             .ready
		.av_st_dout_valid         ({input_demux_av_st_dout_valid[1],input_demux_av_st_dout_valid[0]}),                 // av_st_dout_0.valid
		.av_st_dout_startofpacket ({input_demux_av_st_dout_startofpacket[1],input_demux_av_st_dout_startofpacket[0]}), //             .startofpacket
		.av_st_dout_endofpacket   ({input_demux_av_st_dout_endofpacket[1],input_demux_av_st_dout_endofpacket[0]}),     //             .endofpacket
		.av_st_dout_data          ({input_demux_av_st_dout_data[111:56],input_demux_av_st_dout_data[55:0]}),           //             .data
		.av_st_dout_ready         ({input_demux_av_st_dout_1_ready,input_demux_av_st_dout_0_ready})                    //             .ready
	);

	alt_vip_bps_converter #(
		.INPUT_BITS_PER_SYMBOL        (8),
		.OUTPUT_BITS_PER_SYMBOL       (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.CONVERSION_MODE              ("LSB"),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8)
	) user_bps_conv (
		.clock                    (main_clock),                             // main_clock.clk
		.reset                    (main_reset),                             // main_reset.reset
		.av_st_din_valid          (input_demux_av_st_dout_1_valid),         //  av_st_din.valid
		.av_st_din_startofpacket  (input_demux_av_st_dout_1_startofpacket), //           .startofpacket
		.av_st_din_endofpacket    (input_demux_av_st_dout_1_endofpacket),   //           .endofpacket
		.av_st_din_data           (input_demux_av_st_dout_1_data),          //           .data
		.av_st_din_ready          (input_demux_av_st_dout_1_ready),         //           .ready
		.av_st_dout_valid         (user_bps_conv_av_st_dout_valid),         // av_st_dout.valid
		.av_st_dout_startofpacket (user_bps_conv_av_st_dout_startofpacket), //           .startofpacket
		.av_st_dout_endofpacket   (user_bps_conv_av_st_dout_endofpacket),   //           .endofpacket
		.av_st_dout_data          (user_bps_conv_av_st_dout_data),          //           .data
		.av_st_dout_ready         (user_bps_conv_av_st_dout_ready)          //           .ready
	);

	alt_vip_packet_mux #(
		.NUM_INPUTS      (2),
		.REGISTER_OUTPUT (1),
		.PIPELINE_READY  (0),
		.NAME            ("undefined"),
		.SRC_WIDTH       (8),
		.DST_WIDTH       (8),
		.CONTEXT_WIDTH   (8),
		.TASK_WIDTH      (8),
		.DATA_WIDTH_INT  (24),
		.USER_WIDTH_INT  (0)
	) output_mux (
		.clock                    (main_clock),                                                               //  main_clock.clk
		.reset                    (main_reset),                                                               //  main_reset.reset
		.av_st_cmd_valid          (scheduler_av_st_cmd_mux_valid),                                            //   av_st_cmd.valid
		.av_st_cmd_startofpacket  (scheduler_av_st_cmd_mux_startofpacket),                                    //            .startofpacket
		.av_st_cmd_endofpacket    (scheduler_av_st_cmd_mux_endofpacket),                                      //            .endofpacket
		.av_st_cmd_data           (scheduler_av_st_cmd_mux_data),                                             //            .data
		.av_st_cmd_ready          (scheduler_av_st_cmd_mux_ready),                                            //            .ready
		.av_st_din_valid          ({user_bps_conv_av_st_dout_valid,out_gb_av_st_dout_valid}),                 // av_st_din_0.valid
		.av_st_din_startofpacket  ({user_bps_conv_av_st_dout_startofpacket,out_gb_av_st_dout_startofpacket}), //            .startofpacket
		.av_st_din_endofpacket    ({user_bps_conv_av_st_dout_endofpacket,out_gb_av_st_dout_endofpacket}),     //            .endofpacket
		.av_st_din_data           ({user_bps_conv_av_st_dout_data[55:0],out_gb_av_st_dout_data[55:0]}),       //            .data
		.av_st_din_ready          ({output_mux_av_st_din_ready[1],output_mux_av_st_din_ready[0]}),            //            .ready
		.av_st_dout_valid         (output_mux_av_st_dout_valid),                                              //  av_st_dout.valid
		.av_st_dout_startofpacket (output_mux_av_st_dout_startofpacket),                                      //            .startofpacket
		.av_st_dout_endofpacket   (output_mux_av_st_dout_endofpacket),                                        //            .endofpacket
		.av_st_dout_data          (output_mux_av_st_dout_data),                                               //            .data
		.av_st_dout_ready         (output_mux_av_st_dout_ready)                                               //            .ready
	);

	assign line_buffer_av_st_dout_0_valid = { line_buffer_av_st_dout_valid[0] };

	assign line_buffer_av_st_dout_0_data = { line_buffer_av_st_dout_data[103:0] };

	assign line_buffer_av_st_dout_0_startofpacket = { line_buffer_av_st_dout_startofpacket[0] };

	assign line_buffer_av_st_dout_0_endofpacket = { line_buffer_av_st_dout_endofpacket[0] };

	assign input_demux_av_st_dout_0_valid = { input_demux_av_st_dout_valid[0] };

	assign input_demux_av_st_dout_0_data = { input_demux_av_st_dout_data[55:0] };

	assign input_demux_av_st_dout_0_startofpacket = { input_demux_av_st_dout_startofpacket[0] };

	assign input_demux_av_st_dout_0_endofpacket = { input_demux_av_st_dout_endofpacket[0] };

	assign out_gb_av_st_dout_ready = { output_mux_av_st_din_ready[0] };

	assign input_demux_av_st_dout_1_valid = { input_demux_av_st_dout_valid[1] };

	assign input_demux_av_st_dout_1_data = { input_demux_av_st_dout_data[111:56] };

	assign input_demux_av_st_dout_1_startofpacket = { input_demux_av_st_dout_startofpacket[1] };

	assign input_demux_av_st_dout_1_endofpacket = { input_demux_av_st_dout_endofpacket[1] };

	assign user_bps_conv_av_st_dout_ready = { output_mux_av_st_din_ready[1] };

endmodule
