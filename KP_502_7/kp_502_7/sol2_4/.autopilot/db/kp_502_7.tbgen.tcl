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
	{ A int 128 regular {array 4 { 1 3 } 1 1 }  }
	{ B int 128 regular {array 4 { 1 3 } 1 1 }  }
	{ C int 128 regular {array 4 { 1 3 } 1 1 }  }
	{ X1 int 128 regular {array 4 { 2 3 } 1 1 }  }
	{ X2 int 128 regular {array 4 { 2 3 } 1 1 }  }
	{ D int 128 regular {array 4 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "X1", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "X2", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 2 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 128 signal 0 } 
	{ B_address0 sc_out sc_lv 2 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 128 signal 1 } 
	{ C_address0 sc_out sc_lv 2 signal 2 } 
	{ C_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_q0 sc_in sc_lv 128 signal 2 } 
	{ X1_address0 sc_out sc_lv 2 signal 3 } 
	{ X1_ce0 sc_out sc_logic 1 signal 3 } 
	{ X1_we0 sc_out sc_logic 1 signal 3 } 
	{ X1_d0 sc_out sc_lv 128 signal 3 } 
	{ X1_q0 sc_in sc_lv 128 signal 3 } 
	{ X2_address0 sc_out sc_lv 2 signal 4 } 
	{ X2_ce0 sc_out sc_logic 1 signal 4 } 
	{ X2_we0 sc_out sc_logic 1 signal 4 } 
	{ X2_d0 sc_out sc_lv 128 signal 4 } 
	{ X2_q0 sc_in sc_lv 128 signal 4 } 
	{ D_address0 sc_out sc_lv 2 signal 5 } 
	{ D_ce0 sc_out sc_logic 1 signal 5 } 
	{ D_we0 sc_out sc_logic 1 signal 5 } 
	{ D_d0 sc_out sc_lv 128 signal 5 } 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "X1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X1", "role": "address0" }} , 
 	{ "name": "X1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1", "role": "ce0" }} , 
 	{ "name": "X1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1", "role": "we0" }} , 
 	{ "name": "X1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "X1", "role": "d0" }} , 
 	{ "name": "X1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "X1", "role": "q0" }} , 
 	{ "name": "X2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X2", "role": "address0" }} , 
 	{ "name": "X2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2", "role": "ce0" }} , 
 	{ "name": "X2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2", "role": "we0" }} , 
 	{ "name": "X2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "X2", "role": "d0" }} , 
 	{ "name": "X2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "X2", "role": "q0" }} , 
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "D", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "kp_502_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "123", "EstimateLatencyMax" : "475",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "X2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "D", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "326", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state304"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_4_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_21_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_21_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_17_no_dsp_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_7 {
		A {Type I LastRead 119 FirstWrite -1}
		B {Type I LastRead 123 FirstWrite -1}
		C {Type I LastRead 123 FirstWrite -1}
		X1 {Type IO LastRead 191 FirstWrite 16}
		X2 {Type IO LastRead 191 FirstWrite 16}
		D {Type O LastRead -1 FirstWrite 73}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "123", "Max" : "475"}
	, {"Name" : "Interval", "Min" : "124", "Max" : "476"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 2 }  { A_ce0 mem_ce 1 1 }  { A_q0 in_data 0 128 } } }
	B { ap_memory {  { B_address0 mem_address 1 2 }  { B_ce0 mem_ce 1 1 }  { B_q0 in_data 0 128 } } }
	C { ap_memory {  { C_address0 mem_address 1 2 }  { C_ce0 mem_ce 1 1 }  { C_q0 in_data 0 128 } } }
	X1 { ap_memory {  { X1_address0 mem_address 1 2 }  { X1_ce0 mem_ce 1 1 }  { X1_we0 mem_we 1 1 }  { X1_d0 mem_din 1 128 }  { X1_q0 in_data 0 128 } } }
	X2 { ap_memory {  { X2_address0 mem_address 1 2 }  { X2_ce0 mem_ce 1 1 }  { X2_we0 mem_we 1 1 }  { X2_d0 mem_din 1 128 }  { X2_q0 in_data 0 128 } } }
	D { ap_memory {  { D_address0 mem_address 1 2 }  { D_ce0 mem_ce 1 1 }  { D_we0 mem_we 1 1 }  { D_d0 mem_din 1 128 } } }
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
