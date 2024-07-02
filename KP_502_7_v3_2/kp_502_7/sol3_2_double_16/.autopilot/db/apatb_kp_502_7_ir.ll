; ModuleID = 'G:/Xilinx_lab/KP_502_7_v3/kp_502_7/sol3_2_double_16/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_kp_502_7_ir(double* %A, double* %B, double* %C, double* %X1, double* %X2, double* %D) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 32768)
  %malloccall_1 = call i8* @malloc(i64 32768)
  %malloccall_2 = call i8* @malloc(i64 32768)
  %malloccall_3 = call i8* @malloc(i64 32768)
  %malloccall_4 = call i8* @malloc(i64 32768)
  %malloccall_5 = call i8* @malloc(i64 32768)
  %malloccall_6 = call i8* @malloc(i64 32768)
  %malloccall_7 = call i8* @malloc(i64 32768)
  %malloccall_8 = call i8* @malloc(i64 32768)
  %malloccall_9 = call i8* @malloc(i64 32768)
  %malloccall_10 = call i8* @malloc(i64 32768)
  %malloccall_11 = call i8* @malloc(i64 32768)
  %malloccall_12 = call i8* @malloc(i64 32768)
  %malloccall_13 = call i8* @malloc(i64 32768)
  %malloccall_14 = call i8* @malloc(i64 32768)
  %malloccall_15 = call i8* @malloc(i64 32768)
  %A_copy_0 = bitcast i8* %malloccall_0 to [4096 x double]*
  %A_copy_1 = bitcast i8* %malloccall_1 to [4096 x double]*
  %A_copy_2 = bitcast i8* %malloccall_2 to [4096 x double]*
  %A_copy_3 = bitcast i8* %malloccall_3 to [4096 x double]*
  %A_copy_4 = bitcast i8* %malloccall_4 to [4096 x double]*
  %A_copy_5 = bitcast i8* %malloccall_5 to [4096 x double]*
  %A_copy_6 = bitcast i8* %malloccall_6 to [4096 x double]*
  %A_copy_7 = bitcast i8* %malloccall_7 to [4096 x double]*
  %A_copy_8 = bitcast i8* %malloccall_8 to [4096 x double]*
  %A_copy_9 = bitcast i8* %malloccall_9 to [4096 x double]*
  %A_copy_10 = bitcast i8* %malloccall_10 to [4096 x double]*
  %A_copy_11 = bitcast i8* %malloccall_11 to [4096 x double]*
  %A_copy_12 = bitcast i8* %malloccall_12 to [4096 x double]*
  %A_copy_13 = bitcast i8* %malloccall_13 to [4096 x double]*
  %A_copy_14 = bitcast i8* %malloccall_14 to [4096 x double]*
  %A_copy_15 = bitcast i8* %malloccall_15 to [4096 x double]*
  %malloccall1_0 = call i8* @malloc(i64 32768)
  %malloccall1_1 = call i8* @malloc(i64 32768)
  %malloccall1_2 = call i8* @malloc(i64 32768)
  %malloccall1_3 = call i8* @malloc(i64 32768)
  %malloccall1_4 = call i8* @malloc(i64 32768)
  %malloccall1_5 = call i8* @malloc(i64 32768)
  %malloccall1_6 = call i8* @malloc(i64 32768)
  %malloccall1_7 = call i8* @malloc(i64 32768)
  %malloccall1_8 = call i8* @malloc(i64 32768)
  %malloccall1_9 = call i8* @malloc(i64 32768)
  %malloccall1_10 = call i8* @malloc(i64 32768)
  %malloccall1_11 = call i8* @malloc(i64 32768)
  %malloccall1_12 = call i8* @malloc(i64 32768)
  %malloccall1_13 = call i8* @malloc(i64 32768)
  %malloccall1_14 = call i8* @malloc(i64 32768)
  %malloccall1_15 = call i8* @malloc(i64 32768)
  %B_copy_0 = bitcast i8* %malloccall1_0 to [4096 x double]*
  %B_copy_1 = bitcast i8* %malloccall1_1 to [4096 x double]*
  %B_copy_2 = bitcast i8* %malloccall1_2 to [4096 x double]*
  %B_copy_3 = bitcast i8* %malloccall1_3 to [4096 x double]*
  %B_copy_4 = bitcast i8* %malloccall1_4 to [4096 x double]*
  %B_copy_5 = bitcast i8* %malloccall1_5 to [4096 x double]*
  %B_copy_6 = bitcast i8* %malloccall1_6 to [4096 x double]*
  %B_copy_7 = bitcast i8* %malloccall1_7 to [4096 x double]*
  %B_copy_8 = bitcast i8* %malloccall1_8 to [4096 x double]*
  %B_copy_9 = bitcast i8* %malloccall1_9 to [4096 x double]*
  %B_copy_10 = bitcast i8* %malloccall1_10 to [4096 x double]*
  %B_copy_11 = bitcast i8* %malloccall1_11 to [4096 x double]*
  %B_copy_12 = bitcast i8* %malloccall1_12 to [4096 x double]*
  %B_copy_13 = bitcast i8* %malloccall1_13 to [4096 x double]*
  %B_copy_14 = bitcast i8* %malloccall1_14 to [4096 x double]*
  %B_copy_15 = bitcast i8* %malloccall1_15 to [4096 x double]*
  %malloccall2_0 = call i8* @malloc(i64 32768)
  %malloccall2_1 = call i8* @malloc(i64 32768)
  %malloccall2_2 = call i8* @malloc(i64 32768)
  %malloccall2_3 = call i8* @malloc(i64 32768)
  %malloccall2_4 = call i8* @malloc(i64 32768)
  %malloccall2_5 = call i8* @malloc(i64 32768)
  %malloccall2_6 = call i8* @malloc(i64 32768)
  %malloccall2_7 = call i8* @malloc(i64 32768)
  %malloccall2_8 = call i8* @malloc(i64 32768)
  %malloccall2_9 = call i8* @malloc(i64 32768)
  %malloccall2_10 = call i8* @malloc(i64 32768)
  %malloccall2_11 = call i8* @malloc(i64 32768)
  %malloccall2_12 = call i8* @malloc(i64 32768)
  %malloccall2_13 = call i8* @malloc(i64 32768)
  %malloccall2_14 = call i8* @malloc(i64 32768)
  %malloccall2_15 = call i8* @malloc(i64 32768)
  %C_copy_0 = bitcast i8* %malloccall2_0 to [4096 x double]*
  %C_copy_1 = bitcast i8* %malloccall2_1 to [4096 x double]*
  %C_copy_2 = bitcast i8* %malloccall2_2 to [4096 x double]*
  %C_copy_3 = bitcast i8* %malloccall2_3 to [4096 x double]*
  %C_copy_4 = bitcast i8* %malloccall2_4 to [4096 x double]*
  %C_copy_5 = bitcast i8* %malloccall2_5 to [4096 x double]*
  %C_copy_6 = bitcast i8* %malloccall2_6 to [4096 x double]*
  %C_copy_7 = bitcast i8* %malloccall2_7 to [4096 x double]*
  %C_copy_8 = bitcast i8* %malloccall2_8 to [4096 x double]*
  %C_copy_9 = bitcast i8* %malloccall2_9 to [4096 x double]*
  %C_copy_10 = bitcast i8* %malloccall2_10 to [4096 x double]*
  %C_copy_11 = bitcast i8* %malloccall2_11 to [4096 x double]*
  %C_copy_12 = bitcast i8* %malloccall2_12 to [4096 x double]*
  %C_copy_13 = bitcast i8* %malloccall2_13 to [4096 x double]*
  %C_copy_14 = bitcast i8* %malloccall2_14 to [4096 x double]*
  %C_copy_15 = bitcast i8* %malloccall2_15 to [4096 x double]*
  %malloccall3_0 = call i8* @malloc(i64 32768)
  %malloccall3_1 = call i8* @malloc(i64 32768)
  %malloccall3_2 = call i8* @malloc(i64 32768)
  %malloccall3_3 = call i8* @malloc(i64 32768)
  %malloccall3_4 = call i8* @malloc(i64 32768)
  %malloccall3_5 = call i8* @malloc(i64 32768)
  %malloccall3_6 = call i8* @malloc(i64 32768)
  %malloccall3_7 = call i8* @malloc(i64 32768)
  %malloccall3_8 = call i8* @malloc(i64 32768)
  %malloccall3_9 = call i8* @malloc(i64 32768)
  %malloccall3_10 = call i8* @malloc(i64 32768)
  %malloccall3_11 = call i8* @malloc(i64 32768)
  %malloccall3_12 = call i8* @malloc(i64 32768)
  %malloccall3_13 = call i8* @malloc(i64 32768)
  %malloccall3_14 = call i8* @malloc(i64 32768)
  %malloccall3_15 = call i8* @malloc(i64 32768)
  %X1_copy_0 = bitcast i8* %malloccall3_0 to [4096 x double]*
  %X1_copy_1 = bitcast i8* %malloccall3_1 to [4096 x double]*
  %X1_copy_2 = bitcast i8* %malloccall3_2 to [4096 x double]*
  %X1_copy_3 = bitcast i8* %malloccall3_3 to [4096 x double]*
  %X1_copy_4 = bitcast i8* %malloccall3_4 to [4096 x double]*
  %X1_copy_5 = bitcast i8* %malloccall3_5 to [4096 x double]*
  %X1_copy_6 = bitcast i8* %malloccall3_6 to [4096 x double]*
  %X1_copy_7 = bitcast i8* %malloccall3_7 to [4096 x double]*
  %X1_copy_8 = bitcast i8* %malloccall3_8 to [4096 x double]*
  %X1_copy_9 = bitcast i8* %malloccall3_9 to [4096 x double]*
  %X1_copy_10 = bitcast i8* %malloccall3_10 to [4096 x double]*
  %X1_copy_11 = bitcast i8* %malloccall3_11 to [4096 x double]*
  %X1_copy_12 = bitcast i8* %malloccall3_12 to [4096 x double]*
  %X1_copy_13 = bitcast i8* %malloccall3_13 to [4096 x double]*
  %X1_copy_14 = bitcast i8* %malloccall3_14 to [4096 x double]*
  %X1_copy_15 = bitcast i8* %malloccall3_15 to [4096 x double]*
  %malloccall4_0 = call i8* @malloc(i64 32768)
  %malloccall4_1 = call i8* @malloc(i64 32768)
  %malloccall4_2 = call i8* @malloc(i64 32768)
  %malloccall4_3 = call i8* @malloc(i64 32768)
  %malloccall4_4 = call i8* @malloc(i64 32768)
  %malloccall4_5 = call i8* @malloc(i64 32768)
  %malloccall4_6 = call i8* @malloc(i64 32768)
  %malloccall4_7 = call i8* @malloc(i64 32768)
  %malloccall4_8 = call i8* @malloc(i64 32768)
  %malloccall4_9 = call i8* @malloc(i64 32768)
  %malloccall4_10 = call i8* @malloc(i64 32768)
  %malloccall4_11 = call i8* @malloc(i64 32768)
  %malloccall4_12 = call i8* @malloc(i64 32768)
  %malloccall4_13 = call i8* @malloc(i64 32768)
  %malloccall4_14 = call i8* @malloc(i64 32768)
  %malloccall4_15 = call i8* @malloc(i64 32768)
  %X2_copy_0 = bitcast i8* %malloccall4_0 to [4096 x double]*
  %X2_copy_1 = bitcast i8* %malloccall4_1 to [4096 x double]*
  %X2_copy_2 = bitcast i8* %malloccall4_2 to [4096 x double]*
  %X2_copy_3 = bitcast i8* %malloccall4_3 to [4096 x double]*
  %X2_copy_4 = bitcast i8* %malloccall4_4 to [4096 x double]*
  %X2_copy_5 = bitcast i8* %malloccall4_5 to [4096 x double]*
  %X2_copy_6 = bitcast i8* %malloccall4_6 to [4096 x double]*
  %X2_copy_7 = bitcast i8* %malloccall4_7 to [4096 x double]*
  %X2_copy_8 = bitcast i8* %malloccall4_8 to [4096 x double]*
  %X2_copy_9 = bitcast i8* %malloccall4_9 to [4096 x double]*
  %X2_copy_10 = bitcast i8* %malloccall4_10 to [4096 x double]*
  %X2_copy_11 = bitcast i8* %malloccall4_11 to [4096 x double]*
  %X2_copy_12 = bitcast i8* %malloccall4_12 to [4096 x double]*
  %X2_copy_13 = bitcast i8* %malloccall4_13 to [4096 x double]*
  %X2_copy_14 = bitcast i8* %malloccall4_14 to [4096 x double]*
  %X2_copy_15 = bitcast i8* %malloccall4_15 to [4096 x double]*
  %malloccall5_0 = call i8* @malloc(i64 32768)
  %malloccall5_1 = call i8* @malloc(i64 32768)
  %malloccall5_2 = call i8* @malloc(i64 32768)
  %malloccall5_3 = call i8* @malloc(i64 32768)
  %malloccall5_4 = call i8* @malloc(i64 32768)
  %malloccall5_5 = call i8* @malloc(i64 32768)
  %malloccall5_6 = call i8* @malloc(i64 32768)
  %malloccall5_7 = call i8* @malloc(i64 32768)
  %malloccall5_8 = call i8* @malloc(i64 32768)
  %malloccall5_9 = call i8* @malloc(i64 32768)
  %malloccall5_10 = call i8* @malloc(i64 32768)
  %malloccall5_11 = call i8* @malloc(i64 32768)
  %malloccall5_12 = call i8* @malloc(i64 32768)
  %malloccall5_13 = call i8* @malloc(i64 32768)
  %malloccall5_14 = call i8* @malloc(i64 32768)
  %malloccall5_15 = call i8* @malloc(i64 32768)
  %D_copy_0 = bitcast i8* %malloccall5_0 to [4096 x double]*
  %D_copy_1 = bitcast i8* %malloccall5_1 to [4096 x double]*
  %D_copy_2 = bitcast i8* %malloccall5_2 to [4096 x double]*
  %D_copy_3 = bitcast i8* %malloccall5_3 to [4096 x double]*
  %D_copy_4 = bitcast i8* %malloccall5_4 to [4096 x double]*
  %D_copy_5 = bitcast i8* %malloccall5_5 to [4096 x double]*
  %D_copy_6 = bitcast i8* %malloccall5_6 to [4096 x double]*
  %D_copy_7 = bitcast i8* %malloccall5_7 to [4096 x double]*
  %D_copy_8 = bitcast i8* %malloccall5_8 to [4096 x double]*
  %D_copy_9 = bitcast i8* %malloccall5_9 to [4096 x double]*
  %D_copy_10 = bitcast i8* %malloccall5_10 to [4096 x double]*
  %D_copy_11 = bitcast i8* %malloccall5_11 to [4096 x double]*
  %D_copy_12 = bitcast i8* %malloccall5_12 to [4096 x double]*
  %D_copy_13 = bitcast i8* %malloccall5_13 to [4096 x double]*
  %D_copy_14 = bitcast i8* %malloccall5_14 to [4096 x double]*
  %D_copy_15 = bitcast i8* %malloccall5_15 to [4096 x double]*
  %0 = bitcast double* %A to [65536 x double]*
  %1 = bitcast double* %B to [65536 x double]*
  %2 = bitcast double* %C to [65536 x double]*
  %3 = bitcast double* %X1 to [65536 x double]*
  %4 = bitcast double* %X2 to [65536 x double]*
  %5 = bitcast double* %D to [65536 x double]*
  call void @copy_in([65536 x double]* %0, [4096 x double]* %A_copy_0, [4096 x double]* %A_copy_1, [4096 x double]* %A_copy_2, [4096 x double]* %A_copy_3, [4096 x double]* %A_copy_4, [4096 x double]* %A_copy_5, [4096 x double]* %A_copy_6, [4096 x double]* %A_copy_7, [4096 x double]* %A_copy_8, [4096 x double]* %A_copy_9, [4096 x double]* %A_copy_10, [4096 x double]* %A_copy_11, [4096 x double]* %A_copy_12, [4096 x double]* %A_copy_13, [4096 x double]* %A_copy_14, [4096 x double]* %A_copy_15, [65536 x double]* %1, [4096 x double]* %B_copy_0, [4096 x double]* %B_copy_1, [4096 x double]* %B_copy_2, [4096 x double]* %B_copy_3, [4096 x double]* %B_copy_4, [4096 x double]* %B_copy_5, [4096 x double]* %B_copy_6, [4096 x double]* %B_copy_7, [4096 x double]* %B_copy_8, [4096 x double]* %B_copy_9, [4096 x double]* %B_copy_10, [4096 x double]* %B_copy_11, [4096 x double]* %B_copy_12, [4096 x double]* %B_copy_13, [4096 x double]* %B_copy_14, [4096 x double]* %B_copy_15, [65536 x double]* %2, [4096 x double]* %C_copy_0, [4096 x double]* %C_copy_1, [4096 x double]* %C_copy_2, [4096 x double]* %C_copy_3, [4096 x double]* %C_copy_4, [4096 x double]* %C_copy_5, [4096 x double]* %C_copy_6, [4096 x double]* %C_copy_7, [4096 x double]* %C_copy_8, [4096 x double]* %C_copy_9, [4096 x double]* %C_copy_10, [4096 x double]* %C_copy_11, [4096 x double]* %C_copy_12, [4096 x double]* %C_copy_13, [4096 x double]* %C_copy_14, [4096 x double]* %C_copy_15, [65536 x double]* %3, [4096 x double]* %X1_copy_0, [4096 x double]* %X1_copy_1, [4096 x double]* %X1_copy_2, [4096 x double]* %X1_copy_3, [4096 x double]* %X1_copy_4, [4096 x double]* %X1_copy_5, [4096 x double]* %X1_copy_6, [4096 x double]* %X1_copy_7, [4096 x double]* %X1_copy_8, [4096 x double]* %X1_copy_9, [4096 x double]* %X1_copy_10, [4096 x double]* %X1_copy_11, [4096 x double]* %X1_copy_12, [4096 x double]* %X1_copy_13, [4096 x double]* %X1_copy_14, [4096 x double]* %X1_copy_15, [65536 x double]* %4, [4096 x double]* %X2_copy_0, [4096 x double]* %X2_copy_1, [4096 x double]* %X2_copy_2, [4096 x double]* %X2_copy_3, [4096 x double]* %X2_copy_4, [4096 x double]* %X2_copy_5, [4096 x double]* %X2_copy_6, [4096 x double]* %X2_copy_7, [4096 x double]* %X2_copy_8, [4096 x double]* %X2_copy_9, [4096 x double]* %X2_copy_10, [4096 x double]* %X2_copy_11, [4096 x double]* %X2_copy_12, [4096 x double]* %X2_copy_13, [4096 x double]* %X2_copy_14, [4096 x double]* %X2_copy_15, [65536 x double]* %5, [4096 x double]* %D_copy_0, [4096 x double]* %D_copy_1, [4096 x double]* %D_copy_2, [4096 x double]* %D_copy_3, [4096 x double]* %D_copy_4, [4096 x double]* %D_copy_5, [4096 x double]* %D_copy_6, [4096 x double]* %D_copy_7, [4096 x double]* %D_copy_8, [4096 x double]* %D_copy_9, [4096 x double]* %D_copy_10, [4096 x double]* %D_copy_11, [4096 x double]* %D_copy_12, [4096 x double]* %D_copy_13, [4096 x double]* %D_copy_14, [4096 x double]* %D_copy_15)
  %_0 = getelementptr [4096 x double], [4096 x double]* %A_copy_0, i32 0, i32 0
  %_1 = getelementptr [4096 x double], [4096 x double]* %A_copy_1, i32 0, i32 0
  %_2 = getelementptr [4096 x double], [4096 x double]* %A_copy_2, i32 0, i32 0
  %_3 = getelementptr [4096 x double], [4096 x double]* %A_copy_3, i32 0, i32 0
  %_4 = getelementptr [4096 x double], [4096 x double]* %A_copy_4, i32 0, i32 0
  %_5 = getelementptr [4096 x double], [4096 x double]* %A_copy_5, i32 0, i32 0
  %_6 = getelementptr [4096 x double], [4096 x double]* %A_copy_6, i32 0, i32 0
  %_7 = getelementptr [4096 x double], [4096 x double]* %A_copy_7, i32 0, i32 0
  %_8 = getelementptr [4096 x double], [4096 x double]* %A_copy_8, i32 0, i32 0
  %_9 = getelementptr [4096 x double], [4096 x double]* %A_copy_9, i32 0, i32 0
  %_10 = getelementptr [4096 x double], [4096 x double]* %A_copy_10, i32 0, i32 0
  %_11 = getelementptr [4096 x double], [4096 x double]* %A_copy_11, i32 0, i32 0
  %_12 = getelementptr [4096 x double], [4096 x double]* %A_copy_12, i32 0, i32 0
  %_13 = getelementptr [4096 x double], [4096 x double]* %A_copy_13, i32 0, i32 0
  %_14 = getelementptr [4096 x double], [4096 x double]* %A_copy_14, i32 0, i32 0
  %_15 = getelementptr [4096 x double], [4096 x double]* %A_copy_15, i32 0, i32 0
  %_06 = getelementptr [4096 x double], [4096 x double]* %B_copy_0, i32 0, i32 0
  %_17 = getelementptr [4096 x double], [4096 x double]* %B_copy_1, i32 0, i32 0
  %_28 = getelementptr [4096 x double], [4096 x double]* %B_copy_2, i32 0, i32 0
  %_39 = getelementptr [4096 x double], [4096 x double]* %B_copy_3, i32 0, i32 0
  %_410 = getelementptr [4096 x double], [4096 x double]* %B_copy_4, i32 0, i32 0
  %_511 = getelementptr [4096 x double], [4096 x double]* %B_copy_5, i32 0, i32 0
  %_612 = getelementptr [4096 x double], [4096 x double]* %B_copy_6, i32 0, i32 0
  %_713 = getelementptr [4096 x double], [4096 x double]* %B_copy_7, i32 0, i32 0
  %_814 = getelementptr [4096 x double], [4096 x double]* %B_copy_8, i32 0, i32 0
  %_915 = getelementptr [4096 x double], [4096 x double]* %B_copy_9, i32 0, i32 0
  %_1016 = getelementptr [4096 x double], [4096 x double]* %B_copy_10, i32 0, i32 0
  %_1117 = getelementptr [4096 x double], [4096 x double]* %B_copy_11, i32 0, i32 0
  %_1218 = getelementptr [4096 x double], [4096 x double]* %B_copy_12, i32 0, i32 0
  %_1319 = getelementptr [4096 x double], [4096 x double]* %B_copy_13, i32 0, i32 0
  %_1420 = getelementptr [4096 x double], [4096 x double]* %B_copy_14, i32 0, i32 0
  %_1521 = getelementptr [4096 x double], [4096 x double]* %B_copy_15, i32 0, i32 0
  %_022 = getelementptr [4096 x double], [4096 x double]* %C_copy_0, i32 0, i32 0
  %_123 = getelementptr [4096 x double], [4096 x double]* %C_copy_1, i32 0, i32 0
  %_224 = getelementptr [4096 x double], [4096 x double]* %C_copy_2, i32 0, i32 0
  %_325 = getelementptr [4096 x double], [4096 x double]* %C_copy_3, i32 0, i32 0
  %_426 = getelementptr [4096 x double], [4096 x double]* %C_copy_4, i32 0, i32 0
  %_527 = getelementptr [4096 x double], [4096 x double]* %C_copy_5, i32 0, i32 0
  %_628 = getelementptr [4096 x double], [4096 x double]* %C_copy_6, i32 0, i32 0
  %_729 = getelementptr [4096 x double], [4096 x double]* %C_copy_7, i32 0, i32 0
  %_830 = getelementptr [4096 x double], [4096 x double]* %C_copy_8, i32 0, i32 0
  %_931 = getelementptr [4096 x double], [4096 x double]* %C_copy_9, i32 0, i32 0
  %_1032 = getelementptr [4096 x double], [4096 x double]* %C_copy_10, i32 0, i32 0
  %_1133 = getelementptr [4096 x double], [4096 x double]* %C_copy_11, i32 0, i32 0
  %_1234 = getelementptr [4096 x double], [4096 x double]* %C_copy_12, i32 0, i32 0
  %_1335 = getelementptr [4096 x double], [4096 x double]* %C_copy_13, i32 0, i32 0
  %_1436 = getelementptr [4096 x double], [4096 x double]* %C_copy_14, i32 0, i32 0
  %_1537 = getelementptr [4096 x double], [4096 x double]* %C_copy_15, i32 0, i32 0
  %_038 = getelementptr [4096 x double], [4096 x double]* %X1_copy_0, i32 0, i32 0
  %_139 = getelementptr [4096 x double], [4096 x double]* %X1_copy_1, i32 0, i32 0
  %_240 = getelementptr [4096 x double], [4096 x double]* %X1_copy_2, i32 0, i32 0
  %_341 = getelementptr [4096 x double], [4096 x double]* %X1_copy_3, i32 0, i32 0
  %_442 = getelementptr [4096 x double], [4096 x double]* %X1_copy_4, i32 0, i32 0
  %_543 = getelementptr [4096 x double], [4096 x double]* %X1_copy_5, i32 0, i32 0
  %_644 = getelementptr [4096 x double], [4096 x double]* %X1_copy_6, i32 0, i32 0
  %_745 = getelementptr [4096 x double], [4096 x double]* %X1_copy_7, i32 0, i32 0
  %_846 = getelementptr [4096 x double], [4096 x double]* %X1_copy_8, i32 0, i32 0
  %_947 = getelementptr [4096 x double], [4096 x double]* %X1_copy_9, i32 0, i32 0
  %_1048 = getelementptr [4096 x double], [4096 x double]* %X1_copy_10, i32 0, i32 0
  %_1149 = getelementptr [4096 x double], [4096 x double]* %X1_copy_11, i32 0, i32 0
  %_1250 = getelementptr [4096 x double], [4096 x double]* %X1_copy_12, i32 0, i32 0
  %_1351 = getelementptr [4096 x double], [4096 x double]* %X1_copy_13, i32 0, i32 0
  %_1452 = getelementptr [4096 x double], [4096 x double]* %X1_copy_14, i32 0, i32 0
  %_1553 = getelementptr [4096 x double], [4096 x double]* %X1_copy_15, i32 0, i32 0
  %_054 = getelementptr [4096 x double], [4096 x double]* %X2_copy_0, i32 0, i32 0
  %_155 = getelementptr [4096 x double], [4096 x double]* %X2_copy_1, i32 0, i32 0
  %_256 = getelementptr [4096 x double], [4096 x double]* %X2_copy_2, i32 0, i32 0
  %_357 = getelementptr [4096 x double], [4096 x double]* %X2_copy_3, i32 0, i32 0
  %_458 = getelementptr [4096 x double], [4096 x double]* %X2_copy_4, i32 0, i32 0
  %_559 = getelementptr [4096 x double], [4096 x double]* %X2_copy_5, i32 0, i32 0
  %_660 = getelementptr [4096 x double], [4096 x double]* %X2_copy_6, i32 0, i32 0
  %_761 = getelementptr [4096 x double], [4096 x double]* %X2_copy_7, i32 0, i32 0
  %_862 = getelementptr [4096 x double], [4096 x double]* %X2_copy_8, i32 0, i32 0
  %_963 = getelementptr [4096 x double], [4096 x double]* %X2_copy_9, i32 0, i32 0
  %_1064 = getelementptr [4096 x double], [4096 x double]* %X2_copy_10, i32 0, i32 0
  %_1165 = getelementptr [4096 x double], [4096 x double]* %X2_copy_11, i32 0, i32 0
  %_1266 = getelementptr [4096 x double], [4096 x double]* %X2_copy_12, i32 0, i32 0
  %_1367 = getelementptr [4096 x double], [4096 x double]* %X2_copy_13, i32 0, i32 0
  %_1468 = getelementptr [4096 x double], [4096 x double]* %X2_copy_14, i32 0, i32 0
  %_1569 = getelementptr [4096 x double], [4096 x double]* %X2_copy_15, i32 0, i32 0
  %_070 = getelementptr [4096 x double], [4096 x double]* %D_copy_0, i32 0, i32 0
  %_171 = getelementptr [4096 x double], [4096 x double]* %D_copy_1, i32 0, i32 0
  %_272 = getelementptr [4096 x double], [4096 x double]* %D_copy_2, i32 0, i32 0
  %_373 = getelementptr [4096 x double], [4096 x double]* %D_copy_3, i32 0, i32 0
  %_474 = getelementptr [4096 x double], [4096 x double]* %D_copy_4, i32 0, i32 0
  %_575 = getelementptr [4096 x double], [4096 x double]* %D_copy_5, i32 0, i32 0
  %_676 = getelementptr [4096 x double], [4096 x double]* %D_copy_6, i32 0, i32 0
  %_777 = getelementptr [4096 x double], [4096 x double]* %D_copy_7, i32 0, i32 0
  %_878 = getelementptr [4096 x double], [4096 x double]* %D_copy_8, i32 0, i32 0
  %_979 = getelementptr [4096 x double], [4096 x double]* %D_copy_9, i32 0, i32 0
  %_1080 = getelementptr [4096 x double], [4096 x double]* %D_copy_10, i32 0, i32 0
  %_1181 = getelementptr [4096 x double], [4096 x double]* %D_copy_11, i32 0, i32 0
  %_1282 = getelementptr [4096 x double], [4096 x double]* %D_copy_12, i32 0, i32 0
  %_1383 = getelementptr [4096 x double], [4096 x double]* %D_copy_13, i32 0, i32 0
  %_1484 = getelementptr [4096 x double], [4096 x double]* %D_copy_14, i32 0, i32 0
  %_1585 = getelementptr [4096 x double], [4096 x double]* %D_copy_15, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_06, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_17, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_28, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_39, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_410, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_511, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_612, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_713, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_814, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_915, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1016, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1117, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1218, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1319, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1420, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1521, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_022, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_123, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_224, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_325, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_426, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_527, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_628, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_729, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_830, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_931, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1032, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1133, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1234, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1335, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1436, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1537, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_038, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_139, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_240, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_341, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_442, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_543, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_644, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_745, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_846, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_947, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1048, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1149, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1250, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1351, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1452, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1553, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_054, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_155, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_256, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_357, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_458, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_559, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_660, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_761, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_862, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_963, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1064, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1165, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1266, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1367, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1468, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1569, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_070, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_171, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_272, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_373, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_474, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_575, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_676, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_777, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_878, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_979, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1080, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1181, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1282, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1383, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1484, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1585, i32 0, i32 1, i32 0, i1 false) ], !dbg !581
  call void @apatb_kp_502_7_hw([4096 x double]* %A_copy_0, [4096 x double]* %A_copy_1, [4096 x double]* %A_copy_2, [4096 x double]* %A_copy_3, [4096 x double]* %A_copy_4, [4096 x double]* %A_copy_5, [4096 x double]* %A_copy_6, [4096 x double]* %A_copy_7, [4096 x double]* %A_copy_8, [4096 x double]* %A_copy_9, [4096 x double]* %A_copy_10, [4096 x double]* %A_copy_11, [4096 x double]* %A_copy_12, [4096 x double]* %A_copy_13, [4096 x double]* %A_copy_14, [4096 x double]* %A_copy_15, [4096 x double]* %B_copy_0, [4096 x double]* %B_copy_1, [4096 x double]* %B_copy_2, [4096 x double]* %B_copy_3, [4096 x double]* %B_copy_4, [4096 x double]* %B_copy_5, [4096 x double]* %B_copy_6, [4096 x double]* %B_copy_7, [4096 x double]* %B_copy_8, [4096 x double]* %B_copy_9, [4096 x double]* %B_copy_10, [4096 x double]* %B_copy_11, [4096 x double]* %B_copy_12, [4096 x double]* %B_copy_13, [4096 x double]* %B_copy_14, [4096 x double]* %B_copy_15, [4096 x double]* %C_copy_0, [4096 x double]* %C_copy_1, [4096 x double]* %C_copy_2, [4096 x double]* %C_copy_3, [4096 x double]* %C_copy_4, [4096 x double]* %C_copy_5, [4096 x double]* %C_copy_6, [4096 x double]* %C_copy_7, [4096 x double]* %C_copy_8, [4096 x double]* %C_copy_9, [4096 x double]* %C_copy_10, [4096 x double]* %C_copy_11, [4096 x double]* %C_copy_12, [4096 x double]* %C_copy_13, [4096 x double]* %C_copy_14, [4096 x double]* %C_copy_15, [4096 x double]* %X1_copy_0, [4096 x double]* %X1_copy_1, [4096 x double]* %X1_copy_2, [4096 x double]* %X1_copy_3, [4096 x double]* %X1_copy_4, [4096 x double]* %X1_copy_5, [4096 x double]* %X1_copy_6, [4096 x double]* %X1_copy_7, [4096 x double]* %X1_copy_8, [4096 x double]* %X1_copy_9, [4096 x double]* %X1_copy_10, [4096 x double]* %X1_copy_11, [4096 x double]* %X1_copy_12, [4096 x double]* %X1_copy_13, [4096 x double]* %X1_copy_14, [4096 x double]* %X1_copy_15, [4096 x double]* %X2_copy_0, [4096 x double]* %X2_copy_1, [4096 x double]* %X2_copy_2, [4096 x double]* %X2_copy_3, [4096 x double]* %X2_copy_4, [4096 x double]* %X2_copy_5, [4096 x double]* %X2_copy_6, [4096 x double]* %X2_copy_7, [4096 x double]* %X2_copy_8, [4096 x double]* %X2_copy_9, [4096 x double]* %X2_copy_10, [4096 x double]* %X2_copy_11, [4096 x double]* %X2_copy_12, [4096 x double]* %X2_copy_13, [4096 x double]* %X2_copy_14, [4096 x double]* %X2_copy_15, [4096 x double]* %D_copy_0, [4096 x double]* %D_copy_1, [4096 x double]* %D_copy_2, [4096 x double]* %D_copy_3, [4096 x double]* %D_copy_4, [4096 x double]* %D_copy_5, [4096 x double]* %D_copy_6, [4096 x double]* %D_copy_7, [4096 x double]* %D_copy_8, [4096 x double]* %D_copy_9, [4096 x double]* %D_copy_10, [4096 x double]* %D_copy_11, [4096 x double]* %D_copy_12, [4096 x double]* %D_copy_13, [4096 x double]* %D_copy_14, [4096 x double]* %D_copy_15)
  call void @copy_out([65536 x double]* %0, [4096 x double]* %A_copy_0, [4096 x double]* %A_copy_1, [4096 x double]* %A_copy_2, [4096 x double]* %A_copy_3, [4096 x double]* %A_copy_4, [4096 x double]* %A_copy_5, [4096 x double]* %A_copy_6, [4096 x double]* %A_copy_7, [4096 x double]* %A_copy_8, [4096 x double]* %A_copy_9, [4096 x double]* %A_copy_10, [4096 x double]* %A_copy_11, [4096 x double]* %A_copy_12, [4096 x double]* %A_copy_13, [4096 x double]* %A_copy_14, [4096 x double]* %A_copy_15, [65536 x double]* %1, [4096 x double]* %B_copy_0, [4096 x double]* %B_copy_1, [4096 x double]* %B_copy_2, [4096 x double]* %B_copy_3, [4096 x double]* %B_copy_4, [4096 x double]* %B_copy_5, [4096 x double]* %B_copy_6, [4096 x double]* %B_copy_7, [4096 x double]* %B_copy_8, [4096 x double]* %B_copy_9, [4096 x double]* %B_copy_10, [4096 x double]* %B_copy_11, [4096 x double]* %B_copy_12, [4096 x double]* %B_copy_13, [4096 x double]* %B_copy_14, [4096 x double]* %B_copy_15, [65536 x double]* %2, [4096 x double]* %C_copy_0, [4096 x double]* %C_copy_1, [4096 x double]* %C_copy_2, [4096 x double]* %C_copy_3, [4096 x double]* %C_copy_4, [4096 x double]* %C_copy_5, [4096 x double]* %C_copy_6, [4096 x double]* %C_copy_7, [4096 x double]* %C_copy_8, [4096 x double]* %C_copy_9, [4096 x double]* %C_copy_10, [4096 x double]* %C_copy_11, [4096 x double]* %C_copy_12, [4096 x double]* %C_copy_13, [4096 x double]* %C_copy_14, [4096 x double]* %C_copy_15, [65536 x double]* %3, [4096 x double]* %X1_copy_0, [4096 x double]* %X1_copy_1, [4096 x double]* %X1_copy_2, [4096 x double]* %X1_copy_3, [4096 x double]* %X1_copy_4, [4096 x double]* %X1_copy_5, [4096 x double]* %X1_copy_6, [4096 x double]* %X1_copy_7, [4096 x double]* %X1_copy_8, [4096 x double]* %X1_copy_9, [4096 x double]* %X1_copy_10, [4096 x double]* %X1_copy_11, [4096 x double]* %X1_copy_12, [4096 x double]* %X1_copy_13, [4096 x double]* %X1_copy_14, [4096 x double]* %X1_copy_15, [65536 x double]* %4, [4096 x double]* %X2_copy_0, [4096 x double]* %X2_copy_1, [4096 x double]* %X2_copy_2, [4096 x double]* %X2_copy_3, [4096 x double]* %X2_copy_4, [4096 x double]* %X2_copy_5, [4096 x double]* %X2_copy_6, [4096 x double]* %X2_copy_7, [4096 x double]* %X2_copy_8, [4096 x double]* %X2_copy_9, [4096 x double]* %X2_copy_10, [4096 x double]* %X2_copy_11, [4096 x double]* %X2_copy_12, [4096 x double]* %X2_copy_13, [4096 x double]* %X2_copy_14, [4096 x double]* %X2_copy_15, [65536 x double]* %5, [4096 x double]* %D_copy_0, [4096 x double]* %D_copy_1, [4096 x double]* %D_copy_2, [4096 x double]* %D_copy_3, [4096 x double]* %D_copy_4, [4096 x double]* %D_copy_5, [4096 x double]* %D_copy_6, [4096 x double]* %D_copy_7, [4096 x double]* %D_copy_8, [4096 x double]* %D_copy_9, [4096 x double]* %D_copy_10, [4096 x double]* %D_copy_11, [4096 x double]* %D_copy_12, [4096 x double]* %D_copy_13, [4096 x double]* %D_copy_14, [4096 x double]* %D_copy_15)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  call void @free(i8* %malloccall_8)
  call void @free(i8* %malloccall_9)
  call void @free(i8* %malloccall_10)
  call void @free(i8* %malloccall_11)
  call void @free(i8* %malloccall_12)
  call void @free(i8* %malloccall_13)
  call void @free(i8* %malloccall_14)
  call void @free(i8* %malloccall_15)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall1_4)
  call void @free(i8* %malloccall1_5)
  call void @free(i8* %malloccall1_6)
  call void @free(i8* %malloccall1_7)
  call void @free(i8* %malloccall1_8)
  call void @free(i8* %malloccall1_9)
  call void @free(i8* %malloccall1_10)
  call void @free(i8* %malloccall1_11)
  call void @free(i8* %malloccall1_12)
  call void @free(i8* %malloccall1_13)
  call void @free(i8* %malloccall1_14)
  call void @free(i8* %malloccall1_15)
  call void @free(i8* %malloccall2_0)
  call void @free(i8* %malloccall2_1)
  call void @free(i8* %malloccall2_2)
  call void @free(i8* %malloccall2_3)
  call void @free(i8* %malloccall2_4)
  call void @free(i8* %malloccall2_5)
  call void @free(i8* %malloccall2_6)
  call void @free(i8* %malloccall2_7)
  call void @free(i8* %malloccall2_8)
  call void @free(i8* %malloccall2_9)
  call void @free(i8* %malloccall2_10)
  call void @free(i8* %malloccall2_11)
  call void @free(i8* %malloccall2_12)
  call void @free(i8* %malloccall2_13)
  call void @free(i8* %malloccall2_14)
  call void @free(i8* %malloccall2_15)
  call void @free(i8* %malloccall3_0)
  call void @free(i8* %malloccall3_1)
  call void @free(i8* %malloccall3_2)
  call void @free(i8* %malloccall3_3)
  call void @free(i8* %malloccall3_4)
  call void @free(i8* %malloccall3_5)
  call void @free(i8* %malloccall3_6)
  call void @free(i8* %malloccall3_7)
  call void @free(i8* %malloccall3_8)
  call void @free(i8* %malloccall3_9)
  call void @free(i8* %malloccall3_10)
  call void @free(i8* %malloccall3_11)
  call void @free(i8* %malloccall3_12)
  call void @free(i8* %malloccall3_13)
  call void @free(i8* %malloccall3_14)
  call void @free(i8* %malloccall3_15)
  call void @free(i8* %malloccall4_0)
  call void @free(i8* %malloccall4_1)
  call void @free(i8* %malloccall4_2)
  call void @free(i8* %malloccall4_3)
  call void @free(i8* %malloccall4_4)
  call void @free(i8* %malloccall4_5)
  call void @free(i8* %malloccall4_6)
  call void @free(i8* %malloccall4_7)
  call void @free(i8* %malloccall4_8)
  call void @free(i8* %malloccall4_9)
  call void @free(i8* %malloccall4_10)
  call void @free(i8* %malloccall4_11)
  call void @free(i8* %malloccall4_12)
  call void @free(i8* %malloccall4_13)
  call void @free(i8* %malloccall4_14)
  call void @free(i8* %malloccall4_15)
  call void @free(i8* %malloccall5_0)
  call void @free(i8* %malloccall5_1)
  call void @free(i8* %malloccall5_2)
  call void @free(i8* %malloccall5_3)
  call void @free(i8* %malloccall5_4)
  call void @free(i8* %malloccall5_5)
  call void @free(i8* %malloccall5_6)
  call void @free(i8* %malloccall5_7)
  call void @free(i8* %malloccall5_8)
  call void @free(i8* %malloccall5_9)
  call void @free(i8* %malloccall5_10)
  call void @free(i8* %malloccall5_11)
  call void @free(i8* %malloccall5_12)
  call void @free(i8* %malloccall5_13)
  call void @free(i8* %malloccall5_14)
  call void @free(i8* %malloccall5_15)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [65536 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [4096 x double]* %_0, null
  %2 = icmp eq [65536 x double]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %dst.addr_0 = getelementptr [4096 x double], [4096 x double]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [4096 x double], [4096 x double]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [4096 x double], [4096 x double]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [4096 x double], [4096 x double]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [4096 x double], [4096 x double]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [4096 x double], [4096 x double]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [4096 x double], [4096 x double]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [4096 x double], [4096 x double]* %_7, i64 0, i64 %5
  %dst.addr_8 = getelementptr [4096 x double], [4096 x double]* %_8, i64 0, i64 %5
  %dst.addr_9 = getelementptr [4096 x double], [4096 x double]* %_9, i64 0, i64 %5
  %dst.addr_10 = getelementptr [4096 x double], [4096 x double]* %_10, i64 0, i64 %5
  %dst.addr_11 = getelementptr [4096 x double], [4096 x double]* %_11, i64 0, i64 %5
  %dst.addr_12 = getelementptr [4096 x double], [4096 x double]* %_12, i64 0, i64 %5
  %dst.addr_13 = getelementptr [4096 x double], [4096 x double]* %_13, i64 0, i64 %5
  %dst.addr_14 = getelementptr [4096 x double], [4096 x double]* %_14, i64 0, i64 %5
  %dst.addr_15 = getelementptr [4096 x double], [4096 x double]* %_15, i64 0, i64 %5
  %src.addr = getelementptr [65536 x double], [65536 x double]* %0, i64 0, i64 %for.loop.idx1
  %6 = load double, double* %src.addr, align 8
  %7 = trunc i64 %4 to i4
  switch i4 %7, label %dst.addr.case.15 [
    i4 0, label %dst.addr.case.0
    i4 1, label %dst.addr.case.1
    i4 2, label %dst.addr.case.2
    i4 3, label %dst.addr.case.3
    i4 4, label %dst.addr.case.4
    i4 5, label %dst.addr.case.5
    i4 6, label %dst.addr.case.6
    i4 7, label %dst.addr.case.7
    i4 -8, label %dst.addr.case.8
    i4 -7, label %dst.addr.case.9
    i4 -6, label %dst.addr.case.10
    i4 -5, label %dst.addr.case.11
    i4 -4, label %dst.addr.case.12
    i4 -3, label %dst.addr.case.13
    i4 -2, label %dst.addr.case.14
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_0, align 8
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_1, align 8
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_2, align 8
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_3, align 8
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_4, align 8
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_5, align 8
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_6, align 8
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_7, align 8
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_8, align 8
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store double %6, double* %dst.addr_9, align 8
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_10, align 8
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_11, align 8
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_12, align 8
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_13, align 8
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_14, align 8
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store double %6, double* %dst.addr_15, align 8
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([65536 x double]* readonly "orig.arg.no"="0", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [65536 x double]* readonly "orig.arg.no"="2", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [65536 x double]* readonly "orig.arg.no"="4", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [65536 x double]* readonly "orig.arg.no"="6", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [65536 x double]* readonly "orig.arg.no"="8", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568, [65536 x double]* readonly "orig.arg.no"="10", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_069, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_170, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_271, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_372, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_473, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_574, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_675, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_776, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_877, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_978, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1079, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1180, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1281, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1382, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1483, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1584) #3 {
entry:
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_0, [4096 x double]* %_1, [4096 x double]* %_2, [4096 x double]* %_3, [4096 x double]* %_4, [4096 x double]* %_5, [4096 x double]* %_6, [4096 x double]* %_7, [4096 x double]* %_8, [4096 x double]* %_9, [4096 x double]* %_10, [4096 x double]* %_11, [4096 x double]* %_12, [4096 x double]* %_13, [4096 x double]* %_14, [4096 x double]* %_15, [65536 x double]* %0)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_01, [4096 x double]* %_16, [4096 x double]* %_27, [4096 x double]* %_38, [4096 x double]* %_49, [4096 x double]* %_510, [4096 x double]* %_611, [4096 x double]* %_712, [4096 x double]* %_813, [4096 x double]* %_914, [4096 x double]* %_1015, [4096 x double]* %_1116, [4096 x double]* %_1217, [4096 x double]* %_1318, [4096 x double]* %_1419, [4096 x double]* %_1520, [65536 x double]* %1)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_021, [4096 x double]* %_122, [4096 x double]* %_223, [4096 x double]* %_324, [4096 x double]* %_425, [4096 x double]* %_526, [4096 x double]* %_627, [4096 x double]* %_728, [4096 x double]* %_829, [4096 x double]* %_930, [4096 x double]* %_1031, [4096 x double]* %_1132, [4096 x double]* %_1233, [4096 x double]* %_1334, [4096 x double]* %_1435, [4096 x double]* %_1536, [65536 x double]* %2)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_037, [4096 x double]* %_138, [4096 x double]* %_239, [4096 x double]* %_340, [4096 x double]* %_441, [4096 x double]* %_542, [4096 x double]* %_643, [4096 x double]* %_744, [4096 x double]* %_845, [4096 x double]* %_946, [4096 x double]* %_1047, [4096 x double]* %_1148, [4096 x double]* %_1249, [4096 x double]* %_1350, [4096 x double]* %_1451, [4096 x double]* %_1552, [65536 x double]* %3)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_053, [4096 x double]* %_154, [4096 x double]* %_255, [4096 x double]* %_356, [4096 x double]* %_457, [4096 x double]* %_558, [4096 x double]* %_659, [4096 x double]* %_760, [4096 x double]* %_861, [4096 x double]* %_962, [4096 x double]* %_1063, [4096 x double]* %_1164, [4096 x double]* %_1265, [4096 x double]* %_1366, [4096 x double]* %_1467, [4096 x double]* %_1568, [65536 x double]* %4)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_069, [4096 x double]* %_170, [4096 x double]* %_271, [4096 x double]* %_372, [4096 x double]* %_473, [4096 x double]* %_574, [4096 x double]* %_675, [4096 x double]* %_776, [4096 x double]* %_877, [4096 x double]* %_978, [4096 x double]* %_1079, [4096 x double]* %_1180, [4096 x double]* %_1281, [4096 x double]* %_1382, [4096 x double]* %_1483, [4096 x double]* %_1584, [65536 x double]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [65536 x double]* %0, null
  %2 = icmp eq [4096 x double]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [65536 x double], [65536 x double]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %src.addr_0 = getelementptr [4096 x double], [4096 x double]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [4096 x double], [4096 x double]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [4096 x double], [4096 x double]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [4096 x double], [4096 x double]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [4096 x double], [4096 x double]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [4096 x double], [4096 x double]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [4096 x double], [4096 x double]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [4096 x double], [4096 x double]* %_7, i64 0, i64 %5
  %src.addr_8 = getelementptr [4096 x double], [4096 x double]* %_8, i64 0, i64 %5
  %src.addr_9 = getelementptr [4096 x double], [4096 x double]* %_9, i64 0, i64 %5
  %src.addr_10 = getelementptr [4096 x double], [4096 x double]* %_10, i64 0, i64 %5
  %src.addr_11 = getelementptr [4096 x double], [4096 x double]* %_11, i64 0, i64 %5
  %src.addr_12 = getelementptr [4096 x double], [4096 x double]* %_12, i64 0, i64 %5
  %src.addr_13 = getelementptr [4096 x double], [4096 x double]* %_13, i64 0, i64 %5
  %src.addr_14 = getelementptr [4096 x double], [4096 x double]* %_14, i64 0, i64 %5
  %src.addr_15 = getelementptr [4096 x double], [4096 x double]* %_15, i64 0, i64 %5
  %6 = trunc i64 %4 to i4
  switch i4 %6, label %src.addr.case.15 [
    i4 0, label %src.addr.case.0
    i4 1, label %src.addr.case.1
    i4 2, label %src.addr.case.2
    i4 3, label %src.addr.case.3
    i4 4, label %src.addr.case.4
    i4 5, label %src.addr.case.5
    i4 6, label %src.addr.case.6
    i4 7, label %src.addr.case.7
    i4 -8, label %src.addr.case.8
    i4 -7, label %src.addr.case.9
    i4 -6, label %src.addr.case.10
    i4 -5, label %src.addr.case.11
    i4 -4, label %src.addr.case.12
    i4 -3, label %src.addr.case.13
    i4 -2, label %src.addr.case.14
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load double, double* %src.addr_0, align 8
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_16 = load double, double* %src.addr_1, align 8
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_27 = load double, double* %src.addr_2, align 8
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_38 = load double, double* %src.addr_3, align 8
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_49 = load double, double* %src.addr_4, align 8
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_510 = load double, double* %src.addr_5, align 8
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_611 = load double, double* %src.addr_6, align 8
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_712 = load double, double* %src.addr_7, align 8
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_813 = load double, double* %src.addr_8, align 8
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_914 = load double, double* %src.addr_9, align 8
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1015 = load double, double* %src.addr_10, align 8
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_1116 = load double, double* %src.addr_11, align 8
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_1217 = load double, double* %src.addr_12, align 8
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_1318 = load double, double* %src.addr_13, align 8
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_1419 = load double, double* %src.addr_14, align 8
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_1520 = load double, double* %src.addr_15, align 8
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi double [ %_01, %src.addr.case.0 ], [ %_16, %src.addr.case.1 ], [ %_27, %src.addr.case.2 ], [ %_38, %src.addr.case.3 ], [ %_49, %src.addr.case.4 ], [ %_510, %src.addr.case.5 ], [ %_611, %src.addr.case.6 ], [ %_712, %src.addr.case.7 ], [ %_813, %src.addr.case.8 ], [ %_914, %src.addr.case.9 ], [ %_1015, %src.addr.case.10 ], [ %_1116, %src.addr.case.11 ], [ %_1217, %src.addr.case.12 ], [ %_1318, %src.addr.case.13 ], [ %_1419, %src.addr.case.14 ], [ %_1520, %src.addr.case.15 ]
  store double %7, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([65536 x double]* "orig.arg.no"="0", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [65536 x double]* "orig.arg.no"="2", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [65536 x double]* "orig.arg.no"="4", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [65536 x double]* "orig.arg.no"="6", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [65536 x double]* "orig.arg.no"="8", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568, [65536 x double]* "orig.arg.no"="10", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_069, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_170, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_271, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_372, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_473, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_574, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_675, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_776, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_877, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_978, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1079, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1180, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1281, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1382, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1483, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1584) #4 {
entry:
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %0, [4096 x double]* %_0, [4096 x double]* %_1, [4096 x double]* %_2, [4096 x double]* %_3, [4096 x double]* %_4, [4096 x double]* %_5, [4096 x double]* %_6, [4096 x double]* %_7, [4096 x double]* %_8, [4096 x double]* %_9, [4096 x double]* %_10, [4096 x double]* %_11, [4096 x double]* %_12, [4096 x double]* %_13, [4096 x double]* %_14, [4096 x double]* %_15)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %1, [4096 x double]* %_01, [4096 x double]* %_16, [4096 x double]* %_27, [4096 x double]* %_38, [4096 x double]* %_49, [4096 x double]* %_510, [4096 x double]* %_611, [4096 x double]* %_712, [4096 x double]* %_813, [4096 x double]* %_914, [4096 x double]* %_1015, [4096 x double]* %_1116, [4096 x double]* %_1217, [4096 x double]* %_1318, [4096 x double]* %_1419, [4096 x double]* %_1520)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %2, [4096 x double]* %_021, [4096 x double]* %_122, [4096 x double]* %_223, [4096 x double]* %_324, [4096 x double]* %_425, [4096 x double]* %_526, [4096 x double]* %_627, [4096 x double]* %_728, [4096 x double]* %_829, [4096 x double]* %_930, [4096 x double]* %_1031, [4096 x double]* %_1132, [4096 x double]* %_1233, [4096 x double]* %_1334, [4096 x double]* %_1435, [4096 x double]* %_1536)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %3, [4096 x double]* %_037, [4096 x double]* %_138, [4096 x double]* %_239, [4096 x double]* %_340, [4096 x double]* %_441, [4096 x double]* %_542, [4096 x double]* %_643, [4096 x double]* %_744, [4096 x double]* %_845, [4096 x double]* %_946, [4096 x double]* %_1047, [4096 x double]* %_1148, [4096 x double]* %_1249, [4096 x double]* %_1350, [4096 x double]* %_1451, [4096 x double]* %_1552)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %4, [4096 x double]* %_053, [4096 x double]* %_154, [4096 x double]* %_255, [4096 x double]* %_356, [4096 x double]* %_457, [4096 x double]* %_558, [4096 x double]* %_659, [4096 x double]* %_760, [4096 x double]* %_861, [4096 x double]* %_962, [4096 x double]* %_1063, [4096 x double]* %_1164, [4096 x double]* %_1265, [4096 x double]* %_1366, [4096 x double]* %_1467, [4096 x double]* %_1568)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %5, [4096 x double]* %_069, [4096 x double]* %_170, [4096 x double]* %_271, [4096 x double]* %_372, [4096 x double]* %_473, [4096 x double]* %_574, [4096 x double]* %_675, [4096 x double]* %_776, [4096 x double]* %_877, [4096 x double]* %_978, [4096 x double]* %_1079, [4096 x double]* %_1180, [4096 x double]* %_1281, [4096 x double]* %_1382, [4096 x double]* %_1483, [4096 x double]* %_1584)
  ret void
}

