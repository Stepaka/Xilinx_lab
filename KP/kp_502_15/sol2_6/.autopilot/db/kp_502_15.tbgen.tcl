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
	{ r_0 int 32 regular {pointer 1}  }
	{ r_1 int 32 regular {pointer 1}  }
	{ r_2 int 32 regular {pointer 1}  }
	{ r_3 int 32 regular {pointer 1}  }
	{ r_4 int 32 regular {pointer 1}  }
	{ r_5 int 32 regular {pointer 1}  }
	{ r_6 int 32 regular {pointer 1}  }
	{ r_7 int 32 regular {pointer 1}  }
	{ a_0 int 32 regular {pointer 0}  }
	{ a_1 int 32 regular {pointer 0}  }
	{ a_2 int 32 regular {pointer 0}  }
	{ a_3 int 32 regular {pointer 0}  }
	{ a_4 int 32 regular {pointer 0}  }
	{ a_5 int 32 regular {pointer 0}  }
	{ a_6 int 32 regular {pointer 0}  }
	{ a_7 int 32 regular {pointer 0}  }
	{ b_0 int 32 regular {pointer 0}  }
	{ b_1 int 32 regular {pointer 0}  }
	{ b_2 int 32 regular {pointer 0}  }
	{ b_3 int 32 regular {pointer 0}  }
	{ b_4 int 32 regular {pointer 0}  }
	{ b_5 int 32 regular {pointer 0}  }
	{ b_6 int 32 regular {pointer 0}  }
	{ b_7 int 32 regular {pointer 0}  }
	{ c_0 int 32 regular {pointer 0}  }
	{ c_1 int 32 regular {pointer 0}  }
	{ c_2 int 32 regular {pointer 0}  }
	{ c_3 int 32 regular {pointer 0}  }
	{ c_4 int 32 regular {pointer 0}  }
	{ c_5 int 32 regular {pointer 0}  }
	{ c_6 int 32 regular {pointer 0}  }
	{ c_7 int 32 regular {pointer 0}  }
	{ x_0 int 32 regular {pointer 0}  }
	{ x_1 int 32 regular {pointer 0}  }
	{ x_2 int 32 regular {pointer 0}  }
	{ x_3 int 32 regular {pointer 0}  }
	{ x_4 int 32 regular {pointer 0}  }
	{ x_5 int 32 regular {pointer 0}  }
	{ x_6 int 32 regular {pointer 0}  }
	{ x_7 int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_0 sc_out sc_lv 32 signal 0 } 
	{ r_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ r_1 sc_out sc_lv 32 signal 1 } 
	{ r_1_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ r_2 sc_out sc_lv 32 signal 2 } 
	{ r_2_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ r_3 sc_out sc_lv 32 signal 3 } 
	{ r_3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ r_4 sc_out sc_lv 32 signal 4 } 
	{ r_4_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ r_5 sc_out sc_lv 32 signal 5 } 
	{ r_5_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ r_6 sc_out sc_lv 32 signal 6 } 
	{ r_6_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ r_7 sc_out sc_lv 32 signal 7 } 
	{ r_7_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ a_0 sc_in sc_lv 32 signal 8 } 
	{ a_1 sc_in sc_lv 32 signal 9 } 
	{ a_2 sc_in sc_lv 32 signal 10 } 
	{ a_3 sc_in sc_lv 32 signal 11 } 
	{ a_4 sc_in sc_lv 32 signal 12 } 
	{ a_5 sc_in sc_lv 32 signal 13 } 
	{ a_6 sc_in sc_lv 32 signal 14 } 
	{ a_7 sc_in sc_lv 32 signal 15 } 
	{ b_0 sc_in sc_lv 32 signal 16 } 
	{ b_1 sc_in sc_lv 32 signal 17 } 
	{ b_2 sc_in sc_lv 32 signal 18 } 
	{ b_3 sc_in sc_lv 32 signal 19 } 
	{ b_4 sc_in sc_lv 32 signal 20 } 
	{ b_5 sc_in sc_lv 32 signal 21 } 
	{ b_6 sc_in sc_lv 32 signal 22 } 
	{ b_7 sc_in sc_lv 32 signal 23 } 
	{ c_0 sc_in sc_lv 32 signal 24 } 
	{ c_1 sc_in sc_lv 32 signal 25 } 
	{ c_2 sc_in sc_lv 32 signal 26 } 
	{ c_3 sc_in sc_lv 32 signal 27 } 
	{ c_4 sc_in sc_lv 32 signal 28 } 
	{ c_5 sc_in sc_lv 32 signal 29 } 
	{ c_6 sc_in sc_lv 32 signal 30 } 
	{ c_7 sc_in sc_lv 32 signal 31 } 
	{ x_0 sc_in sc_lv 32 signal 32 } 
	{ x_1 sc_in sc_lv 32 signal 33 } 
	{ x_2 sc_in sc_lv 32 signal 34 } 
	{ x_3 sc_in sc_lv 32 signal 35 } 
	{ x_4 sc_in sc_lv 32 signal 36 } 
	{ x_5 sc_in sc_lv 32 signal 37 } 
	{ x_6 sc_in sc_lv 32 signal 38 } 
	{ x_7 sc_in sc_lv 32 signal 39 } 
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
 	{ "name": "r_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_0", "role": "default" }} , 
 	{ "name": "r_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_0", "role": "ap_vld" }} , 
 	{ "name": "r_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_1", "role": "default" }} , 
 	{ "name": "r_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_1", "role": "ap_vld" }} , 
 	{ "name": "r_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_2", "role": "default" }} , 
 	{ "name": "r_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_2", "role": "ap_vld" }} , 
 	{ "name": "r_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_3", "role": "default" }} , 
 	{ "name": "r_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_3", "role": "ap_vld" }} , 
 	{ "name": "r_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_4", "role": "default" }} , 
 	{ "name": "r_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_4", "role": "ap_vld" }} , 
 	{ "name": "r_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_5", "role": "default" }} , 
 	{ "name": "r_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_5", "role": "ap_vld" }} , 
 	{ "name": "r_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_6", "role": "default" }} , 
 	{ "name": "r_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_6", "role": "ap_vld" }} , 
 	{ "name": "r_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_7", "role": "default" }} , 
 	{ "name": "r_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_7", "role": "ap_vld" }} , 
 	{ "name": "a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "default" }} , 
 	{ "name": "a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "default" }} , 
 	{ "name": "a_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_2", "role": "default" }} , 
 	{ "name": "a_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3", "role": "default" }} , 
 	{ "name": "a_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_4", "role": "default" }} , 
 	{ "name": "a_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_5", "role": "default" }} , 
 	{ "name": "a_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_6", "role": "default" }} , 
 	{ "name": "a_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_7", "role": "default" }} , 
 	{ "name": "b_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "default" }} , 
 	{ "name": "b_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "default" }} , 
 	{ "name": "b_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "default" }} , 
 	{ "name": "b_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "default" }} , 
 	{ "name": "b_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4", "role": "default" }} , 
 	{ "name": "b_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5", "role": "default" }} , 
 	{ "name": "b_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6", "role": "default" }} , 
 	{ "name": "b_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7", "role": "default" }} , 
 	{ "name": "c_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "default" }} , 
 	{ "name": "c_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "default" }} , 
 	{ "name": "c_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "default" }} , 
 	{ "name": "c_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "default" }} , 
 	{ "name": "c_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "default" }} , 
 	{ "name": "c_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "default" }} , 
 	{ "name": "c_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "default" }} , 
 	{ "name": "c_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "default" }} , 
 	{ "name": "x_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "default" }} , 
 	{ "name": "x_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "default" }} , 
 	{ "name": "x_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "default" }} , 
 	{ "name": "x_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "default" }} , 
 	{ "name": "x_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4", "role": "default" }} , 
 	{ "name": "x_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5", "role": "default" }} , 
 	{ "name": "x_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_6", "role": "default" }} , 
 	{ "name": "x_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "kp_502_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U16", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_15 {
		r_0 {Type O LastRead -1 FirstWrite 1}
		r_1 {Type O LastRead -1 FirstWrite 1}
		r_2 {Type O LastRead -1 FirstWrite 1}
		r_3 {Type O LastRead -1 FirstWrite 1}
		r_4 {Type O LastRead -1 FirstWrite 1}
		r_5 {Type O LastRead -1 FirstWrite 1}
		r_6 {Type O LastRead -1 FirstWrite 1}
		r_7 {Type O LastRead -1 FirstWrite 1}
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		a_2 {Type I LastRead 0 FirstWrite -1}
		a_3 {Type I LastRead 0 FirstWrite -1}
		a_4 {Type I LastRead 0 FirstWrite -1}
		a_5 {Type I LastRead 0 FirstWrite -1}
		a_6 {Type I LastRead 0 FirstWrite -1}
		a_7 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		b_2 {Type I LastRead 1 FirstWrite -1}
		b_3 {Type I LastRead 1 FirstWrite -1}
		b_4 {Type I LastRead 1 FirstWrite -1}
		b_5 {Type I LastRead 1 FirstWrite -1}
		b_6 {Type I LastRead 1 FirstWrite -1}
		b_7 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type I LastRead 1 FirstWrite -1}
		c_1 {Type I LastRead 1 FirstWrite -1}
		c_2 {Type I LastRead 1 FirstWrite -1}
		c_3 {Type I LastRead 1 FirstWrite -1}
		c_4 {Type I LastRead 1 FirstWrite -1}
		c_5 {Type I LastRead 1 FirstWrite -1}
		c_6 {Type I LastRead 1 FirstWrite -1}
		c_7 {Type I LastRead 1 FirstWrite -1}
		x_0 {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		x_4 {Type I LastRead 0 FirstWrite -1}
		x_5 {Type I LastRead 0 FirstWrite -1}
		x_6 {Type I LastRead 0 FirstWrite -1}
		x_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_0 { ap_vld {  { r_0 out_data 1 32 }  { r_0_ap_vld out_vld 1 1 } } }
	r_1 { ap_vld {  { r_1 out_data 1 32 }  { r_1_ap_vld out_vld 1 1 } } }
	r_2 { ap_vld {  { r_2 out_data 1 32 }  { r_2_ap_vld out_vld 1 1 } } }
	r_3 { ap_vld {  { r_3 out_data 1 32 }  { r_3_ap_vld out_vld 1 1 } } }
	r_4 { ap_vld {  { r_4 out_data 1 32 }  { r_4_ap_vld out_vld 1 1 } } }
	r_5 { ap_vld {  { r_5 out_data 1 32 }  { r_5_ap_vld out_vld 1 1 } } }
	r_6 { ap_vld {  { r_6 out_data 1 32 }  { r_6_ap_vld out_vld 1 1 } } }
	r_7 { ap_vld {  { r_7 out_data 1 32 }  { r_7_ap_vld out_vld 1 1 } } }
	a_0 { ap_none {  { a_0 in_data 0 32 } } }
	a_1 { ap_none {  { a_1 in_data 0 32 } } }
	a_2 { ap_none {  { a_2 in_data 0 32 } } }
	a_3 { ap_none {  { a_3 in_data 0 32 } } }
	a_4 { ap_none {  { a_4 in_data 0 32 } } }
	a_5 { ap_none {  { a_5 in_data 0 32 } } }
	a_6 { ap_none {  { a_6 in_data 0 32 } } }
	a_7 { ap_none {  { a_7 in_data 0 32 } } }
	b_0 { ap_none {  { b_0 in_data 0 32 } } }
	b_1 { ap_none {  { b_1 in_data 0 32 } } }
	b_2 { ap_none {  { b_2 in_data 0 32 } } }
	b_3 { ap_none {  { b_3 in_data 0 32 } } }
	b_4 { ap_none {  { b_4 in_data 0 32 } } }
	b_5 { ap_none {  { b_5 in_data 0 32 } } }
	b_6 { ap_none {  { b_6 in_data 0 32 } } }
	b_7 { ap_none {  { b_7 in_data 0 32 } } }
	c_0 { ap_none {  { c_0 in_data 0 32 } } }
	c_1 { ap_none {  { c_1 in_data 0 32 } } }
	c_2 { ap_none {  { c_2 in_data 0 32 } } }
	c_3 { ap_none {  { c_3 in_data 0 32 } } }
	c_4 { ap_none {  { c_4 in_data 0 32 } } }
	c_5 { ap_none {  { c_5 in_data 0 32 } } }
	c_6 { ap_none {  { c_6 in_data 0 32 } } }
	c_7 { ap_none {  { c_7 in_data 0 32 } } }
	x_0 { ap_none {  { x_0 in_data 0 32 } } }
	x_1 { ap_none {  { x_1 in_data 0 32 } } }
	x_2 { ap_none {  { x_2 in_data 0 32 } } }
	x_3 { ap_none {  { x_3 in_data 0 32 } } }
	x_4 { ap_none {  { x_4 in_data 0 32 } } }
	x_5 { ap_none {  { x_5 in_data 0 32 } } }
	x_6 { ap_none {  { x_6 in_data 0 32 } } }
	x_7 { ap_none {  { x_7 in_data 0 32 } } }
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
