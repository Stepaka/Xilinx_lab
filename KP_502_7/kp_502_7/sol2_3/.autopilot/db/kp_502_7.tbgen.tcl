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
	{ A_0 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ A_1 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ B_0 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ B_1 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ C_0 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ C_1 int 64 regular {array 4 { 1 3 } 1 1 }  }
	{ X1_0 int 64 regular {array 4 { 0 3 } 0 1 }  }
	{ X1_1 int 64 regular {array 4 { 0 3 } 0 1 }  }
	{ X2_0 int 64 regular {array 4 { 0 3 } 0 1 }  }
	{ X2_1 int 64 regular {array 4 { 0 3 } 0 1 }  }
	{ D_0 int 64 regular {array 4 { 0 3 } 0 1 }  }
	{ D_1 int 64 regular {array 4 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "X1_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
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
	{ A_0_q0 sc_in sc_lv 64 signal 0 } 
	{ A_1_address0 sc_out sc_lv 2 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 64 signal 1 } 
	{ B_0_address0 sc_out sc_lv 2 signal 2 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_0_q0 sc_in sc_lv 64 signal 2 } 
	{ B_1_address0 sc_out sc_lv 2 signal 3 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_1_q0 sc_in sc_lv 64 signal 3 } 
	{ C_0_address0 sc_out sc_lv 2 signal 4 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_0_q0 sc_in sc_lv 64 signal 4 } 
	{ C_1_address0 sc_out sc_lv 2 signal 5 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_1_q0 sc_in sc_lv 64 signal 5 } 
	{ X1_0_address0 sc_out sc_lv 2 signal 6 } 
	{ X1_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ X1_0_we0 sc_out sc_logic 1 signal 6 } 
	{ X1_0_d0 sc_out sc_lv 64 signal 6 } 
	{ X1_1_address0 sc_out sc_lv 2 signal 7 } 
	{ X1_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ X1_1_we0 sc_out sc_logic 1 signal 7 } 
	{ X1_1_d0 sc_out sc_lv 64 signal 7 } 
	{ X2_0_address0 sc_out sc_lv 2 signal 8 } 
	{ X2_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ X2_0_we0 sc_out sc_logic 1 signal 8 } 
	{ X2_0_d0 sc_out sc_lv 64 signal 8 } 
	{ X2_1_address0 sc_out sc_lv 2 signal 9 } 
	{ X2_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ X2_1_we0 sc_out sc_logic 1 signal 9 } 
	{ X2_1_d0 sc_out sc_lv 64 signal 9 } 
	{ D_0_address0 sc_out sc_lv 2 signal 10 } 
	{ D_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ D_0_we0 sc_out sc_logic 1 signal 10 } 
	{ D_0_d0 sc_out sc_lv 64 signal 10 } 
	{ D_1_address0 sc_out sc_lv 2 signal 11 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ D_1_we0 sc_out sc_logic 1 signal 11 } 
	{ D_1_d0 sc_out sc_lv 64 signal 11 } 
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
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_0", "role": "q0" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_1", "role": "q0" }} , 
 	{ "name": "X1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X1_0", "role": "address0" }} , 
 	{ "name": "X1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "ce0" }} , 
 	{ "name": "X1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "we0" }} , 
 	{ "name": "X1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X1_0", "role": "d0" }} , 
 	{ "name": "X1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X1_1", "role": "address0" }} , 
 	{ "name": "X1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "ce0" }} , 
 	{ "name": "X1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "we0" }} , 
 	{ "name": "X1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X1_1", "role": "d0" }} , 
 	{ "name": "X2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X2_0", "role": "address0" }} , 
 	{ "name": "X2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "ce0" }} , 
 	{ "name": "X2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "we0" }} , 
 	{ "name": "X2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X2_0", "role": "d0" }} , 
 	{ "name": "X2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X2_1", "role": "address0" }} , 
 	{ "name": "X2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "ce0" }} , 
 	{ "name": "X2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "we0" }} , 
 	{ "name": "X2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X2_1", "role": "d0" }} , 
 	{ "name": "D_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "D_0", "role": "address0" }} , 
 	{ "name": "D_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "ce0" }} , 
 	{ "name": "D_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "we0" }} , 
 	{ "name": "D_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D_0", "role": "d0" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we0" }} , 
 	{ "name": "D_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "kp_502_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "485",
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
				"LoopDec" : {"FSMBitwidth" : "166", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state144"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
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
		A_0 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type I LastRead 61 FirstWrite -1}
		B_0 {Type I LastRead 5 FirstWrite -1}
		B_1 {Type I LastRead 65 FirstWrite -1}
		C_0 {Type I LastRead 5 FirstWrite -1}
		C_1 {Type I LastRead 65 FirstWrite -1}
		X1_0 {Type O LastRead -1 FirstWrite 16}
		X1_1 {Type O LastRead -1 FirstWrite 76}
		X2_0 {Type O LastRead -1 FirstWrite 16}
		X2_1 {Type O LastRead -1 FirstWrite 76}
		D_0 {Type O LastRead -1 FirstWrite 16}
		D_1 {Type O LastRead -1 FirstWrite 75}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "485"}
	, {"Name" : "Interval", "Min" : "134", "Max" : "486"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 2 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 64 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 2 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 64 } } }
	B_0 { ap_memory {  { B_0_address0 mem_address 1 2 }  { B_0_ce0 mem_ce 1 1 }  { B_0_q0 mem_dout 0 64 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 2 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 64 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 2 }  { C_0_ce0 mem_ce 1 1 }  { C_0_q0 mem_dout 0 64 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 2 }  { C_1_ce0 mem_ce 1 1 }  { C_1_q0 mem_dout 0 64 } } }
	X1_0 { ap_memory {  { X1_0_address0 mem_address 1 2 }  { X1_0_ce0 mem_ce 1 1 }  { X1_0_we0 mem_we 1 1 }  { X1_0_d0 mem_din 1 64 } } }
	X1_1 { ap_memory {  { X1_1_address0 mem_address 1 2 }  { X1_1_ce0 mem_ce 1 1 }  { X1_1_we0 mem_we 1 1 }  { X1_1_d0 mem_din 1 64 } } }
	X2_0 { ap_memory {  { X2_0_address0 mem_address 1 2 }  { X2_0_ce0 mem_ce 1 1 }  { X2_0_we0 mem_we 1 1 }  { X2_0_d0 mem_din 1 64 } } }
	X2_1 { ap_memory {  { X2_1_address0 mem_address 1 2 }  { X2_1_ce0 mem_ce 1 1 }  { X2_1_we0 mem_we 1 1 }  { X2_1_d0 mem_din 1 64 } } }
	D_0 { ap_memory {  { D_0_address0 mem_address 1 2 }  { D_0_ce0 mem_ce 1 1 }  { D_0_we0 mem_we 1 1 }  { D_0_d0 mem_din 1 64 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 2 }  { D_1_ce0 mem_ce 1 1 }  { D_1_we0 mem_we 1 1 }  { D_1_d0 mem_din 1 64 } } }
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
