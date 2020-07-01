// megafunction wizard: %RAM initializer%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTMEM_INIT 

// ============================================================
// File Name: registers_init.v
// Megafunction Name(s):
// 			ALTMEM_INIT
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.0 Build 132 02/25/2009 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//altmem_init CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Stratix II" INIT_FILE="1" INIT_TO_ZERO="NO" NUMWORDS=256 PORT_ROM_DATA_READY="PORT_UNUSED" ROM_READ_LATENCY=1 WIDTH=32 WIDTHAD=8 clock dataout init init_busy ram_address ram_wren
//VERSION_BEGIN 9.0 cbx_altmem_init 2008:05:30:11:27:33:SJ cbx_altsyncram 2008:11:06:10:05:41:SJ cbx_cycloneii 2008:05:19:10:57:37:SJ cbx_lpm_add_sub 2008:12:09:22:11:50:SJ cbx_lpm_compare 2009:02:03:01:43:16:SJ cbx_lpm_counter 2008:05:19:10:42:20:SJ cbx_lpm_decode 2008:05:19:10:39:27:SJ cbx_lpm_mux 2008:05:19:10:30:36:SJ cbx_mgl 2009:01:29:16:12:07:SJ cbx_stratix 2008:09:18:16:08:35:SJ cbx_stratixii 2008:11:14:16:08:42:SJ cbx_stratixiii 2008:12:24:11:49:14:SJ cbx_util_mgl 2008:11:21:14:58:47:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = altsyncram 1 lpm_compare 2 lpm_counter 2 reg 12 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  registers_init_meminit_d6l
	( 
	clock,
	dataout,
	init,
	init_busy,
	ram_address,
	ram_wren) ;
	input   clock;
	output   [31:0]  dataout;
	input   init;
	output   init_busy;
	output   [7:0]  ram_address;
	output   ram_wren;

	wire  [31:0]   wire_int_rom_q_a;
	reg	[0:0]	capture_init;
	reg	[7:0]	delay_addr;
	wire	[7:0]	wire_delay_addr_ena;
	wire	[2:0]	wire_state_reg_d;
	reg	[2:0]	state_reg;
	wire	[2:0]	wire_state_reg_sclr;
	wire	[2:0]	wire_state_reg_sload;
	wire  wire_addr_cmpr_aeb;
	wire  wire_addr_cmpr_alb;
	wire  wire_wait_cmpr_aeb;
	wire  wire_wait_cmpr_alb;
	wire  [7:0]   wire_addr_ctr_q;
	wire  [0:0]   wire_wait_ctr_q;
	wire  [0:0]  addrct_eq_numwords;
	wire  [0:0]  addrct_lt_numwords;
	wire clken;
	wire  [31:0]  dataout_w;
	wire  [0:0]  done_state;
	wire  [0:0]  idle_state;
	wire  [0:0]  ram_write_state;
	wire  [0:0]  reset_state_machine;
	wire  [0:0]  rom_addr_state;
	wire  [0:0]  rom_data_capture_state;
	wire  [0:0]  state_machine_clken;
	wire  [0:0]  waitct_eq_latency;
	wire  [0:0]  waitct_lt_latency;

	altsyncram   int_rom
	( 
	.address_a(wire_addr_ctr_q),
	.clock0(clock),
	.clocken0(clken),
	.eccstatus(),
	.q_a(wire_int_rom_q_a),
	.q_b(),
	.rden_a(rom_data_capture_state)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr0(1'b0),
	.aclr1(1'b0),
	.address_b({1{1'b1}}),
	.addressstall_a(1'b0),
	.addressstall_b(1'b0),
	.byteena_a({1{1'b1}}),
	.byteena_b({1{1'b1}}),
	.clock1(1'b1),
	.clocken1(1'b1),
	.clocken2(1'b1),
	.clocken3(1'b1),
	.data_a({32{1'b1}}),
	.data_b({1{1'b1}}),
	.rden_b(1'b1),
	.wren_a(1'b0),
	.wren_b(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		int_rom.init_file = "1",
		int_rom.numwords_a = 256,
		int_rom.operation_mode = "ROM",
		int_rom.width_a = 32,
		int_rom.widthad_a = 8,
		int_rom.intended_device_family = "Stratix II",
		int_rom.lpm_type = "altsyncram";
	// synopsys translate_off
	initial
		capture_init = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (clken == 1'b1)   capture_init <= ((init | capture_init) & (~ done_state));
	// synopsys translate_off
	initial
		delay_addr[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[0:0] == 1'b1)   delay_addr[0:0] <= wire_addr_ctr_q[0:0];
	// synopsys translate_off
	initial
		delay_addr[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[1:1] == 1'b1)   delay_addr[1:1] <= wire_addr_ctr_q[1:1];
	// synopsys translate_off
	initial
		delay_addr[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[2:2] == 1'b1)   delay_addr[2:2] <= wire_addr_ctr_q[2:2];
	// synopsys translate_off
	initial
		delay_addr[3:3] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[3:3] == 1'b1)   delay_addr[3:3] <= wire_addr_ctr_q[3:3];
	// synopsys translate_off
	initial
		delay_addr[4:4] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[4:4] == 1'b1)   delay_addr[4:4] <= wire_addr_ctr_q[4:4];
	// synopsys translate_off
	initial
		delay_addr[5:5] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[5:5] == 1'b1)   delay_addr[5:5] <= wire_addr_ctr_q[5:5];
	// synopsys translate_off
	initial
		delay_addr[6:6] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[6:6] == 1'b1)   delay_addr[6:6] <= wire_addr_ctr_q[6:6];
	// synopsys translate_off
	initial
		delay_addr[7:7] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (wire_delay_addr_ena[7:7] == 1'b1)   delay_addr[7:7] <= wire_addr_ctr_q[7:7];
	assign
		wire_delay_addr_ena = {8{(clken & rom_data_capture_state)}};
	// synopsys translate_off
	initial
		state_reg[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (state_machine_clken == 1'b1) 
			if (wire_state_reg_sclr[0:0] == 1'b1) state_reg[0:0] <= 1'b0;
			else if (wire_state_reg_sload[0:0] == 1'b1) state_reg[0:0] <= 1;
			else  state_reg[0:0] <= wire_state_reg_d[0:0];
	// synopsys translate_off
	initial
		state_reg[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (state_machine_clken == 1'b1) 
			if (wire_state_reg_sclr[1:1] == 1'b1) state_reg[1:1] <= 1'b0;
			else if (wire_state_reg_sload[1:1] == 1'b1) state_reg[1:1] <= 1;
			else  state_reg[1:1] <= wire_state_reg_d[1:1];
	// synopsys translate_off
	initial
		state_reg[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		if (state_machine_clken == 1'b1) 
			if (wire_state_reg_sclr[2:2] == 1'b1) state_reg[2:2] <= 1'b0;
			else if (wire_state_reg_sload[2:2] == 1'b1) state_reg[2:2] <= 1;
			else  state_reg[2:2] <= wire_state_reg_d[2:2];
	assign
		wire_state_reg_d = {(((~ state_reg[2]) & state_reg[1]) & state_reg[0]), ((~ state_reg[2]) & (state_reg[1] ^ state_reg[0])), ((~ state_reg[2]) & (~ state_reg[0]))};
	assign
		wire_state_reg_sclr = {{2{reset_state_machine}}, 1'b0},
		wire_state_reg_sload = {{2{1'b0}}, reset_state_machine};
	lpm_compare   addr_cmpr
	( 
	.aeb(wire_addr_cmpr_aeb),
	.agb(),
	.ageb(),
	.alb(wire_addr_cmpr_alb),
	.aleb(),
	.aneb(),
	.dataa(delay_addr),
	.datab({8{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		addr_cmpr.lpm_width = 8,
		addr_cmpr.lpm_type = "lpm_compare";
	lpm_compare   wait_cmpr
	( 
	.aeb(wire_wait_cmpr_aeb),
	.agb(),
	.ageb(),
	.alb(wire_wait_cmpr_alb),
	.aleb(),
	.aneb(),
	.dataa(wire_wait_ctr_q),
	.datab(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		wait_cmpr.lpm_width = 1,
		wait_cmpr.lpm_type = "lpm_compare";
	lpm_counter   addr_ctr
	( 
	.clk_en(clken),
	.clock(clock),
	.cnt_en(ram_write_state),
	.cout(),
	.eq(),
	.q(wire_addr_ctr_q),
	.sclr(((~ state_reg[1]) & (~ state_reg[0])))
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.aload(1'b0),
	.aset(1'b0),
	.cin(1'b1),
	.data({8{1'b0}}),
	.sload(1'b0),
	.sset(1'b0),
	.updown(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		addr_ctr.lpm_direction = "UP",
		addr_ctr.lpm_modulus = 256,
		addr_ctr.lpm_port_updown = "PORT_UNUSED",
		addr_ctr.lpm_width = 8,
		addr_ctr.lpm_type = "lpm_counter";
	lpm_counter   wait_ctr
	( 
	.clk_en(clken),
	.clock(clock),
	.cnt_en(rom_addr_state),
	.cout(),
	.eq(),
	.q(wire_wait_ctr_q),
	.sclr((~ rom_addr_state))
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.aload(1'b0),
	.aset(1'b0),
	.cin(1'b1),
	.data({1{1'b0}}),
	.sload(1'b0),
	.sset(1'b0),
	.updown(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		wait_ctr.lpm_direction = "UP",
		wait_ctr.lpm_modulus = 1,
		wait_ctr.lpm_port_updown = "PORT_UNUSED",
		wait_ctr.lpm_width = 1,
		wait_ctr.lpm_type = "lpm_counter";
	assign
		addrct_eq_numwords = wire_addr_cmpr_aeb,
		addrct_lt_numwords = wire_addr_cmpr_alb,
		clken = 1'b1,
		dataout = dataout_w,
		dataout_w = wire_int_rom_q_a,
		done_state = ((state_reg[2] & (~ state_reg[1])) & (~ state_reg[0])),
		idle_state = (((~ state_reg[2]) & (~ state_reg[1])) & (~ state_reg[0])),
		init_busy = capture_init,
		ram_address = delay_addr,
		ram_wren = ram_write_state,
		ram_write_state = (((~ state_reg[2]) & state_reg[1]) & state_reg[0]),
		reset_state_machine = (ram_write_state & addrct_lt_numwords),
		rom_addr_state = (((~ state_reg[2]) & (~ state_reg[1])) & state_reg[0]),
		rom_data_capture_state = (((~ state_reg[2]) & state_reg[1]) & (~ state_reg[0])),
		state_machine_clken = (clken & ((idle_state & capture_init) | ((rom_data_capture_state | done_state) | (capture_init & (((~ (rom_addr_state & waitct_lt_latency)) | (rom_addr_state & waitct_eq_latency)) | (ram_write_state & addrct_eq_numwords)))))),
		waitct_eq_latency = wire_wait_cmpr_aeb,
		waitct_lt_latency = wire_wait_cmpr_alb;
endmodule //registers_init_meminit_d6l
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module registers_init (
	clock,
	init,
	dataout,
	init_busy,
	ram_address,
	ram_wren);

	input	  clock;
	input	  init;
	output	[31:0]  dataout;
	output	  init_busy;
	output	[7:0]  ram_address;
	output	  ram_wren;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0	  clock;
	tri0	  init;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [31:0] sub_wire0;
	wire  sub_wire1;
	wire [7:0] sub_wire2;
	wire  sub_wire3;
	wire [31:0] dataout = sub_wire0[31:0];
	wire  ram_wren = sub_wire1;
	wire [7:0] ram_address = sub_wire2[7:0];
	wire  init_busy = sub_wire3;

	registers_init_meminit_d6l	registers_init_meminit_d6l_component (
				.clock (clock),
				.init (init),
				.dataout (sub_wire0),
				.ram_wren (sub_wire1),
				.ram_address (sub_wire2),
				.init_busy (sub_wire3));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: CONSTANT: INIT_FILE NUMERIC "1"
// Retrieval info: CONSTANT: INIT_TO_ZERO STRING "NO"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altmem_init"
// Retrieval info: CONSTANT: NUMWORDS NUMERIC "256"
// Retrieval info: CONSTANT: PORT_ROM_DATA_READY STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: ROM_READ_LATENCY NUMERIC "1"
// Retrieval info: CONSTANT: WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: WIDTHAD NUMERIC "8"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT GND "clock"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: USED_PORT: dataout 0 0 32 0 OUTPUT GND "dataout[31..0]"
// Retrieval info: CONNECT: dataout 0 0 32 0 @dataout 0 0 32 0
// Retrieval info: USED_PORT: init 0 0 0 0 INPUT GND "init"
// Retrieval info: CONNECT: @init 0 0 0 0 init 0 0 0 0
// Retrieval info: USED_PORT: init_busy 0 0 0 0 OUTPUT GND "init_busy"
// Retrieval info: CONNECT: init_busy 0 0 0 0 @init_busy 0 0 0 0
// Retrieval info: USED_PORT: ram_address 0 0 8 0 OUTPUT GND "ram_address[7..0]"
// Retrieval info: CONNECT: ram_address 0 0 8 0 @ram_address 0 0 8 0
// Retrieval info: USED_PORT: ram_wren 0 0 0 0 OUTPUT GND "ram_wren"
// Retrieval info: CONNECT: ram_wren 0 0 0 0 @ram_wren 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init_inst.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init_bb.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL registers_init.cmp FALSE TRUE
// Retrieval info: LIB_FILE: lpm
