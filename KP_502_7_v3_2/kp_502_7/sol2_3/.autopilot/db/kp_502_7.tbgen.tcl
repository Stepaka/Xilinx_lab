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
	{ A_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ A_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ A_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ A_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ B_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ B_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ B_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ B_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ C_0 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ C_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ C_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ C_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ X1_0 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X1_1 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X1_2 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X1_3 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X2_0 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X2_1 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X2_2 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ X2_3 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ D_0 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ D_1 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ D_2 int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ D_3 int 32 regular {array 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "X2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_address0 sc_out sc_lv 1 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 32 signal 0 } 
	{ A_1_address0 sc_out sc_lv 1 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 32 signal 1 } 
	{ A_2_address0 sc_out sc_lv 1 signal 2 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_2_q0 sc_in sc_lv 32 signal 2 } 
	{ A_3_address0 sc_out sc_lv 1 signal 3 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_3_q0 sc_in sc_lv 32 signal 3 } 
	{ B_0_address0 sc_out sc_lv 1 signal 4 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_0_q0 sc_in sc_lv 32 signal 4 } 
	{ B_1_address0 sc_out sc_lv 1 signal 5 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ B_1_q0 sc_in sc_lv 32 signal 5 } 
	{ B_2_address0 sc_out sc_lv 1 signal 6 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ B_2_q0 sc_in sc_lv 32 signal 6 } 
	{ B_3_address0 sc_out sc_lv 1 signal 7 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ B_3_q0 sc_in sc_lv 32 signal 7 } 
	{ C_0_address0 sc_out sc_lv 1 signal 8 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_0_q0 sc_in sc_lv 32 signal 8 } 
	{ C_1_address0 sc_out sc_lv 1 signal 9 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_1_q0 sc_in sc_lv 32 signal 9 } 
	{ C_2_address0 sc_out sc_lv 1 signal 10 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_2_q0 sc_in sc_lv 32 signal 10 } 
	{ C_3_address0 sc_out sc_lv 1 signal 11 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_3_q0 sc_in sc_lv 32 signal 11 } 
	{ X1_0_address0 sc_out sc_lv 1 signal 12 } 
	{ X1_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ X1_0_we0 sc_out sc_logic 1 signal 12 } 
	{ X1_0_d0 sc_out sc_lv 32 signal 12 } 
	{ X1_1_address0 sc_out sc_lv 1 signal 13 } 
	{ X1_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ X1_1_we0 sc_out sc_logic 1 signal 13 } 
	{ X1_1_d0 sc_out sc_lv 32 signal 13 } 
	{ X1_2_address0 sc_out sc_lv 1 signal 14 } 
	{ X1_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ X1_2_we0 sc_out sc_logic 1 signal 14 } 
	{ X1_2_d0 sc_out sc_lv 32 signal 14 } 
	{ X1_3_address0 sc_out sc_lv 1 signal 15 } 
	{ X1_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ X1_3_we0 sc_out sc_logic 1 signal 15 } 
	{ X1_3_d0 sc_out sc_lv 32 signal 15 } 
	{ X2_0_address0 sc_out sc_lv 1 signal 16 } 
	{ X2_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ X2_0_we0 sc_out sc_logic 1 signal 16 } 
	{ X2_0_d0 sc_out sc_lv 32 signal 16 } 
	{ X2_1_address0 sc_out sc_lv 1 signal 17 } 
	{ X2_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ X2_1_we0 sc_out sc_logic 1 signal 17 } 
	{ X2_1_d0 sc_out sc_lv 32 signal 17 } 
	{ X2_2_address0 sc_out sc_lv 1 signal 18 } 
	{ X2_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ X2_2_we0 sc_out sc_logic 1 signal 18 } 
	{ X2_2_d0 sc_out sc_lv 32 signal 18 } 
	{ X2_3_address0 sc_out sc_lv 1 signal 19 } 
	{ X2_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ X2_3_we0 sc_out sc_logic 1 signal 19 } 
	{ X2_3_d0 sc_out sc_lv 32 signal 19 } 
	{ D_0_address0 sc_out sc_lv 1 signal 20 } 
	{ D_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ D_0_we0 sc_out sc_logic 1 signal 20 } 
	{ D_0_d0 sc_out sc_lv 32 signal 20 } 
	{ D_1_address0 sc_out sc_lv 1 signal 21 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ D_1_we0 sc_out sc_logic 1 signal 21 } 
	{ D_1_d0 sc_out sc_lv 32 signal 21 } 
	{ D_2_address0 sc_out sc_lv 1 signal 22 } 
	{ D_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ D_2_we0 sc_out sc_logic 1 signal 22 } 
	{ D_2_d0 sc_out sc_lv 32 signal 22 } 
	{ D_3_address0 sc_out sc_lv 1 signal 23 } 
	{ D_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ D_3_we0 sc_out sc_logic 1 signal 23 } 
	{ D_3_d0 sc_out sc_lv 32 signal 23 } 
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
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0", "role": "q0" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "q0" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2", "role": "q0" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3", "role": "q0" }} , 
 	{ "name": "X1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "address0" }} , 
 	{ "name": "X1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "ce0" }} , 
 	{ "name": "X1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_0", "role": "we0" }} , 
 	{ "name": "X1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_0", "role": "d0" }} , 
 	{ "name": "X1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "address0" }} , 
 	{ "name": "X1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "ce0" }} , 
 	{ "name": "X1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_1", "role": "we0" }} , 
 	{ "name": "X1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_1", "role": "d0" }} , 
 	{ "name": "X1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_2", "role": "address0" }} , 
 	{ "name": "X1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_2", "role": "ce0" }} , 
 	{ "name": "X1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_2", "role": "we0" }} , 
 	{ "name": "X1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_2", "role": "d0" }} , 
 	{ "name": "X1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_3", "role": "address0" }} , 
 	{ "name": "X1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_3", "role": "ce0" }} , 
 	{ "name": "X1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X1_3", "role": "we0" }} , 
 	{ "name": "X1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X1_3", "role": "d0" }} , 
 	{ "name": "X2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "address0" }} , 
 	{ "name": "X2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "ce0" }} , 
 	{ "name": "X2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_0", "role": "we0" }} , 
 	{ "name": "X2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_0", "role": "d0" }} , 
 	{ "name": "X2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "address0" }} , 
 	{ "name": "X2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "ce0" }} , 
 	{ "name": "X2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_1", "role": "we0" }} , 
 	{ "name": "X2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_1", "role": "d0" }} , 
 	{ "name": "X2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_2", "role": "address0" }} , 
 	{ "name": "X2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_2", "role": "ce0" }} , 
 	{ "name": "X2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_2", "role": "we0" }} , 
 	{ "name": "X2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_2", "role": "d0" }} , 
 	{ "name": "X2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_3", "role": "address0" }} , 
 	{ "name": "X2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_3", "role": "ce0" }} , 
 	{ "name": "X2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X2_3", "role": "we0" }} , 
 	{ "name": "X2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X2_3", "role": "d0" }} , 
 	{ "name": "D_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "address0" }} , 
 	{ "name": "D_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "ce0" }} , 
 	{ "name": "D_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "we0" }} , 
 	{ "name": "D_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_0", "role": "d0" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we0" }} , 
 	{ "name": "D_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "d0" }} , 
 	{ "name": "D_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "address0" }} , 
 	{ "name": "D_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "ce0" }} , 
 	{ "name": "D_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "we0" }} , 
 	{ "name": "D_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "d0" }} , 
 	{ "name": "D_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "address0" }} , 
 	{ "name": "D_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "ce0" }} , 
 	{ "name": "D_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "we0" }} , 
 	{ "name": "D_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "kp_502_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "443",
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
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "366", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state330"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_32_32_s_fu_544", "Parent" : "0",
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32s_32ns_32_36_seq_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32s_32ns_32_36_seq_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kp_502_7 {
		A_0 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type I LastRead 56 FirstWrite -1}
		A_2 {Type I LastRead 111 FirstWrite -1}
		A_3 {Type I LastRead 166 FirstWrite -1}
		B_0 {Type I LastRead 1 FirstWrite -1}
		B_1 {Type I LastRead 56 FirstWrite -1}
		B_2 {Type I LastRead 111 FirstWrite -1}
		B_3 {Type I LastRead 166 FirstWrite -1}
		C_0 {Type I LastRead 1 FirstWrite -1}
		C_1 {Type I LastRead 56 FirstWrite -1}
		C_2 {Type I LastRead 111 FirstWrite -1}
		C_3 {Type I LastRead 166 FirstWrite -1}
		X1_0 {Type O LastRead -1 FirstWrite 6}
		X1_1 {Type O LastRead -1 FirstWrite 61}
		X1_2 {Type O LastRead -1 FirstWrite 116}
		X1_3 {Type O LastRead -1 FirstWrite 171}
		X2_0 {Type O LastRead -1 FirstWrite 6}
		X2_1 {Type O LastRead -1 FirstWrite 61}
		X2_2 {Type O LastRead -1 FirstWrite 116}
		X2_3 {Type O LastRead -1 FirstWrite 171}
		D_0 {Type O LastRead -1 FirstWrite 6}
		D_1 {Type O LastRead -1 FirstWrite 61}
		D_2 {Type O LastRead -1 FirstWrite 116}
		D_3 {Type O LastRead -1 FirstWrite 171}}
	sqrt_fixed_32_32_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "51", "Max" : "443"}
	, {"Name" : "Interval", "Min" : "52", "Max" : "444"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 1 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 1 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 1 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 mem_dout 0 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 1 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 mem_dout 0 32 } } }
	B_0 { ap_memory {  { B_0_address0 mem_address 1 1 }  { B_0_ce0 mem_ce 1 1 }  { B_0_q0 mem_dout 0 32 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 1 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 32 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 1 }  { B_2_ce0 mem_ce 1 1 }  { B_2_q0 mem_dout 0 32 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 1 }  { B_3_ce0 mem_ce 1 1 }  { B_3_q0 mem_dout 0 32 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 1 }  { C_0_ce0 mem_ce 1 1 }  { C_0_q0 mem_dout 0 32 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 1 }  { C_1_ce0 mem_ce 1 1 }  { C_1_q0 mem_dout 0 32 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 1 }  { C_2_ce0 mem_ce 1 1 }  { C_2_q0 mem_dout 0 32 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 1 }  { C_3_ce0 mem_ce 1 1 }  { C_3_q0 mem_dout 0 32 } } }
	X1_0 { ap_memory {  { X1_0_address0 mem_address 1 1 }  { X1_0_ce0 mem_ce 1 1 }  { X1_0_we0 mem_we 1 1 }  { X1_0_d0 mem_din 1 32 } } }
	X1_1 { ap_memory {  { X1_1_address0 mem_address 1 1 }  { X1_1_ce0 mem_ce 1 1 }  { X1_1_we0 mem_we 1 1 }  { X1_1_d0 mem_din 1 32 } } }
	X1_2 { ap_memory {  { X1_2_address0 mem_address 1 1 }  { X1_2_ce0 mem_ce 1 1 }  { X1_2_we0 mem_we 1 1 }  { X1_2_d0 mem_din 1 32 } } }
	X1_3 { ap_memory {  { X1_3_address0 mem_address 1 1 }  { X1_3_ce0 mem_ce 1 1 }  { X1_3_we0 mem_we 1 1 }  { X1_3_d0 mem_din 1 32 } } }
	X2_0 { ap_memory {  { X2_0_address0 mem_address 1 1 }  { X2_0_ce0 mem_ce 1 1 }  { X2_0_we0 mem_we 1 1 }  { X2_0_d0 mem_din 1 32 } } }
	X2_1 { ap_memory {  { X2_1_address0 mem_address 1 1 }  { X2_1_ce0 mem_ce 1 1 }  { X2_1_we0 mem_we 1 1 }  { X2_1_d0 mem_din 1 32 } } }
	X2_2 { ap_memory {  { X2_2_address0 mem_address 1 1 }  { X2_2_ce0 mem_ce 1 1 }  { X2_2_we0 mem_we 1 1 }  { X2_2_d0 mem_din 1 32 } } }
	X2_3 { ap_memory {  { X2_3_address0 mem_address 1 1 }  { X2_3_ce0 mem_ce 1 1 }  { X2_3_we0 mem_we 1 1 }  { X2_3_d0 mem_din 1 32 } } }
	D_0 { ap_memory {  { D_0_address0 mem_address 1 1 }  { D_0_ce0 mem_ce 1 1 }  { D_0_we0 mem_we 1 1 }  { D_0_d0 mem_din 1 32 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 1 }  { D_1_ce0 mem_ce 1 1 }  { D_1_we0 mem_we 1 1 }  { D_1_d0 mem_din 1 32 } } }
	D_2 { ap_memory {  { D_2_address0 mem_address 1 1 }  { D_2_ce0 mem_ce 1 1 }  { D_2_we0 mem_we 1 1 }  { D_2_d0 mem_din 1 32 } } }
	D_3 { ap_memory {  { D_3_address0 mem_address 1 1 }  { D_3_ce0 mem_ce 1 1 }  { D_3_we0 mem_we 1 1 }  { D_3_d0 mem_din 1 32 } } }
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
