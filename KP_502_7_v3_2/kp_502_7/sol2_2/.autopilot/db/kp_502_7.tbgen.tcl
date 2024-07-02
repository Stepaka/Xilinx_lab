set moduleName kp_502_7
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
set C_modelName {kp_502_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ A_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ B_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ B_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ C_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ C_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ X1_0 int 32 regular {array 4 { 0 } 0 1 }  }
	{ X1_1 int 32 regular {array 4 { 0 } 0 1 }  }
	{ X2_0 int 32 regular {array 4 { 0 } 0 1 }  }
	{ X2_1 int 32 regular {array 4 { 0 } 0 1 }  }
	{ D_0 int 32 regular {array 4 { 0 } 0 1 }  }
	{ D_1 int 32 regular {array 4 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_address0 sc_out sc_lv 2 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 32 signal 0 } 
	{ A_1_address0 sc_out sc_lv 2 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 32 signal 1 } 
	{ B_0_address0 sc_out sc_lv 2 signal 2 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_0_q0 sc_in sc_lv 32 signal 2 } 
	{ B_1_address0 sc_out sc_lv 2 signal 3 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_1_q0 sc_in sc_lv 32 signal 3 } 
	{ C_0_address0 sc_out sc_lv 2 signal 4 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_0_q0 sc_in sc_lv 32 signal 4 } 
	{ C_1_address0 sc_out sc_lv 2 signal 5 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_1_q0 sc_in sc_lv 32 signal 5 } 
	{ X1_0_address0 sc_out sc_lv 2 signal 6 } 
	{ X1_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ X1_0_we0 sc_out sc_logic 1 signal 6 } 
	{ X1_0_d0 sc_out sc_lv 32 signal 6 } 
	{ X1_1_address0 sc_out sc_lv 2 signal 7 } 
	{ X1_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ X1_1_we0 sc_out sc_logic 1 signal 7 } 
	{ X1_1_d0 sc_out sc_lv 32 signal 7 } 
	{ X2_0_address0 sc_out sc_lv 2 signal 8 } 
	{ X2_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ X2_0_we0 sc_out sc_logic 1 signal 8 } 
	{ X2_0_d0 sc_out sc_lv 32 signal 8 } 
	{ X2_1_address0 sc_out sc_lv 2 signal 9 } 
	{ X2_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ X2_1_we0 sc_out sc_logic 1 signal 9 } 
	{ X2_1_d0 sc_out sc_lv 32 signal 9 } 
	{ D_0_address0 sc_out sc_lv 2 signal 10 } 
	{ D_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_0_we0 sc_out sc_logic 1 signal 10 } 
	{ D_0_d0 sc_out sc_lv 32 signal 10 } 
	{ D_1_address0 sc_out sc_lv 2 signal 11 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_1_we0 sc_out sc_logic 1 signal 11 } 
	{ D_1_d0 sc_out sc_lv 32 signal 11 } 
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
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0", "role": "q0" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "q0" }} , 
 	{ "name": "X1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X1_0", "role": "address0" }} , 
 	{ "name": "X1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "ce0" }} , 
 	{ "name": "X1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "we0" }} , 
 	{ "name": "X1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_0", "role": "d0" }} , 
 	{ "name": "X1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X1_1", "role": "address0" }} , 
 	{ "name": "X1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "ce0" }} , 
 	{ "name": "X1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "we0" }} , 
 	{ "name": "X1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_1", "role": "d0" }} , 
 	{ "name": "X2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X2_0", "role": "address0" }} , 
 	{ "name": "X2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "ce0" }} , 
 	{ "name": "X2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "we0" }} , 
 	{ "name": "X2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_0", "role": "d0" }} , 
 	{ "name": "X2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X2_1", "role": "address0" }} , 
 	{ "name": "X2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "ce0" }} , 
 	{ "name": "X2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "we0" }} , 
 	{ "name": "X2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_1", "role": "d0" }} , 
 	{ "name": "D_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "D_0", "role": "address0" }} , 
 	{ "name": "D_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "ce0" }} , 
 	{ "name": "D_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "we0" }} , 
 	{ "name": "D_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_0", "role": "d0" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we0" }} , 
 	{ "name": "D_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "kp_502_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "445",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "184", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state148"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_32_32_s_fu_306", "Parent" : "0",
		"CDFG" : "sqrt_fixed_32_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32s_32ns_32_36_seq_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32s_32ns_32_36_seq_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_7 {
		A_0 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type I LastRead 56 FirstWrite -1}
		B_0 {Type I LastRead 1 FirstWrite -1}
		B_1 {Type I LastRead 56 FirstWrite -1}
		C_0 {Type I LastRead 1 FirstWrite -1}
		C_1 {Type I LastRead 56 FirstWrite -1}
		X1_0 {Type O LastRead -1 FirstWrite 6}
		X1_1 {Type O LastRead -1 FirstWrite 61}
		X2_0 {Type O LastRead -1 FirstWrite 6}
		X2_1 {Type O LastRead -1 FirstWrite 61}
		D_0 {Type O LastRead -1 FirstWrite 6}
		D_1 {Type O LastRead -1 FirstWrite 61}}
	sqrt_fixed_32_32_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "53", "Max" : "445"}
	, {"Name" : "Interval", "Min" : "54", "Max" : "446"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 2 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 2 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 32 } } }
	B_0 { ap_memory {  { B_0_address0 mem_address 1 2 }  { B_0_ce0 mem_ce 1 1 }  { B_0_q0 mem_dout 0 32 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 2 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 32 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 2 }  { C_0_ce0 mem_ce 1 1 }  { C_0_q0 mem_dout 0 32 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 2 }  { C_1_ce0 mem_ce 1 1 }  { C_1_q0 mem_dout 0 32 } } }
	X1_0 { ap_memory {  { X1_0_address0 mem_address 1 2 }  { X1_0_ce0 mem_ce 1 1 }  { X1_0_we0 mem_we 1 1 }  { X1_0_d0 mem_din 1 32 } } }
	X1_1 { ap_memory {  { X1_1_address0 mem_address 1 2 }  { X1_1_ce0 mem_ce 1 1 }  { X1_1_we0 mem_we 1 1 }  { X1_1_d0 mem_din 1 32 } } }
	X2_0 { ap_memory {  { X2_0_address0 mem_address 1 2 }  { X2_0_ce0 mem_ce 1 1 }  { X2_0_we0 mem_we 1 1 }  { X2_0_d0 mem_din 1 32 } } }
	X2_1 { ap_memory {  { X2_1_address0 mem_address 1 2 }  { X2_1_ce0 mem_ce 1 1 }  { X2_1_we0 mem_we 1 1 }  { X2_1_d0 mem_din 1 32 } } }
	D_0 { ap_memory {  { D_0_address0 mem_address 1 2 }  { D_0_ce0 mem_ce 1 1 }  { D_0_we0 mem_we 1 1 }  { D_0_d0 mem_din 1 32 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 2 }  { D_1_ce0 mem_ce 1 1 }  { D_1_we0 mem_we 1 1 }  { D_1_d0 mem_din 1 32 } } }
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
