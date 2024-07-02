set moduleName kp_502_15
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {kp_502_15}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_0 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ r_1 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ r_2 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ r_3 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ a_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ a_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ a_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ a_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ b_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ b_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ b_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ b_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ c_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ c_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ c_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ c_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ x_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ x_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ x_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ x_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_0_address0 sc_out sc_lv 1 signal 0 } 
	{ r_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_0_we0 sc_out sc_logic 1 signal 0 } 
	{ r_0_d0 sc_out sc_lv 32 signal 0 } 
	{ r_1_address0 sc_out sc_lv 1 signal 1 } 
	{ r_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ r_1_we0 sc_out sc_logic 1 signal 1 } 
	{ r_1_d0 sc_out sc_lv 32 signal 1 } 
	{ r_2_address0 sc_out sc_lv 1 signal 2 } 
	{ r_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ r_2_we0 sc_out sc_logic 1 signal 2 } 
	{ r_2_d0 sc_out sc_lv 32 signal 2 } 
	{ r_3_address0 sc_out sc_lv 1 signal 3 } 
	{ r_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ r_3_we0 sc_out sc_logic 1 signal 3 } 
	{ r_3_d0 sc_out sc_lv 32 signal 3 } 
	{ a_0_address0 sc_out sc_lv 1 signal 4 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_0_q0 sc_in sc_lv 32 signal 4 } 
	{ a_1_address0 sc_out sc_lv 1 signal 5 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ a_1_q0 sc_in sc_lv 32 signal 5 } 
	{ a_2_address0 sc_out sc_lv 1 signal 6 } 
	{ a_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_2_q0 sc_in sc_lv 32 signal 6 } 
	{ a_3_address0 sc_out sc_lv 1 signal 7 } 
	{ a_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ a_3_q0 sc_in sc_lv 32 signal 7 } 
	{ b_0_address0 sc_out sc_lv 1 signal 8 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ b_0_q0 sc_in sc_lv 32 signal 8 } 
	{ b_1_address0 sc_out sc_lv 1 signal 9 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ b_1_q0 sc_in sc_lv 32 signal 9 } 
	{ b_2_address0 sc_out sc_lv 1 signal 10 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ b_2_q0 sc_in sc_lv 32 signal 10 } 
	{ b_3_address0 sc_out sc_lv 1 signal 11 } 
	{ b_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ b_3_q0 sc_in sc_lv 32 signal 11 } 
	{ c_0_address0 sc_out sc_lv 1 signal 12 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ c_0_q0 sc_in sc_lv 32 signal 12 } 
	{ c_1_address0 sc_out sc_lv 1 signal 13 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ c_1_q0 sc_in sc_lv 32 signal 13 } 
	{ c_2_address0 sc_out sc_lv 1 signal 14 } 
	{ c_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ c_2_q0 sc_in sc_lv 32 signal 14 } 
	{ c_3_address0 sc_out sc_lv 1 signal 15 } 
	{ c_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ c_3_q0 sc_in sc_lv 32 signal 15 } 
	{ x_0_address0 sc_out sc_lv 1 signal 16 } 
	{ x_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_0_q0 sc_in sc_lv 32 signal 16 } 
	{ x_1_address0 sc_out sc_lv 1 signal 17 } 
	{ x_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_1_q0 sc_in sc_lv 32 signal 17 } 
	{ x_2_address0 sc_out sc_lv 1 signal 18 } 
	{ x_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_2_q0 sc_in sc_lv 32 signal 18 } 
	{ x_3_address0 sc_out sc_lv 1 signal 19 } 
	{ x_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ x_3_q0 sc_in sc_lv 32 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "r_0", "role": "address0" }} , 
 	{ "name": "r_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_0", "role": "ce0" }} , 
 	{ "name": "r_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_0", "role": "we0" }} , 
 	{ "name": "r_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_0", "role": "d0" }} , 
 	{ "name": "r_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "r_1", "role": "address0" }} , 
 	{ "name": "r_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_1", "role": "ce0" }} , 
 	{ "name": "r_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_1", "role": "we0" }} , 
 	{ "name": "r_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_1", "role": "d0" }} , 
 	{ "name": "r_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "r_2", "role": "address0" }} , 
 	{ "name": "r_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_2", "role": "ce0" }} , 
 	{ "name": "r_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_2", "role": "we0" }} , 
 	{ "name": "r_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_2", "role": "d0" }} , 
 	{ "name": "r_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "r_3", "role": "address0" }} , 
 	{ "name": "r_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_3", "role": "ce0" }} , 
 	{ "name": "r_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_3", "role": "we0" }} , 
 	{ "name": "r_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_3", "role": "d0" }} , 
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "q0" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "q0" }} , 
 	{ "name": "a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "address0" }} , 
 	{ "name": "a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce0" }} , 
 	{ "name": "a_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_2", "role": "q0" }} , 
 	{ "name": "a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "address0" }} , 
 	{ "name": "a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "ce0" }} , 
 	{ "name": "a_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3", "role": "q0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "q0" }} , 
 	{ "name": "b_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "address0" }} , 
 	{ "name": "b_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce0" }} , 
 	{ "name": "b_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "q0" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "q0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "q0" }} , 
 	{ "name": "c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "address0" }} , 
 	{ "name": "c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce0" }} , 
 	{ "name": "c_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "q0" }} , 
 	{ "name": "c_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "address0" }} , 
 	{ "name": "c_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce0" }} , 
 	{ "name": "c_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "q0" }} , 
 	{ "name": "x_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "address0" }} , 
 	{ "name": "x_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "ce0" }} , 
 	{ "name": "x_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "q0" }} , 
 	{ "name": "x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "address0" }} , 
 	{ "name": "x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "ce0" }} , 
 	{ "name": "x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "q0" }} , 
 	{ "name": "x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "address0" }} , 
 	{ "name": "x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "ce0" }} , 
 	{ "name": "x_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "q0" }} , 
 	{ "name": "x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "address0" }} , 
 	{ "name": "x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "ce0" }} , 
 	{ "name": "x_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "kp_502_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_15 {
		r_0 {Type O LastRead -1 FirstWrite 3}
		r_1 {Type O LastRead -1 FirstWrite 3}
		r_2 {Type O LastRead -1 FirstWrite 3}
		r_3 {Type O LastRead -1 FirstWrite 3}
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_2 {Type I LastRead 1 FirstWrite -1}
		a_3 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		b_2 {Type I LastRead 1 FirstWrite -1}
		b_3 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type I LastRead 2 FirstWrite -1}
		c_1 {Type I LastRead 2 FirstWrite -1}
		c_2 {Type I LastRead 2 FirstWrite -1}
		c_3 {Type I LastRead 2 FirstWrite -1}
		x_0 {Type I LastRead 1 FirstWrite -1}
		x_1 {Type I LastRead 1 FirstWrite -1}
		x_2 {Type I LastRead 1 FirstWrite -1}
		x_3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_0 { ap_memory {  { r_0_address0 mem_address 1 1 }  { r_0_ce0 mem_ce 1 1 }  { r_0_we0 mem_we 1 1 }  { r_0_d0 mem_din 1 32 } } }
	r_1 { ap_memory {  { r_1_address0 mem_address 1 1 }  { r_1_ce0 mem_ce 1 1 }  { r_1_we0 mem_we 1 1 }  { r_1_d0 mem_din 1 32 } } }
	r_2 { ap_memory {  { r_2_address0 mem_address 1 1 }  { r_2_ce0 mem_ce 1 1 }  { r_2_we0 mem_we 1 1 }  { r_2_d0 mem_din 1 32 } } }
	r_3 { ap_memory {  { r_3_address0 mem_address 1 1 }  { r_3_ce0 mem_ce 1 1 }  { r_3_we0 mem_we 1 1 }  { r_3_d0 mem_din 1 32 } } }
	a_0 { ap_memory {  { a_0_address0 mem_address 1 1 }  { a_0_ce0 mem_ce 1 1 }  { a_0_q0 in_data 0 32 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 1 }  { a_1_ce0 mem_ce 1 1 }  { a_1_q0 in_data 0 32 } } }
	a_2 { ap_memory {  { a_2_address0 mem_address 1 1 }  { a_2_ce0 mem_ce 1 1 }  { a_2_q0 in_data 0 32 } } }
	a_3 { ap_memory {  { a_3_address0 mem_address 1 1 }  { a_3_ce0 mem_ce 1 1 }  { a_3_q0 in_data 0 32 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 1 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 in_data 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 1 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 32 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 1 }  { b_2_ce0 mem_ce 1 1 }  { b_2_q0 in_data 0 32 } } }
	b_3 { ap_memory {  { b_3_address0 mem_address 1 1 }  { b_3_ce0 mem_ce 1 1 }  { b_3_q0 in_data 0 32 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 1 }  { c_0_ce0 mem_ce 1 1 }  { c_0_q0 in_data 0 32 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 1 }  { c_1_ce0 mem_ce 1 1 }  { c_1_q0 in_data 0 32 } } }
	c_2 { ap_memory {  { c_2_address0 mem_address 1 1 }  { c_2_ce0 mem_ce 1 1 }  { c_2_q0 in_data 0 32 } } }
	c_3 { ap_memory {  { c_3_address0 mem_address 1 1 }  { c_3_ce0 mem_ce 1 1 }  { c_3_q0 in_data 0 32 } } }
	x_0 { ap_memory {  { x_0_address0 mem_address 1 1 }  { x_0_ce0 mem_ce 1 1 }  { x_0_q0 in_data 0 32 } } }
	x_1 { ap_memory {  { x_1_address0 mem_address 1 1 }  { x_1_ce0 mem_ce 1 1 }  { x_1_q0 in_data 0 32 } } }
	x_2 { ap_memory {  { x_2_address0 mem_address 1 1 }  { x_2_ce0 mem_ce 1 1 }  { x_2_q0 in_data 0 32 } } }
	x_3 { ap_memory {  { x_3_address0 mem_address 1 1 }  { x_3_ce0 mem_ce 1 1 }  { x_3_q0 in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
