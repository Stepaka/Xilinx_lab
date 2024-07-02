set moduleName lab7_z4
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
set C_modelName {lab7_z4}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0 int 256 regular {array 32 { 0 3 } 0 1 }  }
	{ a_1 int 256 regular {array 32 { 0 3 } 0 1 }  }
	{ a_2 int 256 regular {array 32 { 0 3 } 0 1 }  }
	{ a_3 int 256 regular {array 32 { 0 3 } 0 1 }  }
	{ b_0 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ b_1 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ b_2 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ b_3 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ c_0 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ c_1 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ c_2 int 256 regular {array 32 { 1 3 } 1 1 }  }
	{ c_3 int 256 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_2", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_3", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "c_2", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "c_3", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0_address0 sc_out sc_lv 5 signal 0 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_0_we0 sc_out sc_logic 1 signal 0 } 
	{ a_0_d0 sc_out sc_lv 256 signal 0 } 
	{ a_1_address0 sc_out sc_lv 5 signal 1 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_1_we0 sc_out sc_logic 1 signal 1 } 
	{ a_1_d0 sc_out sc_lv 256 signal 1 } 
	{ a_2_address0 sc_out sc_lv 5 signal 2 } 
	{ a_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_2_we0 sc_out sc_logic 1 signal 2 } 
	{ a_2_d0 sc_out sc_lv 256 signal 2 } 
	{ a_3_address0 sc_out sc_lv 5 signal 3 } 
	{ a_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_3_we0 sc_out sc_logic 1 signal 3 } 
	{ a_3_d0 sc_out sc_lv 256 signal 3 } 
	{ b_0_address0 sc_out sc_lv 5 signal 4 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_0_q0 sc_in sc_lv 256 signal 4 } 
	{ b_1_address0 sc_out sc_lv 5 signal 5 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_1_q0 sc_in sc_lv 256 signal 5 } 
	{ b_2_address0 sc_out sc_lv 5 signal 6 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ b_2_q0 sc_in sc_lv 256 signal 6 } 
	{ b_3_address0 sc_out sc_lv 5 signal 7 } 
	{ b_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ b_3_q0 sc_in sc_lv 256 signal 7 } 
	{ c_0_address0 sc_out sc_lv 5 signal 8 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ c_0_q0 sc_in sc_lv 256 signal 8 } 
	{ c_1_address0 sc_out sc_lv 5 signal 9 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ c_1_q0 sc_in sc_lv 256 signal 9 } 
	{ c_2_address0 sc_out sc_lv 5 signal 10 } 
	{ c_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ c_2_q0 sc_in sc_lv 256 signal 10 } 
	{ c_3_address0 sc_out sc_lv 5 signal 11 } 
	{ c_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ c_3_q0 sc_in sc_lv 256 signal 11 } 
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
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "we0" }} , 
 	{ "name": "a_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_0", "role": "d0" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "we0" }} , 
 	{ "name": "a_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_1", "role": "d0" }} , 
 	{ "name": "a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_2", "role": "address0" }} , 
 	{ "name": "a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce0" }} , 
 	{ "name": "a_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "we0" }} , 
 	{ "name": "a_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_2", "role": "d0" }} , 
 	{ "name": "a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_3", "role": "address0" }} , 
 	{ "name": "a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "ce0" }} , 
 	{ "name": "a_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "we0" }} , 
 	{ "name": "a_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_3", "role": "d0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "b_2", "role": "q0" }} , 
 	{ "name": "b_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_3", "role": "address0" }} , 
 	{ "name": "b_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce0" }} , 
 	{ "name": "b_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "b_3", "role": "q0" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "c_0", "role": "q0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "c_1", "role": "q0" }} , 
 	{ "name": "c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_2", "role": "address0" }} , 
 	{ "name": "c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce0" }} , 
 	{ "name": "c_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "c_2", "role": "q0" }} , 
 	{ "name": "c_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_3", "role": "address0" }} , 
 	{ "name": "c_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce0" }} , 
 	{ "name": "c_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "c_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "lab7_z4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Mult", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_2_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_2_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_2_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_2_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lab7_z4 {
		a_0 {Type O LastRead -1 FirstWrite 2}
		a_1 {Type O LastRead -1 FirstWrite 2}
		a_2 {Type O LastRead -1 FirstWrite 2}
		a_3 {Type O LastRead -1 FirstWrite 2}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_2 {Type I LastRead 0 FirstWrite -1}
		b_3 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		c_2 {Type I LastRead 0 FirstWrite -1}
		c_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_memory {  { a_0_address0 mem_address 1 5 }  { a_0_ce0 mem_ce 1 1 }  { a_0_we0 mem_we 1 1 }  { a_0_d0 mem_din 1 256 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 5 }  { a_1_ce0 mem_ce 1 1 }  { a_1_we0 mem_we 1 1 }  { a_1_d0 mem_din 1 256 } } }
	a_2 { ap_memory {  { a_2_address0 mem_address 1 5 }  { a_2_ce0 mem_ce 1 1 }  { a_2_we0 mem_we 1 1 }  { a_2_d0 mem_din 1 256 } } }
	a_3 { ap_memory {  { a_3_address0 mem_address 1 5 }  { a_3_ce0 mem_ce 1 1 }  { a_3_we0 mem_we 1 1 }  { a_3_d0 mem_din 1 256 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 5 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 in_data 0 256 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 5 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 256 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 5 }  { b_2_ce0 mem_ce 1 1 }  { b_2_q0 in_data 0 256 } } }
	b_3 { ap_memory {  { b_3_address0 mem_address 1 5 }  { b_3_ce0 mem_ce 1 1 }  { b_3_q0 in_data 0 256 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 5 }  { c_0_ce0 mem_ce 1 1 }  { c_0_q0 in_data 0 256 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 5 }  { c_1_ce0 mem_ce 1 1 }  { c_1_q0 in_data 0 256 } } }
	c_2 { ap_memory {  { c_2_address0 mem_address 1 5 }  { c_2_ce0 mem_ce 1 1 }  { c_2_q0 in_data 0 256 } } }
	c_3 { ap_memory {  { c_3_address0 mem_address 1 5 }  { c_3_ce0 mem_ce 1 1 }  { c_3_q0 in_data 0 256 } } }
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
