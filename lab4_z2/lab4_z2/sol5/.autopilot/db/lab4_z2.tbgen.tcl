set moduleName lab4_z2
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {lab4_z2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ scale int 32 regular  }
	{ data_out1 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ data_out2 int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "scale", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_out1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ data_in_address0 sc_out sc_lv 4 signal 0 } 
	{ data_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_in_d0 sc_out sc_lv 32 signal 0 } 
	{ data_in_q0 sc_in sc_lv 32 signal 0 } 
	{ data_in_we0 sc_out sc_logic 1 signal 0 } 
	{ data_in_address1 sc_out sc_lv 4 signal 0 } 
	{ data_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_in_d1 sc_out sc_lv 32 signal 0 } 
	{ data_in_q1 sc_in sc_lv 32 signal 0 } 
	{ data_in_we1 sc_out sc_logic 1 signal 0 } 
	{ scale sc_in sc_lv 32 signal 1 } 
	{ data_out1_address0 sc_out sc_lv 4 signal 2 } 
	{ data_out1_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_out1_d0 sc_out sc_lv 32 signal 2 } 
	{ data_out1_q0 sc_in sc_lv 32 signal 2 } 
	{ data_out1_we0 sc_out sc_logic 1 signal 2 } 
	{ data_out1_address1 sc_out sc_lv 4 signal 2 } 
	{ data_out1_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_out1_d1 sc_out sc_lv 32 signal 2 } 
	{ data_out1_q1 sc_in sc_lv 32 signal 2 } 
	{ data_out1_we1 sc_out sc_logic 1 signal 2 } 
	{ data_out2_address0 sc_out sc_lv 4 signal 3 } 
	{ data_out2_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_out2_d0 sc_out sc_lv 32 signal 3 } 
	{ data_out2_q0 sc_in sc_lv 32 signal 3 } 
	{ data_out2_we0 sc_out sc_logic 1 signal 3 } 
	{ data_out2_address1 sc_out sc_lv 4 signal 3 } 
	{ data_out2_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_out2_d1 sc_out sc_lv 32 signal 3 } 
	{ data_out2_q1 sc_in sc_lv 32 signal 3 } 
	{ data_out2_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "data_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in", "role": "address0" }} , 
 	{ "name": "data_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce0" }} , 
 	{ "name": "data_in_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "d0" }} , 
 	{ "name": "data_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q0" }} , 
 	{ "name": "data_in_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "we0" }} , 
 	{ "name": "data_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in", "role": "address1" }} , 
 	{ "name": "data_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce1" }} , 
 	{ "name": "data_in_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "d1" }} , 
 	{ "name": "data_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q1" }} , 
 	{ "name": "data_in_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "we1" }} , 
 	{ "name": "scale", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "default" }} , 
 	{ "name": "data_out1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out1", "role": "address0" }} , 
 	{ "name": "data_out1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "ce0" }} , 
 	{ "name": "data_out1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out1", "role": "d0" }} , 
 	{ "name": "data_out1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out1", "role": "q0" }} , 
 	{ "name": "data_out1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "we0" }} , 
 	{ "name": "data_out1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out1", "role": "address1" }} , 
 	{ "name": "data_out1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "ce1" }} , 
 	{ "name": "data_out1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out1", "role": "d1" }} , 
 	{ "name": "data_out1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out1", "role": "q1" }} , 
 	{ "name": "data_out1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "we1" }} , 
 	{ "name": "data_out2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out2", "role": "address0" }} , 
 	{ "name": "data_out2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "ce0" }} , 
 	{ "name": "data_out2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out2", "role": "d0" }} , 
 	{ "name": "data_out2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out2", "role": "q0" }} , 
 	{ "name": "data_out2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "we0" }} , 
 	{ "name": "data_out2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out2", "role": "address1" }} , 
 	{ "name": "data_out2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "ce1" }} , 
 	{ "name": "data_out2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out2", "role": "d1" }} , 
 	{ "name": "data_out2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out2", "role": "q1" }} , 
 	{ "name": "data_out2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7"],
		"CDFG" : "lab4_z2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "Loop_Loop1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "Loop_Loop2_proc_U0"},
			{"ID" : "7", "Name" : "Loop_Loop3_proc_U0"}],
		"Port" : [
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Loop_Loop1_proc_U0", "Port" : "data_in"}]},
			{"Name" : "scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_Loop2_proc_U0", "Port" : "data_out1"}]},
			{"Name" : "data_out2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Loop_Loop3_proc_U0", "Port" : "data_out2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempA1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempA2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop1_proc_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "Loop_Loop1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "tempA1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "1"},
			{"Name" : "tempA2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "2"}],
		"Loop" : [
			{"Name" : "Loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Loop1_proc_U0.mul_32s_32s_32_1_1_U1", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop2_proc_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Loop_Loop2_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tempA1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "1"},
			{"Name" : "data_out1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Loop2_proc_U0.mul_32s_6ns_32_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Loop3_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_Loop3_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tempA2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "2"},
			{"Name" : "data_out2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	lab4_z2 {
		data_in {Type I LastRead 1 FirstWrite -1}
		scale {Type I LastRead 0 FirstWrite -1}
		data_out1 {Type O LastRead -1 FirstWrite 2}
		data_out2 {Type O LastRead -1 FirstWrite 2}}
	Loop_Loop1_proc {
		data_in {Type I LastRead 1 FirstWrite -1}
		scale {Type I LastRead 0 FirstWrite -1}
		tempA1 {Type O LastRead -1 FirstWrite 2}
		tempA2 {Type O LastRead -1 FirstWrite 2}}
	Loop_Loop2_proc {
		tempA1 {Type I LastRead 1 FirstWrite -1}
		data_out1 {Type O LastRead -1 FirstWrite 2}}
	Loop_Loop3_proc {
		tempA2 {Type I LastRead 1 FirstWrite -1}
		data_out2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in { ap_memory {  { data_in_address0 mem_address 1 4 }  { data_in_ce0 mem_ce 1 1 }  { data_in_d0 mem_din 1 32 }  { data_in_q0 mem_dout 0 32 }  { data_in_we0 mem_we 1 1 }  { data_in_address1 mem_address 1 4 }  { data_in_ce1 mem_ce 1 1 }  { data_in_d1 mem_din 1 32 }  { data_in_q1 mem_dout 0 32 }  { data_in_we1 mem_we 1 1 } } }
	scale { ap_none {  { scale in_data 0 32 } } }
	data_out1 { ap_memory {  { data_out1_address0 mem_address 1 4 }  { data_out1_ce0 mem_ce 1 1 }  { data_out1_d0 mem_din 1 32 }  { data_out1_q0 mem_dout 0 32 }  { data_out1_we0 mem_we 1 1 }  { data_out1_address1 mem_address 1 4 }  { data_out1_ce1 mem_ce 1 1 }  { data_out1_d1 mem_din 1 32 }  { data_out1_q1 mem_dout 0 32 }  { data_out1_we1 mem_we 1 1 } } }
	data_out2 { ap_memory {  { data_out2_address0 mem_address 1 4 }  { data_out2_ce0 mem_ce 1 1 }  { data_out2_d0 mem_din 1 32 }  { data_out2_q0 mem_dout 0 32 }  { data_out2_we0 mem_we 1 1 }  { data_out2_address1 mem_address 1 4 }  { data_out2_ce1 mem_ce 1 1 }  { data_out2_d1 mem_din 1 32 }  { data_out2_q1 mem_dout 0 32 }  { data_out2_we1 mem_we 1 1 } } }
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
