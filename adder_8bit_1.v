// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_add_sub 

// ============================================================
// File Name: adder_8bit_1.v
// Megafunction Name(s):
// 			lpm_add_sub
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


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module adder_8bit_1 (
	dataa,
	result);

	input	[7:0]  dataa;
	output	[7:0]  result;

	wire [7:0] sub_wire0;
	wire [7:0] sub_wire1 = 8'h01;
	wire [7:0] result = sub_wire0[7:0];

	lpm_add_sub	lpm_add_sub_component (
				.dataa (dataa),
				.datab (sub_wire1),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.cin (),
				.clken (),
				.clock (),
				.cout (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_sub_component.lpm_direction = "ADD",
		lpm_add_sub_component.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES,CIN_USED=NO",
		lpm_add_sub_component.lpm_representation = "UNSIGNED",
		lpm_add_sub_component.lpm_type = "LPM_ADD_SUB",
		lpm_add_sub_component.lpm_width = 8;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "1"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: Overflow NUMERIC "0"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "1"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "2"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "8"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=YES,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: dataa 0 0 8 0 INPUT NODEFVAL dataa[7..0]
// Retrieval info: USED_PORT: result 0 0 8 0 OUTPUT NODEFVAL result[7..0]
// Retrieval info: CONNECT: result 0 0 8 0 @result 0 0 8 0
// Retrieval info: CONNECT: @dataa 0 0 8 0 dataa 0 0 8 0
// Retrieval info: CONNECT: @datab 0 0 8 0 1 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder_8bit_1_wave*.jpg FALSE
// Retrieval info: LIB_FILE: lpm