declare void @apatb_kp_502_7_hw([4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*)

define void @kp_502_7_hw_stub_wrapper([4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 524288)
  %96 = bitcast i8* %malloccall to [65536 x double]*
  %malloccall1 = tail call i8* @malloc(i64 524288)
  %97 = bitcast i8* %malloccall1 to [65536 x double]*
  %malloccall2 = tail call i8* @malloc(i64 524288)
  %98 = bitcast i8* %malloccall2 to [65536 x double]*
  %malloccall3 = tail call i8* @malloc(i64 524288)
  %99 = bitcast i8* %malloccall3 to [65536 x double]*
  %malloccall4 = tail call i8* @malloc(i64 524288)
  %100 = bitcast i8* %malloccall4 to [65536 x double]*
  %malloccall5 = tail call i8* @malloc(i64 524288)
  %101 = bitcast i8* %malloccall5 to [65536 x double]*
  call void @copy_out([65536 x double]* %96, [4096 x double]* %0, [4096 x double]* %1, [4096 x double]* %2, [4096 x double]* %3, [4096 x double]* %4, [4096 x double]* %5, [4096 x double]* %6, [4096 x double]* %7, [4096 x double]* %8, [4096 x double]* %9, [4096 x double]* %10, [4096 x double]* %11, [4096 x double]* %12, [4096 x double]* %13, [4096 x double]* %14, [4096 x double]* %15, [65536 x double]* %97, [4096 x double]* %16, [4096 x double]* %17, [4096 x double]* %18, [4096 x double]* %19, [4096 x double]* %20, [4096 x double]* %21, [4096 x double]* %22, [4096 x double]* %23, [4096 x double]* %24, [4096 x double]* %25, [4096 x double]* %26, [4096 x double]* %27, [4096 x double]* %28, [4096 x double]* %29, [4096 x double]* %30, [4096 x double]* %31, [65536 x double]* %98, [4096 x double]* %32, [4096 x double]* %33, [4096 x double]* %34, [4096 x double]* %35, [4096 x double]* %36, [4096 x double]* %37, [4096 x double]* %38, [4096 x double]* %39, [4096 x double]* %40, [4096 x double]* %41, [4096 x double]* %42, [4096 x double]* %43, [4096 x double]* %44, [4096 x double]* %45, [4096 x double]* %46, [4096 x double]* %47, [65536 x double]* %99, [4096 x double]* %48, [4096 x double]* %49, [4096 x double]* %50, [4096 x double]* %51, [4096 x double]* %52, [4096 x double]* %53, [4096 x double]* %54, [4096 x double]* %55, [4096 x double]* %56, [4096 x double]* %57, [4096 x double]* %58, [4096 x double]* %59, [4096 x double]* %60, [4096 x double]* %61, [4096 x double]* %62, [4096 x double]* %63, [65536 x double]* %100, [4096 x double]* %64, [4096 x double]* %65, [4096 x double]* %66, [4096 x double]* %67, [4096 x double]* %68, [4096 x double]* %69, [4096 x double]* %70, [4096 x double]* %71, [4096 x double]* %72, [4096 x double]* %73, [4096 x double]* %74, [4096 x double]* %75, [4096 x double]* %76, [4096 x double]* %77, [4096 x double]* %78, [4096 x double]* %79, [65536 x double]* %101, [4096 x double]* %80, [4096 x double]* %81, [4096 x double]* %82, [4096 x double]* %83, [4096 x double]* %84, [4096 x double]* %85, [4096 x double]* %86, [4096 x double]* %87, [4096 x double]* %88, [4096 x double]* %89, [4096 x double]* %90, [4096 x double]* %91, [4096 x double]* %92, [4096 x double]* %93, [4096 x double]* %94, [4096 x double]* %95)
  %102 = bitcast [65536 x double]* %96 to double*
  %103 = bitcast [65536 x double]* %97 to double*
  %104 = bitcast [65536 x double]* %98 to double*
  %105 = bitcast [65536 x double]* %99 to double*
  %106 = bitcast [65536 x double]* %100 to double*
  %107 = bitcast [65536 x double]* %101 to double*
  call void @kp_502_7_hw_stub(double* %102, double* %103, double* %104, double* %105, double* %106, double* %107)
  call void @copy_in([65536 x double]* %96, [4096 x double]* %0, [4096 x double]* %1, [4096 x double]* %2, [4096 x double]* %3, [4096 x double]* %4, [4096 x double]* %5, [4096 x double]* %6, [4096 x double]* %7, [4096 x double]* %8, [4096 x double]* %9, [4096 x double]* %10, [4096 x double]* %11, [4096 x double]* %12, [4096 x double]* %13, [4096 x double]* %14, [4096 x double]* %15, [65536 x double]* %97, [4096 x double]* %16, [4096 x double]* %17, [4096 x double]* %18, [4096 x double]* %19, [4096 x double]* %20, [4096 x double]* %21, [4096 x double]* %22, [4096 x double]* %23, [4096 x double]* %24, [4096 x double]* %25, [4096 x double]* %26, [4096 x double]* %27, [4096 x double]* %28, [4096 x double]* %29, [4096 x double]* %30, [4096 x double]* %31, [65536 x double]* %98, [4096 x double]* %32, [4096 x double]* %33, [4096 x double]* %34, [4096 x double]* %35, [4096 x double]* %36, [4096 x double]* %37, [4096 x double]* %38, [4096 x double]* %39, [4096 x double]* %40, [4096 x double]* %41, [4096 x double]* %42, [4096 x double]* %43, [4096 x double]* %44, [4096 x double]* %45, [4096 x double]* %46, [4096 x double]* %47, [65536 x double]* %99, [4096 x double]* %48, [4096 x double]* %49, [4096 x double]* %50, [4096 x double]* %51, [4096 x double]* %52, [4096 x double]* %53, [4096 x double]* %54, [4096 x double]* %55, [4096 x double]* %56, [4096 x double]* %57, [4096 x double]* %58, [4096 x double]* %59, [4096 x double]* %60, [4096 x double]* %61, [4096 x double]* %62, [4096 x double]* %63, [65536 x double]* %100, [4096 x double]* %64, [4096 x double]* %65, [4096 x double]* %66, [4096 x double]* %67, [4096 x double]* %68, [4096 x double]* %69, [4096 x double]* %70, [4096 x double]* %71, [4096 x double]* %72, [4096 x double]* %73, [4096 x double]* %74, [4096 x double]* %75, [4096 x double]* %76, [4096 x double]* %77, [4096 x double]* %78, [4096 x double]* %79, [65536 x double]* %101, [4096 x double]* %80, [4096 x double]* %81, [4096 x double]* %82, [4096 x double]* %83, [4096 x double]* %84, [4096 x double]* %85, [4096 x double]* %86, [4096 x double]* %87, [4096 x double]* %88, [4096 x double]* %89, [4096 x double]* %90, [4096 x double]* %91, [4096 x double]* %92, [4096 x double]* %93, [4096 x double]* %94, [4096 x double]* %95)
  ret void
}

declare void @kp_502_7_hw_stub(double*, double*, double*, double*, double*, double*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 4, column: 169, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_7", linkageName: "_Z8kp_502_7PdS_S_S_S_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_7.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_7.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !16)
!15 = !DIFile(filename: "G:/Xilinx_lab/KP_502_7_v3/kp_502_7/sol3_2_double_16/.autopilot/db\5Ckp_502_7.pp.0.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!16 = !{!17, !24, !26, !28, !32, !34, !36, !38, !40, !42, !44, !46, !52, !56, !58, !60, !65, !67, !69, !71, !73, !75, !77, !79, !82, !84, !88, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !117, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !155, !159, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !185, !189, !193, !195, !197, !199, !204, !208, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !241, !245, !249, !251, !253, !255, !262, !266, !270, !272, !274, !276, !278, !280, !282, !286, !290, !292, !294, !296, !298, !302, !306, !310, !312, !314, !316, !318, !320, !322, !326, !330, !334, !336, !340, !344, !346, !348, !350, !352, !354, !356, !361, !367, !371, !375, !380, !382, !386, !390, !403, !407, !411, !415, !419, !424, !428, !432, !436, !440, !448, !452, !456, !460, !464, !469, !475, !479, !483, !485, !493, !497, !504, !506, !510, !514, !518, !522, !527, !531, !535, !536, !537, !538, !540, !541, !542, !543, !544, !545, !546, !548, !549, !550, !551, !552, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!17 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !19, file: !23, line: 106)
!18 = !DINamespace(name: "std", scope: null)
!19 = !DISubprogram(name: "acos", scope: !20, file: !20, line: 190, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!20 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!21 = !DISubroutineType(types: !22)
!22 = !{!13, !13}
!23 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !25, file: !23, line: 125)
!25 = !DISubprogram(name: "asin", scope: !20, file: !20, line: 189, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !27, file: !23, line: 144)
!27 = !DISubprogram(name: "atan", scope: !20, file: !20, line: 191, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !29, file: !23, line: 163)
!29 = !DISubprogram(name: "atan2", scope: !20, file: !20, line: 192, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DISubroutineType(types: !31)
!31 = !{!13, !13, !13}
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !33, file: !23, line: 184)
!33 = !DISubprogram(name: "ceil", scope: !20, file: !20, line: 198, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !35, file: !23, line: 203)
!35 = !DISubprogram(name: "cos", scope: !20, file: !20, line: 184, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !37, file: !23, line: 222)
!37 = !DISubprogram(name: "cosh", scope: !20, file: !20, line: 187, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !39, file: !23, line: 241)
!39 = !DISubprogram(name: "exp", scope: !20, file: !20, line: 193, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !41, file: !23, line: 260)
!41 = !DISubprogram(name: "fabs", scope: !20, file: !20, line: 204, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !43, file: !23, line: 279)
!43 = !DISubprogram(name: "floor", scope: !20, file: !20, line: 199, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !45, file: !23, line: 298)
!45 = !DISubprogram(name: "fmod", scope: !20, file: !20, line: 246, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !47, file: !23, line: 319)
!47 = !DISubprogram(name: "frexp", scope: !20, file: !20, line: 244, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DISubroutineType(types: !49)
!49 = !{!13, !13, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !53, file: !23, line: 338)
!53 = !DISubprogram(name: "ldexp", scope: !20, file: !20, line: 243, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DISubroutineType(types: !55)
!55 = !{!13, !13, !51}
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !57, file: !23, line: 357)
!57 = !DISubprogram(name: "log", scope: !20, file: !20, line: 194, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !59, file: !23, line: 376)
!59 = !DISubprogram(name: "log10", scope: !20, file: !20, line: 195, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !61, file: !23, line: 395)
!61 = !DISubprogram(name: "modf", scope: !20, file: !20, line: 245, type: !62, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!13, !13, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !66, file: !23, line: 407)
!66 = !DISubprogram(name: "pow", scope: !20, file: !20, line: 196, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !68, file: !23, line: 444)
!68 = !DISubprogram(name: "sin", scope: !20, file: !20, line: 183, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !70, file: !23, line: 463)
!70 = !DISubprogram(name: "sinh", scope: !20, file: !20, line: 186, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !72, file: !23, line: 482)
!72 = !DISubprogram(name: "sqrt", scope: !20, file: !20, line: 197, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !74, file: !23, line: 501)
!74 = !DISubprogram(name: "tan", scope: !20, file: !20, line: 185, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !76, file: !23, line: 520)
!76 = !DISubprogram(name: "tanh", scope: !20, file: !20, line: 188, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !78, file: !23, line: 1077)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !20, line: 373, baseType: !13)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !80, file: !23, line: 1078)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !20, line: 372, baseType: !81)
!81 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !83, file: !23, line: 1081)
!83 = !DISubprogram(name: "acosh", scope: !20, file: !20, line: 705, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !85, file: !23, line: 1082)
!85 = !DISubprogram(name: "acoshf", scope: !20, file: !20, line: 706, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!81, !81}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !89, file: !23, line: 1083)
!89 = !DISubprogram(name: "acoshl", scope: !20, file: !20, line: 707, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !92}
!92 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !94, file: !23, line: 1085)
!94 = !DISubprogram(name: "asinh", scope: !20, file: !20, line: 710, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !96, file: !23, line: 1086)
!96 = !DISubprogram(name: "asinhf", scope: !20, file: !20, line: 711, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !98, file: !23, line: 1087)
!98 = !DISubprogram(name: "asinhl", scope: !20, file: !20, line: 712, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !100, file: !23, line: 1089)
!100 = !DISubprogram(name: "atanh", scope: !20, file: !20, line: 715, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !102, file: !23, line: 1090)
!102 = !DISubprogram(name: "atanhf", scope: !20, file: !20, line: 716, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !104, file: !23, line: 1091)
!104 = !DISubprogram(name: "atanhl", scope: !20, file: !20, line: 717, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !106, file: !23, line: 1093)
!106 = !DISubprogram(name: "cbrt", scope: !20, file: !20, line: 877, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !108, file: !23, line: 1094)
!108 = !DISubprogram(name: "cbrtf", scope: !20, file: !20, line: 878, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !110, file: !23, line: 1095)
!110 = !DISubprogram(name: "cbrtl", scope: !20, file: !20, line: 879, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !112, file: !23, line: 1097)
!112 = !DISubprogram(name: "copysign", scope: !20, file: !20, line: 1063, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !114, file: !23, line: 1098)
!114 = !DISubprogram(name: "copysignf", scope: !20, file: !20, line: 1064, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!81, !81, !81}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !118, file: !23, line: 1099)
!118 = !DISubprogram(name: "copysignl", scope: !20, file: !20, line: 1065, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!92, !92, !92}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !122, file: !23, line: 1101)
!122 = !DISubprogram(name: "erf", scope: !20, file: !20, line: 901, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !124, file: !23, line: 1102)
!124 = !DISubprogram(name: "erff", scope: !20, file: !20, line: 902, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !126, file: !23, line: 1103)
!126 = !DISubprogram(name: "erfl", scope: !20, file: !20, line: 903, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !128, file: !23, line: 1105)
!128 = !DISubprogram(name: "erfc", scope: !20, file: !20, line: 906, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !130, file: !23, line: 1106)
!130 = !DISubprogram(name: "erfcf", scope: !20, file: !20, line: 907, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !132, file: !23, line: 1107)
!132 = !DISubprogram(name: "erfcl", scope: !20, file: !20, line: 908, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !134, file: !23, line: 1109)
!134 = !DISubprogram(name: "exp2", scope: !20, file: !20, line: 728, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !136, file: !23, line: 1110)
!136 = !DISubprogram(name: "exp2f", scope: !20, file: !20, line: 729, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !138, file: !23, line: 1111)
!138 = !DISubprogram(name: "exp2l", scope: !20, file: !20, line: 730, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !140, file: !23, line: 1113)
!140 = !DISubprogram(name: "expm1", scope: !20, file: !20, line: 734, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !142, file: !23, line: 1114)
!142 = !DISubprogram(name: "expm1f", scope: !20, file: !20, line: 735, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !144, file: !23, line: 1115)
!144 = !DISubprogram(name: "expm1l", scope: !20, file: !20, line: 736, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !146, file: !23, line: 1117)
!146 = !DISubprogram(name: "fdim", scope: !20, file: !20, line: 1109, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !148, file: !23, line: 1118)
!148 = !DISubprogram(name: "fdimf", scope: !20, file: !20, line: 1110, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !150, file: !23, line: 1119)
!150 = !DISubprogram(name: "fdiml", scope: !20, file: !20, line: 1111, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !152, file: !23, line: 1121)
!152 = !DISubprogram(name: "fma", scope: !20, file: !20, line: 1130, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!13, !13, !13, !13}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !156, file: !23, line: 1122)
!156 = !DISubprogram(name: "fmaf", scope: !20, file: !20, line: 1131, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!81, !81, !81, !81}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !160, file: !23, line: 1123)
!160 = !DISubprogram(name: "fmal", scope: !20, file: !20, line: 1132, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!92, !92, !92, !92}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !164, file: !23, line: 1125)
!164 = !DISubprogram(name: "fmax", scope: !20, file: !20, line: 1119, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !166, file: !23, line: 1126)
!166 = !DISubprogram(name: "fmaxf", scope: !20, file: !20, line: 1120, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !168, file: !23, line: 1127)
!168 = !DISubprogram(name: "fmaxl", scope: !20, file: !20, line: 1121, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !170, file: !23, line: 1129)
!170 = !DISubprogram(name: "fmin", scope: !20, file: !20, line: 1124, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !172, file: !23, line: 1130)
!172 = !DISubprogram(name: "fminf", scope: !20, file: !20, line: 1125, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !174, file: !23, line: 1131)
!174 = !DISubprogram(name: "fminl", scope: !20, file: !20, line: 1126, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !176, file: !23, line: 1133)
!176 = !DISubprogram(name: "hypot", scope: !20, file: !20, line: 882, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !178, file: !23, line: 1134)
!178 = !DISubprogram(name: "hypotf", scope: !20, file: !20, line: 883, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !180, file: !23, line: 1135)
!180 = !DISubprogram(name: "hypotl", scope: !20, file: !20, line: 887, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !182, file: !23, line: 1137)
!182 = !DISubprogram(name: "ilogb", scope: !20, file: !20, line: 748, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!51, !13}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !186, file: !23, line: 1138)
!186 = !DISubprogram(name: "ilogbf", scope: !20, file: !20, line: 749, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!51, !81}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !190, file: !23, line: 1139)
!190 = !DISubprogram(name: "ilogbl", scope: !20, file: !20, line: 750, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{!51, !92}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !194, file: !23, line: 1141)
!194 = !DISubprogram(name: "lgamma", scope: !20, file: !20, line: 911, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !196, file: !23, line: 1142)
!196 = !DISubprogram(name: "lgammaf", scope: !20, file: !20, line: 912, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !198, file: !23, line: 1143)
!198 = !DISubprogram(name: "lgammal", scope: !20, file: !20, line: 913, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !200, file: !23, line: 1145)
!200 = !DISubprogram(name: "llrint", scope: !20, file: !20, line: 946, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !13}
!203 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !205, file: !23, line: 1146)
!205 = !DISubprogram(name: "llrintf", scope: !20, file: !20, line: 947, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!203, !81}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !209, file: !23, line: 1147)
!209 = !DISubprogram(name: "llrintl", scope: !20, file: !20, line: 948, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!203, !92}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !213, file: !23, line: 1149)
!213 = !DISubprogram(name: "llround", scope: !20, file: !20, line: 1038, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !215, file: !23, line: 1150)
!215 = !DISubprogram(name: "llroundf", scope: !20, file: !20, line: 1039, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !217, file: !23, line: 1151)
!217 = !DISubprogram(name: "llroundl", scope: !20, file: !20, line: 1040, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !219, file: !23, line: 1153)
!219 = !DISubprogram(name: "log1p", scope: !20, file: !20, line: 768, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !221, file: !23, line: 1154)
!221 = !DISubprogram(name: "log1pf", scope: !20, file: !20, line: 769, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !223, file: !23, line: 1155)
!223 = !DISubprogram(name: "log1pl", scope: !20, file: !20, line: 770, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !225, file: !23, line: 1157)
!225 = !DISubprogram(name: "log2", scope: !20, file: !20, line: 773, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !227, file: !23, line: 1158)
!227 = !DISubprogram(name: "log2f", scope: !20, file: !20, line: 774, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !229, file: !23, line: 1159)
!229 = !DISubprogram(name: "log2l", scope: !20, file: !20, line: 775, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !231, file: !23, line: 1161)
!231 = !DISubprogram(name: "logb", scope: !20, file: !20, line: 778, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !233, file: !23, line: 1162)
!233 = !DISubprogram(name: "logbf", scope: !20, file: !20, line: 779, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !235, file: !23, line: 1163)
!235 = !DISubprogram(name: "logbl", scope: !20, file: !20, line: 780, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !237, file: !23, line: 1165)
!237 = !DISubprogram(name: "lrint", scope: !20, file: !20, line: 942, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !13}
!240 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !242, file: !23, line: 1166)
!242 = !DISubprogram(name: "lrintf", scope: !20, file: !20, line: 943, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!240, !81}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !246, file: !23, line: 1167)
!246 = !DISubprogram(name: "lrintl", scope: !20, file: !20, line: 944, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!240, !92}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !250, file: !23, line: 1169)
!250 = !DISubprogram(name: "lround", scope: !20, file: !20, line: 1035, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !252, file: !23, line: 1170)
!252 = !DISubprogram(name: "lroundf", scope: !20, file: !20, line: 1036, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !254, file: !23, line: 1171)
!254 = !DISubprogram(name: "lroundl", scope: !20, file: !20, line: 1037, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !256, file: !23, line: 1173)
!256 = !DISubprogram(name: "nan", scope: !20, file: !20, line: 1087, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!13, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !263, file: !23, line: 1174)
!263 = !DISubprogram(name: "nanf", scope: !20, file: !20, line: 1088, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!81, !259}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !267, file: !23, line: 1175)
!267 = !DISubprogram(name: "nanl", scope: !20, file: !20, line: 1089, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!92, !259}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !271, file: !23, line: 1177)
!271 = !DISubprogram(name: "nearbyint", scope: !20, file: !20, line: 931, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !273, file: !23, line: 1178)
!273 = !DISubprogram(name: "nearbyintf", scope: !20, file: !20, line: 932, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !275, file: !23, line: 1179)
!275 = !DISubprogram(name: "nearbyintl", scope: !20, file: !20, line: 933, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !277, file: !23, line: 1181)
!277 = !DISubprogram(name: "nextafter", scope: !20, file: !20, line: 1098, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !279, file: !23, line: 1182)
!279 = !DISubprogram(name: "nextafterf", scope: !20, file: !20, line: 1099, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !281, file: !23, line: 1183)
!281 = !DISubprogram(name: "nextafterl", scope: !20, file: !20, line: 1100, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !283, file: !23, line: 1185)
!283 = !DISubprogram(name: "nexttoward", scope: !20, file: !20, line: 1103, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!13, !13, !92}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !287, file: !23, line: 1186)
!287 = !DISubprogram(name: "nexttowardf", scope: !20, file: !20, line: 1104, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!81, !81, !92}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !291, file: !23, line: 1187)
!291 = !DISubprogram(name: "nexttowardl", scope: !20, file: !20, line: 1105, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !293, file: !23, line: 1189)
!293 = !DISubprogram(name: "remainder", scope: !20, file: !20, line: 1053, type: !30, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !295, file: !23, line: 1190)
!295 = !DISubprogram(name: "remainderf", scope: !20, file: !20, line: 1054, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !297, file: !23, line: 1191)
!297 = !DISubprogram(name: "remainderl", scope: !20, file: !20, line: 1055, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !299, file: !23, line: 1193)
!299 = !DISubprogram(name: "remquo", scope: !20, file: !20, line: 1058, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!13, !13, !13, !50}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !303, file: !23, line: 1194)
!303 = !DISubprogram(name: "remquof", scope: !20, file: !20, line: 1059, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!81, !81, !81, !50}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !307, file: !23, line: 1195)
!307 = !DISubprogram(name: "remquol", scope: !20, file: !20, line: 1060, type: !308, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!92, !92, !92, !50}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !311, file: !23, line: 1197)
!311 = !DISubprogram(name: "rint", scope: !20, file: !20, line: 937, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !313, file: !23, line: 1198)
!313 = !DISubprogram(name: "rintf", scope: !20, file: !20, line: 938, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !315, file: !23, line: 1199)
!315 = !DISubprogram(name: "rintl", scope: !20, file: !20, line: 939, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !317, file: !23, line: 1201)
!317 = !DISubprogram(name: "round", scope: !20, file: !20, line: 1030, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !319, file: !23, line: 1202)
!319 = !DISubprogram(name: "roundf", scope: !20, file: !20, line: 1031, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !321, file: !23, line: 1203)
!321 = !DISubprogram(name: "roundl", scope: !20, file: !20, line: 1032, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !323, file: !23, line: 1205)
!323 = !DISubprogram(name: "scalbln", scope: !20, file: !20, line: 871, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!13, !13, !240}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !327, file: !23, line: 1206)
!327 = !DISubprogram(name: "scalblnf", scope: !20, file: !20, line: 872, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!81, !81, !240}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !331, file: !23, line: 1207)
!331 = !DISubprogram(name: "scalblnl", scope: !20, file: !20, line: 873, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!92, !92, !240}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !335, file: !23, line: 1209)
!335 = !DISubprogram(name: "scalbn", scope: !20, file: !20, line: 867, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !337, file: !23, line: 1210)
!337 = !DISubprogram(name: "scalbnf", scope: !20, file: !20, line: 868, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!81, !81, !51}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !341, file: !23, line: 1211)
!341 = !DISubprogram(name: "scalbnl", scope: !20, file: !20, line: 869, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!92, !92, !51}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !345, file: !23, line: 1213)
!345 = !DISubprogram(name: "tgamma", scope: !20, file: !20, line: 918, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !347, file: !23, line: 1214)
!347 = !DISubprogram(name: "tgammaf", scope: !20, file: !20, line: 919, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !349, file: !23, line: 1215)
!349 = !DISubprogram(name: "tgammal", scope: !20, file: !20, line: 920, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !351, file: !23, line: 1217)
!351 = !DISubprogram(name: "trunc", scope: !20, file: !20, line: 1044, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !353, file: !23, line: 1218)
!353 = !DISubprogram(name: "truncf", scope: !20, file: !20, line: 1045, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !355, file: !23, line: 1219)
!355 = !DISubprogram(name: "truncl", scope: !20, file: !20, line: 1046, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !357, file: !360, line: 124)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !358, line: 53, baseType: !359)
!358 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !358, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!360 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !362, file: !360, line: 125)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !358, line: 58, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !358, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !364, identifier: "_ZTS7_ldiv_t")
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !363, file: !358, line: 56, baseType: !240, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !363, file: !358, line: 57, baseType: !240, size: 64, offset: 64)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !368, file: !360, line: 127)
!368 = !DISubprogram(name: "abort", scope: !358, file: !358, line: 320, type: !369, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{null}
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !372, file: !360, line: 128)
!372 = !DISubprogram(name: "abs", scope: !20, file: !20, line: 254, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!51, !51}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !376, file: !360, line: 129)
!376 = !DISubprogram(name: "atexit", scope: !358, file: !358, line: 340, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{!51, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !381, file: !360, line: 135)
!381 = !DISubprogram(name: "atof", scope: !20, file: !20, line: 259, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !383, file: !360, line: 136)
!383 = !DISubprogram(name: "atoi", scope: !358, file: !358, line: 346, type: !384, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{!51, !259}
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !387, file: !360, line: 137)
!387 = !DISubprogram(name: "atol", scope: !358, file: !358, line: 348, type: !388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{!240, !259}
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !391, file: !360, line: 138)
!391 = !DISubprogram(name: "bsearch", scope: !358, file: !358, line: 352, type: !392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !395, !395, !397, !397, !400}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !398, line: 35, baseType: !399)
!398 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!399 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!51, !395, !395}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !404, file: !360, line: 139)
!404 = !DISubprogram(name: "calloc", scope: !358, file: !358, line: 446, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!394, !397, !397}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !408, file: !360, line: 140)
!408 = !DISubprogram(name: "div", scope: !358, file: !358, line: 358, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{!357, !51, !51}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !412, file: !360, line: 141)
!412 = !DISubprogram(name: "exit", scope: !358, file: !358, line: 306, type: !413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !51}
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !416, file: !360, line: 142)
!416 = !DISubprogram(name: "free", scope: !358, file: !358, line: 447, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !394}
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !420, file: !360, line: 143)
!420 = !DISubprogram(name: "getenv", scope: !358, file: !358, line: 359, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !259}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !425, file: !360, line: 144)
!425 = !DISubprogram(name: "labs", scope: !20, file: !20, line: 255, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!240, !240}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !429, file: !360, line: 145)
!429 = !DISubprogram(name: "ldiv", scope: !358, file: !358, line: 369, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!362, !240, !240}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !433, file: !360, line: 146)
!433 = !DISubprogram(name: "malloc", scope: !358, file: !358, line: 448, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!394, !397}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !437, file: !360, line: 148)
!437 = !DISubprogram(name: "mblen", scope: !358, file: !358, line: 371, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!51, !259, !397}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !441, file: !360, line: 149)
!441 = !DISubprogram(name: "mbstowcs", scope: !358, file: !358, line: 379, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{!397, !444, !447, !397}
!444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !449, file: !360, line: 150)
!449 = !DISubprogram(name: "mbtowc", scope: !358, file: !358, line: 377, type: !450, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DISubroutineType(types: !451)
!451 = !{!51, !444, !447, !397}
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !453, file: !360, line: 152)
!453 = !DISubprogram(name: "qsort", scope: !358, file: !358, line: 353, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !394, !397, !397, !400}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !457, file: !360, line: 158)
!457 = !DISubprogram(name: "rand", scope: !358, file: !358, line: 382, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!51}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !461, file: !360, line: 159)
!461 = !DISubprogram(name: "realloc", scope: !358, file: !358, line: 449, type: !462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DISubroutineType(types: !463)
!463 = !{!394, !394, !397}
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !465, file: !360, line: 160)
!465 = !DISubprogram(name: "srand", scope: !358, file: !358, line: 384, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !470, file: !360, line: 161)
!470 = !DISubprogram(name: "strtod", scope: !358, file: !358, line: 396, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubroutineType(types: !472)
!472 = !{!13, !447, !473}
!473 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !476, file: !360, line: 162)
!476 = !DISubprogram(name: "strtol", scope: !358, file: !358, line: 430, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!240, !447, !473, !51}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !480, file: !360, line: 163)
!480 = !DISubprogram(name: "strtoul", scope: !358, file: !358, line: 432, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!399, !447, !473, !51}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !484, file: !360, line: 164)
!484 = !DISubprogram(name: "system", scope: !358, file: !358, line: 436, type: !384, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !486, file: !360, line: 166)
!486 = !DISubprogram(name: "wcstombs", scope: !358, file: !358, line: 441, type: !487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DISubroutineType(types: !488)
!488 = !{!397, !489, !490, !397}
!489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !423)
!490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !494, file: !360, line: 167)
!494 = !DISubprogram(name: "wctomb", scope: !358, file: !358, line: 439, type: !495, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{!51, !423, !446}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !499, file: !360, line: 220)
!498 = !DINamespace(name: "__gnu_cxx", scope: null)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !358, line: 644, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !501, identifier: "_ZTS7lldiv_t")
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !500, file: !358, line: 644, baseType: !203, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !500, file: !358, line: 644, baseType: !203, size: 64, offset: 64)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !505, file: !360, line: 226)
!505 = !DISubprogram(name: "_Exit", scope: !358, file: !358, line: 311, type: !413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !507, file: !360, line: 230)
!507 = !DISubprogram(name: "llabs", scope: !358, file: !358, line: 648, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!203, !203}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !511, file: !360, line: 236)
!511 = !DISubprogram(name: "lldiv", scope: !358, file: !358, line: 646, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{!499, !203, !203}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !515, file: !360, line: 247)
!515 = !DISubprogram(name: "atoll", scope: !358, file: !358, line: 657, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!203, !259}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !519, file: !360, line: 248)
!519 = !DISubprogram(name: "strtoll", scope: !358, file: !358, line: 653, type: !520, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{!203, !447, !473, !51}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !523, file: !360, line: 249)
!523 = !DISubprogram(name: "strtoull", scope: !358, file: !358, line: 654, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !447, !473, !51}
!526 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !528, file: !360, line: 251)
!528 = !DISubprogram(name: "strtof", scope: !358, file: !358, line: 403, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!81, !447, !473}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !498, entity: !532, file: !360, line: 252)
!532 = !DISubprogram(name: "strtold", scope: !358, file: !358, line: 414, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!92, !447, !473}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !499, file: !360, line: 260)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !505, file: !360, line: 262)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !507, file: !360, line: 264)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !539, file: !360, line: 265)
!539 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !498, file: !360, line: 233, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !511, file: !360, line: 266)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !515, file: !360, line: 268)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !528, file: !360, line: 269)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !519, file: !360, line: 270)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !523, file: !360, line: 271)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !532, file: !360, line: 272)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !368, file: !547, line: 38)
!547 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3")
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !376, file: !547, line: 39)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !412, file: !547, line: 40)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !357, file: !547, line: 51)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !362, file: !547, line: 52)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !553, file: !547, line: 54)
!553 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !18, file: !360, line: 185, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !556}
!556 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !381, file: !547, line: 55)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !383, file: !547, line: 56)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !387, file: !547, line: 57)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !391, file: !547, line: 58)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !404, file: !547, line: 59)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !539, file: !547, line: 60)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !416, file: !547, line: 61)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !420, file: !547, line: 62)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !425, file: !547, line: 63)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !429, file: !547, line: 64)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !433, file: !547, line: 65)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !437, file: !547, line: 67)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !441, file: !547, line: 68)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !449, file: !547, line: 69)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !453, file: !547, line: 71)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !457, file: !547, line: 72)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !461, file: !547, line: 73)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !465, file: !547, line: 74)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !470, file: !547, line: 75)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !476, file: !547, line: 76)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !480, file: !547, line: 77)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !484, file: !547, line: 78)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !486, file: !547, line: 80)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !494, file: !547, line: 81)
!581 = !DILocation(line: 5, column: 9, scope: !6)
