set moduleName lab5_z1
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
set C_modelName {lab5_z1}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_in_0 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ d_in_1 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ d_in_2 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ d_in_3 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ d_out int 16 regular {array 128 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_in_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_in_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_in_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_in_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_out", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ d_in_0_address0 sc_out sc_lv 7 signal 0 } 
	{ d_in_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ d_in_0_q0 sc_in sc_lv 16 signal 0 } 
	{ d_in_0_address1 sc_out sc_lv 7 signal 0 } 
	{ d_in_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ d_in_0_q1 sc_in sc_lv 16 signal 0 } 
	{ d_in_1_address0 sc_out sc_lv 7 signal 1 } 
	{ d_in_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ d_in_1_q0 sc_in sc_lv 16 signal 1 } 
	{ d_in_1_address1 sc_out sc_lv 7 signal 1 } 
	{ d_in_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ d_in_1_q1 sc_in sc_lv 16 signal 1 } 
	{ d_in_2_address0 sc_out sc_lv 7 signal 2 } 
	{ d_in_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ d_in_2_q0 sc_in sc_lv 16 signal 2 } 
	{ d_in_2_address1 sc_out sc_lv 7 signal 2 } 
	{ d_in_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ d_in_2_q1 sc_in sc_lv 16 signal 2 } 
	{ d_in_3_address0 sc_out sc_lv 7 signal 3 } 
	{ d_in_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ d_in_3_q0 sc_in sc_lv 16 signal 3 } 
	{ d_in_3_address1 sc_out sc_lv 7 signal 3 } 
	{ d_in_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ d_in_3_q1 sc_in sc_lv 16 signal 3 } 
	{ d_out_address0 sc_out sc_lv 7 signal 4 } 
	{ d_out_ce0 sc_out sc_logic 1 signal 4 } 
	{ d_out_we0 sc_out sc_logic 1 signal 4 } 
	{ d_out_d0 sc_out sc_lv 16 signal 4 } 
	{ d_out_address1 sc_out sc_lv 7 signal 4 } 
	{ d_out_ce1 sc_out sc_logic 1 signal 4 } 
	{ d_out_we1 sc_out sc_logic 1 signal 4 } 
	{ d_out_d1 sc_out sc_lv 16 signal 4 } 
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
 	{ "name": "d_in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_0", "role": "address0" }} , 
 	{ "name": "d_in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_0", "role": "ce0" }} , 
 	{ "name": "d_in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_0", "role": "q0" }} , 
 	{ "name": "d_in_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_0", "role": "address1" }} , 
 	{ "name": "d_in_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_0", "role": "ce1" }} , 
 	{ "name": "d_in_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_0", "role": "q1" }} , 
 	{ "name": "d_in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_1", "role": "address0" }} , 
 	{ "name": "d_in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_1", "role": "ce0" }} , 
 	{ "name": "d_in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_1", "role": "q0" }} , 
 	{ "name": "d_in_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_1", "role": "address1" }} , 
 	{ "name": "d_in_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_1", "role": "ce1" }} , 
 	{ "name": "d_in_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_1", "role": "q1" }} , 
 	{ "name": "d_in_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_2", "role": "address0" }} , 
 	{ "name": "d_in_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_2", "role": "ce0" }} , 
 	{ "name": "d_in_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_2", "role": "q0" }} , 
 	{ "name": "d_in_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_2", "role": "address1" }} , 
 	{ "name": "d_in_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_2", "role": "ce1" }} , 
 	{ "name": "d_in_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_2", "role": "q1" }} , 
 	{ "name": "d_in_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_3", "role": "address0" }} , 
 	{ "name": "d_in_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_3", "role": "ce0" }} , 
 	{ "name": "d_in_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_3", "role": "q0" }} , 
 	{ "name": "d_in_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_in_3", "role": "address1" }} , 
 	{ "name": "d_in_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_in_3", "role": "ce1" }} , 
 	{ "name": "d_in_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_in_3", "role": "q1" }} , 
 	{ "name": "d_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_out", "role": "address0" }} , 
 	{ "name": "d_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "ce0" }} , 
 	{ "name": "d_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "we0" }} , 
 	{ "name": "d_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_out", "role": "d0" }} , 
 	{ "name": "d_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_out", "role": "address1" }} , 
 	{ "name": "d_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "ce1" }} , 
 	{ "name": "d_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "we1" }} , 
 	{ "name": "d_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_out", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "lab5_z1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_in_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_in_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "foo_label0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_22_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_16_1_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lab5_z1 {
		d_in_0 {Type I LastRead 2 FirstWrite -1}
		d_in_1 {Type I LastRead 2 FirstWrite -1}
		d_in_2 {Type I LastRead 2 FirstWrite -1}
		d_in_3 {Type I LastRead 2 FirstWrite -1}
		d_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129", "Max" : "129"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_in_0 { ap_memory {  { d_in_0_address0 mem_address 1 7 }  { d_in_0_ce0 mem_ce 1 1 }  { d_in_0_q0 in_data 0 16 }  { d_in_0_address1 MemPortADDR2 1 7 }  { d_in_0_ce1 MemPortCE2 1 1 }  { d_in_0_q1 in_data 0 16 } } }
	d_in_1 { ap_memory {  { d_in_1_address0 mem_address 1 7 }  { d_in_1_ce0 mem_ce 1 1 }  { d_in_1_q0 in_data 0 16 }  { d_in_1_address1 MemPortADDR2 1 7 }  { d_in_1_ce1 MemPortCE2 1 1 }  { d_in_1_q1 in_data 0 16 } } }
	d_in_2 { ap_memory {  { d_in_2_address0 mem_address 1 7 }  { d_in_2_ce0 mem_ce 1 1 }  { d_in_2_q0 in_data 0 16 }  { d_in_2_address1 MemPortADDR2 1 7 }  { d_in_2_ce1 MemPortCE2 1 1 }  { d_in_2_q1 in_data 0 16 } } }
	d_in_3 { ap_memory {  { d_in_3_address0 mem_address 1 7 }  { d_in_3_ce0 mem_ce 1 1 }  { d_in_3_q0 in_data 0 16 }  { d_in_3_address1 MemPortADDR2 1 7 }  { d_in_3_ce1 MemPortCE2 1 1 }  { d_in_3_q1 in_data 0 16 } } }
	d_out { ap_memory {  { d_out_address0 mem_address 1 7 }  { d_out_ce0 mem_ce 1 1 }  { d_out_we0 mem_we 1 1 }  { d_out_d0 mem_din 1 16 }  { d_out_address1 MemPortADDR2 1 7 }  { d_out_ce1 MemPortCE2 1 1 }  { d_out_we1 MemPortWE2 1 1 }  { d_out_d1 MemPortDIN2 1 16 } } }
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
