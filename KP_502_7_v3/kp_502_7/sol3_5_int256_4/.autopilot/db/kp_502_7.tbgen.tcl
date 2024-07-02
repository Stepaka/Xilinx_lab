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
	{ A_0 int 256 regular {pointer 0}  }
	{ A_1 int 256 regular {pointer 0}  }
	{ A_2 int 256 regular {pointer 0}  }
	{ A_3 int 256 regular {pointer 0}  }
	{ B_0 int 256 regular {pointer 0}  }
	{ B_1 int 256 regular {pointer 0}  }
	{ B_2 int 256 regular {pointer 0}  }
	{ B_3 int 256 regular {pointer 0}  }
	{ C_0 int 256 regular {pointer 0}  }
	{ C_1 int 256 regular {pointer 0}  }
	{ C_2 int 256 regular {pointer 0}  }
	{ C_3 int 256 regular {pointer 0}  }
	{ X1_0 int 256 regular {pointer 1}  }
	{ X1_1 int 256 regular {pointer 1}  }
	{ X1_2 int 256 regular {pointer 1}  }
	{ X1_3 int 256 regular {pointer 1}  }
	{ X2_0 int 256 regular {pointer 1}  }
	{ X2_1 int 256 regular {pointer 1}  }
	{ X2_2 int 256 regular {pointer 1}  }
	{ X2_3 int 256 regular {pointer 1}  }
	{ D_0 int 256 regular {pointer 1}  }
	{ D_1 int 256 regular {pointer 1}  }
	{ D_2 int 256 regular {pointer 1}  }
	{ D_3 int 256 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "C_1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "C_2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "C_3", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "X1_0", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_1", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_2", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_3", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_0", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_1", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_2", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_3", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_0", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_1", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_2", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_3", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0 sc_in sc_lv 256 signal 0 } 
	{ A_1 sc_in sc_lv 256 signal 1 } 
	{ A_2 sc_in sc_lv 256 signal 2 } 
	{ A_3 sc_in sc_lv 256 signal 3 } 
	{ B_0 sc_in sc_lv 256 signal 4 } 
	{ B_1 sc_in sc_lv 256 signal 5 } 
	{ B_2 sc_in sc_lv 256 signal 6 } 
	{ B_3 sc_in sc_lv 256 signal 7 } 
	{ C_0 sc_in sc_lv 256 signal 8 } 
	{ C_1 sc_in sc_lv 256 signal 9 } 
	{ C_2 sc_in sc_lv 256 signal 10 } 
	{ C_3 sc_in sc_lv 256 signal 11 } 
	{ X1_0 sc_out sc_lv 256 signal 12 } 
	{ X1_0_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ X1_1 sc_out sc_lv 256 signal 13 } 
	{ X1_1_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ X1_2 sc_out sc_lv 256 signal 14 } 
	{ X1_2_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ X1_3 sc_out sc_lv 256 signal 15 } 
	{ X1_3_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ X2_0 sc_out sc_lv 256 signal 16 } 
	{ X2_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ X2_1 sc_out sc_lv 256 signal 17 } 
	{ X2_1_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ X2_2 sc_out sc_lv 256 signal 18 } 
	{ X2_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ X2_3 sc_out sc_lv 256 signal 19 } 
	{ X2_3_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ D_0 sc_out sc_lv 256 signal 20 } 
	{ D_0_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ D_1 sc_out sc_lv 256 signal 21 } 
	{ D_1_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ D_2 sc_out sc_lv 256 signal 22 } 
	{ D_2_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ D_3 sc_out sc_lv 256 signal 23 } 
	{ D_3_ap_vld sc_out sc_logic 1 outvld 23 } 
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
 	{ "name": "A_0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "A_0", "role": "default" }} , 
 	{ "name": "A_1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "A_1", "role": "default" }} , 
 	{ "name": "A_2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "A_2", "role": "default" }} , 
 	{ "name": "A_3", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "A_3", "role": "default" }} , 
 	{ "name": "B_0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "B_0", "role": "default" }} , 
 	{ "name": "B_1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "B_1", "role": "default" }} , 
 	{ "name": "B_2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "B_2", "role": "default" }} , 
 	{ "name": "B_3", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "B_3", "role": "default" }} , 
 	{ "name": "C_0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "C_0", "role": "default" }} , 
 	{ "name": "C_1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "C_1", "role": "default" }} , 
 	{ "name": "C_2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "C_2", "role": "default" }} , 
 	{ "name": "C_3", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "C_3", "role": "default" }} , 
 	{ "name": "X1_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X1_0", "role": "default" }} , 
 	{ "name": "X1_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X1_0", "role": "ap_vld" }} , 
 	{ "name": "X1_1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X1_1", "role": "default" }} , 
 	{ "name": "X1_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X1_1", "role": "ap_vld" }} , 
 	{ "name": "X1_2", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X1_2", "role": "default" }} , 
 	{ "name": "X1_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X1_2", "role": "ap_vld" }} , 
 	{ "name": "X1_3", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X1_3", "role": "default" }} , 
 	{ "name": "X1_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X1_3", "role": "ap_vld" }} , 
 	{ "name": "X2_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X2_0", "role": "default" }} , 
 	{ "name": "X2_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X2_0", "role": "ap_vld" }} , 
 	{ "name": "X2_1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X2_1", "role": "default" }} , 
 	{ "name": "X2_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X2_1", "role": "ap_vld" }} , 
 	{ "name": "X2_2", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X2_2", "role": "default" }} , 
 	{ "name": "X2_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X2_2", "role": "ap_vld" }} , 
 	{ "name": "X2_3", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X2_3", "role": "default" }} , 
 	{ "name": "X2_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "X2_3", "role": "ap_vld" }} , 
 	{ "name": "D_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "D_0", "role": "default" }} , 
 	{ "name": "D_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_0", "role": "ap_vld" }} , 
 	{ "name": "D_1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "D_1", "role": "default" }} , 
 	{ "name": "D_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_1", "role": "ap_vld" }} , 
 	{ "name": "D_2", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "D_2", "role": "default" }} , 
 	{ "name": "D_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_2", "role": "ap_vld" }} , 
 	{ "name": "D_3", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "D_3", "role": "default" }} , 
 	{ "name": "D_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_3", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "kp_502_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262", "EstimateLatencyMax" : "262",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "X1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "X2_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_3", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_3_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_254s_254s_254_3_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_257s_257ns_256_261_seq_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_3_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_254s_254s_254_3_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_257s_257ns_256_261_seq_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_3_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_254s_254s_254_3_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_257s_257ns_256_261_seq_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_3_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_254s_254s_254_3_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_257s_257ns_256_261_seq_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_256ns_256ns_256_2_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_7 {
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type I LastRead 0 FirstWrite -1}
		A_2 {Type I LastRead 0 FirstWrite -1}
		A_3 {Type I LastRead 0 FirstWrite -1}
		B_0 {Type I LastRead 0 FirstWrite -1}
		B_1 {Type I LastRead 0 FirstWrite -1}
		B_2 {Type I LastRead 0 FirstWrite -1}
		B_3 {Type I LastRead 0 FirstWrite -1}
		C_0 {Type I LastRead 0 FirstWrite -1}
		C_1 {Type I LastRead 0 FirstWrite -1}
		C_2 {Type I LastRead 0 FirstWrite -1}
		C_3 {Type I LastRead 0 FirstWrite -1}
		X1_0 {Type O LastRead -1 FirstWrite 262}
		X1_1 {Type O LastRead -1 FirstWrite 262}
		X1_2 {Type O LastRead -1 FirstWrite 262}
		X1_3 {Type O LastRead -1 FirstWrite 262}
		X2_0 {Type O LastRead -1 FirstWrite 262}
		X2_1 {Type O LastRead -1 FirstWrite 262}
		X2_2 {Type O LastRead -1 FirstWrite 262}
		X2_3 {Type O LastRead -1 FirstWrite 262}
		D_0 {Type O LastRead -1 FirstWrite 4}
		D_1 {Type O LastRead -1 FirstWrite 4}
		D_2 {Type O LastRead -1 FirstWrite 4}
		D_3 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262", "Max" : "262"}
	, {"Name" : "Interval", "Min" : "263", "Max" : "263"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_none {  { A_0 in_data 0 256 } } }
	A_1 { ap_none {  { A_1 in_data 0 256 } } }
	A_2 { ap_none {  { A_2 in_data 0 256 } } }
	A_3 { ap_none {  { A_3 in_data 0 256 } } }
	B_0 { ap_none {  { B_0 in_data 0 256 } } }
	B_1 { ap_none {  { B_1 in_data 0 256 } } }
	B_2 { ap_none {  { B_2 in_data 0 256 } } }
	B_3 { ap_none {  { B_3 in_data 0 256 } } }
	C_0 { ap_none {  { C_0 in_data 0 256 } } }
	C_1 { ap_none {  { C_1 in_data 0 256 } } }
	C_2 { ap_none {  { C_2 in_data 0 256 } } }
	C_3 { ap_none {  { C_3 in_data 0 256 } } }
	X1_0 { ap_vld {  { X1_0 out_data 1 256 }  { X1_0_ap_vld out_vld 1 1 } } }
	X1_1 { ap_vld {  { X1_1 out_data 1 256 }  { X1_1_ap_vld out_vld 1 1 } } }
	X1_2 { ap_vld {  { X1_2 out_data 1 256 }  { X1_2_ap_vld out_vld 1 1 } } }
	X1_3 { ap_vld {  { X1_3 out_data 1 256 }  { X1_3_ap_vld out_vld 1 1 } } }
	X2_0 { ap_vld {  { X2_0 out_data 1 256 }  { X2_0_ap_vld out_vld 1 1 } } }
	X2_1 { ap_vld {  { X2_1 out_data 1 256 }  { X2_1_ap_vld out_vld 1 1 } } }
	X2_2 { ap_vld {  { X2_2 out_data 1 256 }  { X2_2_ap_vld out_vld 1 1 } } }
	X2_3 { ap_vld {  { X2_3 out_data 1 256 }  { X2_3_ap_vld out_vld 1 1 } } }
	D_0 { ap_vld {  { D_0 out_data 1 256 }  { D_0_ap_vld out_vld 1 1 } } }
	D_1 { ap_vld {  { D_1 out_data 1 256 }  { D_1_ap_vld out_vld 1 1 } } }
	D_2 { ap_vld {  { D_2 out_data 1 256 }  { D_2_ap_vld out_vld 1 1 } } }
	D_3 { ap_vld {  { D_3 out_data 1 256 }  { D_3_ap_vld out_vld 1 1 } } }
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
