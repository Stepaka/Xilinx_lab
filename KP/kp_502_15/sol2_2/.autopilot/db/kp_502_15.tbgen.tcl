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
	{ r_0 int 32 regular {array 4 { 0 3 } 0 1 }  }
	{ r_1 int 32 regular {array 4 { 0 3 } 0 1 }  }
	{ a_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ a_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ b_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ b_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ c_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ c_1 int 32 regular {array 4 { 1 } 1 1 }  }
	{ x_0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ x_1 int 32 regular {array 4 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_0_address0 sc_out sc_lv 2 signal 0 } 
	{ r_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_0_we0 sc_out sc_logic 1 signal 0 } 
	{ r_0_d0 sc_out sc_lv 32 signal 0 } 
	{ r_1_address0 sc_out sc_lv 2 signal 1 } 
	{ r_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ r_1_we0 sc_out sc_logic 1 signal 1 } 
	{ r_1_d0 sc_out sc_lv 32 signal 1 } 
	{ a_0_address0 sc_out sc_lv 2 signal 2 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_0_q0 sc_in sc_lv 32 signal 2 } 
	{ a_1_address0 sc_out sc_lv 2 signal 3 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_1_q0 sc_in sc_lv 32 signal 3 } 
	{ b_0_address0 sc_out sc_lv 2 signal 4 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_0_q0 sc_in sc_lv 32 signal 4 } 
	{ b_1_address0 sc_out sc_lv 2 signal 5 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_1_q0 sc_in sc_lv 32 signal 5 } 
	{ c_0_address0 sc_out sc_lv 2 signal 6 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ c_0_q0 sc_in sc_lv 32 signal 6 } 
	{ c_1_address0 sc_out sc_lv 2 signal 7 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ c_1_q0 sc_in sc_lv 32 signal 7 } 
	{ x_0_address0 sc_out sc_lv 2 signal 8 } 
	{ x_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_0_q0 sc_in sc_lv 32 signal 8 } 
	{ x_1_address0 sc_out sc_lv 2 signal 9 } 
	{ x_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_1_q0 sc_in sc_lv 32 signal 9 } 
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
 	{ "name": "r_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "r_0", "role": "address0" }} , 
 	{ "name": "r_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_0", "role": "ce0" }} , 
 	{ "name": "r_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_0", "role": "we0" }} , 
 	{ "name": "r_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_0", "role": "d0" }} , 
 	{ "name": "r_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "r_1", "role": "address0" }} , 
 	{ "name": "r_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_1", "role": "ce0" }} , 
 	{ "name": "r_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_1", "role": "we0" }} , 
 	{ "name": "r_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_1", "role": "d0" }} , 
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "q0" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "q0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "q0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "q0" }} , 
 	{ "name": "x_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_0", "role": "address0" }} , 
 	{ "name": "x_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "ce0" }} , 
 	{ "name": "x_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "q0" }} , 
 	{ "name": "x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_1", "role": "address0" }} , 
 	{ "name": "x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "ce0" }} , 
 	{ "name": "x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "kp_502_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_15 {
		r_0 {Type O LastRead -1 FirstWrite 3}
		r_1 {Type O LastRead -1 FirstWrite 3}
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type I LastRead 2 FirstWrite -1}
		c_1 {Type I LastRead 2 FirstWrite -1}
		x_0 {Type I LastRead 1 FirstWrite -1}
		x_1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_0 { ap_memory {  { r_0_address0 mem_address 1 2 }  { r_0_ce0 mem_ce 1 1 }  { r_0_we0 mem_we 1 1 }  { r_0_d0 mem_din 1 32 } } }
	r_1 { ap_memory {  { r_1_address0 mem_address 1 2 }  { r_1_ce0 mem_ce 1 1 }  { r_1_we0 mem_we 1 1 }  { r_1_d0 mem_din 1 32 } } }
	a_0 { ap_memory {  { a_0_address0 mem_address 1 2 }  { a_0_ce0 mem_ce 1 1 }  { a_0_q0 in_data 0 32 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 2 }  { a_1_ce0 mem_ce 1 1 }  { a_1_q0 in_data 0 32 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 2 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 in_data 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 2 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 32 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 2 }  { c_0_ce0 mem_ce 1 1 }  { c_0_q0 in_data 0 32 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 2 }  { c_1_ce0 mem_ce 1 1 }  { c_1_q0 in_data 0 32 } } }
	x_0 { ap_memory {  { x_0_address0 mem_address 1 2 }  { x_0_ce0 mem_ce 1 1 }  { x_0_q0 in_data 0 32 } } }
	x_1 { ap_memory {  { x_1_address0 mem_address 1 2 }  { x_1_ce0 mem_ce 1 1 }  { x_1_q0 in_data 0 32 } } }
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
