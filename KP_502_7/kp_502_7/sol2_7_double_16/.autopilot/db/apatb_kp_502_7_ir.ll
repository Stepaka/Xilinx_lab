; ModuleID = 'G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_7_double_16/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_kp_502_7_ir(double* %A, double* %B, double* %C, double* %X1, double* %X2, double* %D) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 4096)
  %malloccall_1 = call i8* @malloc(i64 4096)
  %malloccall_2 = call i8* @malloc(i64 4096)
  %malloccall_3 = call i8* @malloc(i64 4096)
  %malloccall_4 = call i8* @malloc(i64 4096)
  %malloccall_5 = call i8* @malloc(i64 4096)
  %malloccall_6 = call i8* @malloc(i64 4096)
  %malloccall_7 = call i8* @malloc(i64 4096)
  %malloccall_8 = call i8* @malloc(i64 4096)
  %malloccall_9 = call i8* @malloc(i64 4096)
  %malloccall_10 = call i8* @malloc(i64 4096)
  %malloccall_11 = call i8* @malloc(i64 4096)
  %malloccall_12 = call i8* @malloc(i64 4096)
  %malloccall_13 = call i8* @malloc(i64 4096)
  %malloccall_14 = call i8* @malloc(i64 4096)
  %malloccall_15 = call i8* @malloc(i64 4096)
  %A_copy_0 = bitcast i8* %malloccall_0 to [512 x double]*
  %A_copy_1 = bitcast i8* %malloccall_1 to [512 x double]*
  %A_copy_2 = bitcast i8* %malloccall_2 to [512 x double]*
  %A_copy_3 = bitcast i8* %malloccall_3 to [512 x double]*
  %A_copy_4 = bitcast i8* %malloccall_4 to [512 x double]*
  %A_copy_5 = bitcast i8* %malloccall_5 to [512 x double]*
  %A_copy_6 = bitcast i8* %malloccall_6 to [512 x double]*
  %A_copy_7 = bitcast i8* %malloccall_7 to [512 x double]*
  %A_copy_8 = bitcast i8* %malloccall_8 to [512 x double]*
  %A_copy_9 = bitcast i8* %malloccall_9 to [512 x double]*
  %A_copy_10 = bitcast i8* %malloccall_10 to [512 x double]*
  %A_copy_11 = bitcast i8* %malloccall_11 to [512 x double]*
  %A_copy_12 = bitcast i8* %malloccall_12 to [512 x double]*
  %A_copy_13 = bitcast i8* %malloccall_13 to [512 x double]*
  %A_copy_14 = bitcast i8* %malloccall_14 to [512 x double]*
  %A_copy_15 = bitcast i8* %malloccall_15 to [512 x double]*
  %malloccall1_0 = call i8* @malloc(i64 4096)
  %malloccall1_1 = call i8* @malloc(i64 4096)
  %malloccall1_2 = call i8* @malloc(i64 4096)
  %malloccall1_3 = call i8* @malloc(i64 4096)
  %malloccall1_4 = call i8* @malloc(i64 4096)
  %malloccall1_5 = call i8* @malloc(i64 4096)
  %malloccall1_6 = call i8* @malloc(i64 4096)
  %malloccall1_7 = call i8* @malloc(i64 4096)
  %malloccall1_8 = call i8* @malloc(i64 4096)
  %malloccall1_9 = call i8* @malloc(i64 4096)
  %malloccall1_10 = call i8* @malloc(i64 4096)
  %malloccall1_11 = call i8* @malloc(i64 4096)
  %malloccall1_12 = call i8* @malloc(i64 4096)
  %malloccall1_13 = call i8* @malloc(i64 4096)
  %malloccall1_14 = call i8* @malloc(i64 4096)
  %malloccall1_15 = call i8* @malloc(i64 4096)
  %B_copy_0 = bitcast i8* %malloccall1_0 to [512 x double]*
  %B_copy_1 = bitcast i8* %malloccall1_1 to [512 x double]*
  %B_copy_2 = bitcast i8* %malloccall1_2 to [512 x double]*
  %B_copy_3 = bitcast i8* %malloccall1_3 to [512 x double]*
  %B_copy_4 = bitcast i8* %malloccall1_4 to [512 x double]*
  %B_copy_5 = bitcast i8* %malloccall1_5 to [512 x double]*
  %B_copy_6 = bitcast i8* %malloccall1_6 to [512 x double]*
  %B_copy_7 = bitcast i8* %malloccall1_7 to [512 x double]*
  %B_copy_8 = bitcast i8* %malloccall1_8 to [512 x double]*
  %B_copy_9 = bitcast i8* %malloccall1_9 to [512 x double]*
  %B_copy_10 = bitcast i8* %malloccall1_10 to [512 x double]*
  %B_copy_11 = bitcast i8* %malloccall1_11 to [512 x double]*
  %B_copy_12 = bitcast i8* %malloccall1_12 to [512 x double]*
  %B_copy_13 = bitcast i8* %malloccall1_13 to [512 x double]*
  %B_copy_14 = bitcast i8* %malloccall1_14 to [512 x double]*
  %B_copy_15 = bitcast i8* %malloccall1_15 to [512 x double]*
  %malloccall2_0 = call i8* @malloc(i64 4096)
  %malloccall2_1 = call i8* @malloc(i64 4096)
  %malloccall2_2 = call i8* @malloc(i64 4096)
  %malloccall2_3 = call i8* @malloc(i64 4096)
  %malloccall2_4 = call i8* @malloc(i64 4096)
  %malloccall2_5 = call i8* @malloc(i64 4096)
  %malloccall2_6 = call i8* @malloc(i64 4096)
  %malloccall2_7 = call i8* @malloc(i64 4096)
  %malloccall2_8 = call i8* @malloc(i64 4096)
  %malloccall2_9 = call i8* @malloc(i64 4096)
  %malloccall2_10 = call i8* @malloc(i64 4096)
  %malloccall2_11 = call i8* @malloc(i64 4096)
  %malloccall2_12 = call i8* @malloc(i64 4096)
  %malloccall2_13 = call i8* @malloc(i64 4096)
  %malloccall2_14 = call i8* @malloc(i64 4096)
  %malloccall2_15 = call i8* @malloc(i64 4096)
  %C_copy_0 = bitcast i8* %malloccall2_0 to [512 x double]*
  %C_copy_1 = bitcast i8* %malloccall2_1 to [512 x double]*
  %C_copy_2 = bitcast i8* %malloccall2_2 to [512 x double]*
  %C_copy_3 = bitcast i8* %malloccall2_3 to [512 x double]*
  %C_copy_4 = bitcast i8* %malloccall2_4 to [512 x double]*
  %C_copy_5 = bitcast i8* %malloccall2_5 to [512 x double]*
  %C_copy_6 = bitcast i8* %malloccall2_6 to [512 x double]*
  %C_copy_7 = bitcast i8* %malloccall2_7 to [512 x double]*
  %C_copy_8 = bitcast i8* %malloccall2_8 to [512 x double]*
  %C_copy_9 = bitcast i8* %malloccall2_9 to [512 x double]*
  %C_copy_10 = bitcast i8* %malloccall2_10 to [512 x double]*
  %C_copy_11 = bitcast i8* %malloccall2_11 to [512 x double]*
  %C_copy_12 = bitcast i8* %malloccall2_12 to [512 x double]*
  %C_copy_13 = bitcast i8* %malloccall2_13 to [512 x double]*
  %C_copy_14 = bitcast i8* %malloccall2_14 to [512 x double]*
  %C_copy_15 = bitcast i8* %malloccall2_15 to [512 x double]*
  %malloccall3_0 = call i8* @malloc(i64 4096)
  %malloccall3_1 = call i8* @malloc(i64 4096)
  %malloccall3_2 = call i8* @malloc(i64 4096)
  %malloccall3_3 = call i8* @malloc(i64 4096)
  %malloccall3_4 = call i8* @malloc(i64 4096)
  %malloccall3_5 = call i8* @malloc(i64 4096)
  %malloccall3_6 = call i8* @malloc(i64 4096)
  %malloccall3_7 = call i8* @malloc(i64 4096)
  %malloccall3_8 = call i8* @malloc(i64 4096)
  %malloccall3_9 = call i8* @malloc(i64 4096)
  %malloccall3_10 = call i8* @malloc(i64 4096)
  %malloccall3_11 = call i8* @malloc(i64 4096)
  %malloccall3_12 = call i8* @malloc(i64 4096)
  %malloccall3_13 = call i8* @malloc(i64 4096)
  %malloccall3_14 = call i8* @malloc(i64 4096)
  %malloccall3_15 = call i8* @malloc(i64 4096)
  %X1_copy_0 = bitcast i8* %malloccall3_0 to [512 x double]*
  %X1_copy_1 = bitcast i8* %malloccall3_1 to [512 x double]*
  %X1_copy_2 = bitcast i8* %malloccall3_2 to [512 x double]*
  %X1_copy_3 = bitcast i8* %malloccall3_3 to [512 x double]*
  %X1_copy_4 = bitcast i8* %malloccall3_4 to [512 x double]*
  %X1_copy_5 = bitcast i8* %malloccall3_5 to [512 x double]*
  %X1_copy_6 = bitcast i8* %malloccall3_6 to [512 x double]*
  %X1_copy_7 = bitcast i8* %malloccall3_7 to [512 x double]*
  %X1_copy_8 = bitcast i8* %malloccall3_8 to [512 x double]*
  %X1_copy_9 = bitcast i8* %malloccall3_9 to [512 x double]*
  %X1_copy_10 = bitcast i8* %malloccall3_10 to [512 x double]*
  %X1_copy_11 = bitcast i8* %malloccall3_11 to [512 x double]*
  %X1_copy_12 = bitcast i8* %malloccall3_12 to [512 x double]*
  %X1_copy_13 = bitcast i8* %malloccall3_13 to [512 x double]*
  %X1_copy_14 = bitcast i8* %malloccall3_14 to [512 x double]*
  %X1_copy_15 = bitcast i8* %malloccall3_15 to [512 x double]*
  %malloccall4_0 = call i8* @malloc(i64 4096)
  %malloccall4_1 = call i8* @malloc(i64 4096)
  %malloccall4_2 = call i8* @malloc(i64 4096)
  %malloccall4_3 = call i8* @malloc(i64 4096)
  %malloccall4_4 = call i8* @malloc(i64 4096)
  %malloccall4_5 = call i8* @malloc(i64 4096)
  %malloccall4_6 = call i8* @malloc(i64 4096)
  %malloccall4_7 = call i8* @malloc(i64 4096)
  %malloccall4_8 = call i8* @malloc(i64 4096)
  %malloccall4_9 = call i8* @malloc(i64 4096)
  %malloccall4_10 = call i8* @malloc(i64 4096)
  %malloccall4_11 = call i8* @malloc(i64 4096)
  %malloccall4_12 = call i8* @malloc(i64 4096)
  %malloccall4_13 = call i8* @malloc(i64 4096)
  %malloccall4_14 = call i8* @malloc(i64 4096)
  %malloccall4_15 = call i8* @malloc(i64 4096)
  %X2_copy_0 = bitcast i8* %malloccall4_0 to [512 x double]*
  %X2_copy_1 = bitcast i8* %malloccall4_1 to [512 x double]*
  %X2_copy_2 = bitcast i8* %malloccall4_2 to [512 x double]*
  %X2_copy_3 = bitcast i8* %malloccall4_3 to [512 x double]*
  %X2_copy_4 = bitcast i8* %malloccall4_4 to [512 x double]*
  %X2_copy_5 = bitcast i8* %malloccall4_5 to [512 x double]*
  %X2_copy_6 = bitcast i8* %malloccall4_6 to [512 x double]*
  %X2_copy_7 = bitcast i8* %malloccall4_7 to [512 x double]*
  %X2_copy_8 = bitcast i8* %malloccall4_8 to [512 x double]*
  %X2_copy_9 = bitcast i8* %malloccall4_9 to [512 x double]*
  %X2_copy_10 = bitcast i8* %malloccall4_10 to [512 x double]*
  %X2_copy_11 = bitcast i8* %malloccall4_11 to [512 x double]*
  %X2_copy_12 = bitcast i8* %malloccall4_12 to [512 x double]*
  %X2_copy_13 = bitcast i8* %malloccall4_13 to [512 x double]*
  %X2_copy_14 = bitcast i8* %malloccall4_14 to [512 x double]*
  %X2_copy_15 = bitcast i8* %malloccall4_15 to [512 x double]*
  %malloccall5_0 = call i8* @malloc(i64 4096)
  %malloccall5_1 = call i8* @malloc(i64 4096)
  %malloccall5_2 = call i8* @malloc(i64 4096)
  %malloccall5_3 = call i8* @malloc(i64 4096)
  %malloccall5_4 = call i8* @malloc(i64 4096)
  %malloccall5_5 = call i8* @malloc(i64 4096)
  %malloccall5_6 = call i8* @malloc(i64 4096)
  %malloccall5_7 = call i8* @malloc(i64 4096)
  %malloccall5_8 = call i8* @malloc(i64 4096)
  %malloccall5_9 = call i8* @malloc(i64 4096)
  %malloccall5_10 = call i8* @malloc(i64 4096)
  %malloccall5_11 = call i8* @malloc(i64 4096)
  %malloccall5_12 = call i8* @malloc(i64 4096)
  %malloccall5_13 = call i8* @malloc(i64 4096)
  %malloccall5_14 = call i8* @malloc(i64 4096)
  %malloccall5_15 = call i8* @malloc(i64 4096)
  %D_copy_0 = bitcast i8* %malloccall5_0 to [512 x double]*
  %D_copy_1 = bitcast i8* %malloccall5_1 to [512 x double]*
  %D_copy_2 = bitcast i8* %malloccall5_2 to [512 x double]*
  %D_copy_3 = bitcast i8* %malloccall5_3 to [512 x double]*
  %D_copy_4 = bitcast i8* %malloccall5_4 to [512 x double]*
  %D_copy_5 = bitcast i8* %malloccall5_5 to [512 x double]*
  %D_copy_6 = bitcast i8* %malloccall5_6 to [512 x double]*
  %D_copy_7 = bitcast i8* %malloccall5_7 to [512 x double]*
  %D_copy_8 = bitcast i8* %malloccall5_8 to [512 x double]*
  %D_copy_9 = bitcast i8* %malloccall5_9 to [512 x double]*
  %D_copy_10 = bitcast i8* %malloccall5_10 to [512 x double]*
  %D_copy_11 = bitcast i8* %malloccall5_11 to [512 x double]*
  %D_copy_12 = bitcast i8* %malloccall5_12 to [512 x double]*
  %D_copy_13 = bitcast i8* %malloccall5_13 to [512 x double]*
  %D_copy_14 = bitcast i8* %malloccall5_14 to [512 x double]*
  %D_copy_15 = bitcast i8* %malloccall5_15 to [512 x double]*
  %0 = bitcast double* %A to [8192 x double]*
  %1 = bitcast double* %B to [8192 x double]*
  %2 = bitcast double* %C to [8192 x double]*
  %3 = bitcast double* %X1 to [8192 x double]*
  %4 = bitcast double* %X2 to [8192 x double]*
  %5 = bitcast double* %D to [8192 x double]*
  call void @copy_in([8192 x double]* %0, [512 x double]* %A_copy_0, [512 x double]* %A_copy_1, [512 x double]* %A_copy_2, [512 x double]* %A_copy_3, [512 x double]* %A_copy_4, [512 x double]* %A_copy_5, [512 x double]* %A_copy_6, [512 x double]* %A_copy_7, [512 x double]* %A_copy_8, [512 x double]* %A_copy_9, [512 x double]* %A_copy_10, [512 x double]* %A_copy_11, [512 x double]* %A_copy_12, [512 x double]* %A_copy_13, [512 x double]* %A_copy_14, [512 x double]* %A_copy_15, [8192 x double]* %1, [512 x double]* %B_copy_0, [512 x double]* %B_copy_1, [512 x double]* %B_copy_2, [512 x double]* %B_copy_3, [512 x double]* %B_copy_4, [512 x double]* %B_copy_5, [512 x double]* %B_copy_6, [512 x double]* %B_copy_7, [512 x double]* %B_copy_8, [512 x double]* %B_copy_9, [512 x double]* %B_copy_10, [512 x double]* %B_copy_11, [512 x double]* %B_copy_12, [512 x double]* %B_copy_13, [512 x double]* %B_copy_14, [512 x double]* %B_copy_15, [8192 x double]* %2, [512 x double]* %C_copy_0, [512 x double]* %C_copy_1, [512 x double]* %C_copy_2, [512 x double]* %C_copy_3, [512 x double]* %C_copy_4, [512 x double]* %C_copy_5, [512 x double]* %C_copy_6, [512 x double]* %C_copy_7, [512 x double]* %C_copy_8, [512 x double]* %C_copy_9, [512 x double]* %C_copy_10, [512 x double]* %C_copy_11, [512 x double]* %C_copy_12, [512 x double]* %C_copy_13, [512 x double]* %C_copy_14, [512 x double]* %C_copy_15, [8192 x double]* %3, [512 x double]* %X1_copy_0, [512 x double]* %X1_copy_1, [512 x double]* %X1_copy_2, [512 x double]* %X1_copy_3, [512 x double]* %X1_copy_4, [512 x double]* %X1_copy_5, [512 x double]* %X1_copy_6, [512 x double]* %X1_copy_7, [512 x double]* %X1_copy_8, [512 x double]* %X1_copy_9, [512 x double]* %X1_copy_10, [512 x double]* %X1_copy_11, [512 x double]* %X1_copy_12, [512 x double]* %X1_copy_13, [512 x double]* %X1_copy_14, [512 x double]* %X1_copy_15, [8192 x double]* %4, [512 x double]* %X2_copy_0, [512 x double]* %X2_copy_1, [512 x double]* %X2_copy_2, [512 x double]* %X2_copy_3, [512 x double]* %X2_copy_4, [512 x double]* %X2_copy_5, [512 x double]* %X2_copy_6, [512 x double]* %X2_copy_7, [512 x double]* %X2_copy_8, [512 x double]* %X2_copy_9, [512 x double]* %X2_copy_10, [512 x double]* %X2_copy_11, [512 x double]* %X2_copy_12, [512 x double]* %X2_copy_13, [512 x double]* %X2_copy_14, [512 x double]* %X2_copy_15, [8192 x double]* %5, [512 x double]* %D_copy_0, [512 x double]* %D_copy_1, [512 x double]* %D_copy_2, [512 x double]* %D_copy_3, [512 x double]* %D_copy_4, [512 x double]* %D_copy_5, [512 x double]* %D_copy_6, [512 x double]* %D_copy_7, [512 x double]* %D_copy_8, [512 x double]* %D_copy_9, [512 x double]* %D_copy_10, [512 x double]* %D_copy_11, [512 x double]* %D_copy_12, [512 x double]* %D_copy_13, [512 x double]* %D_copy_14, [512 x double]* %D_copy_15)
  %_0 = getelementptr [512 x double], [512 x double]* %A_copy_0, i32 0, i32 0
  %_1 = getelementptr [512 x double], [512 x double]* %A_copy_1, i32 0, i32 0
  %_2 = getelementptr [512 x double], [512 x double]* %A_copy_2, i32 0, i32 0
  %_3 = getelementptr [512 x double], [512 x double]* %A_copy_3, i32 0, i32 0
  %_4 = getelementptr [512 x double], [512 x double]* %A_copy_4, i32 0, i32 0
  %_5 = getelementptr [512 x double], [512 x double]* %A_copy_5, i32 0, i32 0
  %_6 = getelementptr [512 x double], [512 x double]* %A_copy_6, i32 0, i32 0
  %_7 = getelementptr [512 x double], [512 x double]* %A_copy_7, i32 0, i32 0
  %_8 = getelementptr [512 x double], [512 x double]* %A_copy_8, i32 0, i32 0
  %_9 = getelementptr [512 x double], [512 x double]* %A_copy_9, i32 0, i32 0
  %_10 = getelementptr [512 x double], [512 x double]* %A_copy_10, i32 0, i32 0
  %_11 = getelementptr [512 x double], [512 x double]* %A_copy_11, i32 0, i32 0
  %_12 = getelementptr [512 x double], [512 x double]* %A_copy_12, i32 0, i32 0
  %_13 = getelementptr [512 x double], [512 x double]* %A_copy_13, i32 0, i32 0
  %_14 = getelementptr [512 x double], [512 x double]* %A_copy_14, i32 0, i32 0
  %_15 = getelementptr [512 x double], [512 x double]* %A_copy_15, i32 0, i32 0
  %_06 = getelementptr [512 x double], [512 x double]* %B_copy_0, i32 0, i32 0
  %_17 = getelementptr [512 x double], [512 x double]* %B_copy_1, i32 0, i32 0
  %_28 = getelementptr [512 x double], [512 x double]* %B_copy_2, i32 0, i32 0
  %_39 = getelementptr [512 x double], [512 x double]* %B_copy_3, i32 0, i32 0
  %_410 = getelementptr [512 x double], [512 x double]* %B_copy_4, i32 0, i32 0
  %_511 = getelementptr [512 x double], [512 x double]* %B_copy_5, i32 0, i32 0
  %_612 = getelementptr [512 x double], [512 x double]* %B_copy_6, i32 0, i32 0
  %_713 = getelementptr [512 x double], [512 x double]* %B_copy_7, i32 0, i32 0
  %_814 = getelementptr [512 x double], [512 x double]* %B_copy_8, i32 0, i32 0
  %_915 = getelementptr [512 x double], [512 x double]* %B_copy_9, i32 0, i32 0
  %_1016 = getelementptr [512 x double], [512 x double]* %B_copy_10, i32 0, i32 0
  %_1117 = getelementptr [512 x double], [512 x double]* %B_copy_11, i32 0, i32 0
  %_1218 = getelementptr [512 x double], [512 x double]* %B_copy_12, i32 0, i32 0
  %_1319 = getelementptr [512 x double], [512 x double]* %B_copy_13, i32 0, i32 0
  %_1420 = getelementptr [512 x double], [512 x double]* %B_copy_14, i32 0, i32 0
  %_1521 = getelementptr [512 x double], [512 x double]* %B_copy_15, i32 0, i32 0
  %_022 = getelementptr [512 x double], [512 x double]* %C_copy_0, i32 0, i32 0
  %_123 = getelementptr [512 x double], [512 x double]* %C_copy_1, i32 0, i32 0
  %_224 = getelementptr [512 x double], [512 x double]* %C_copy_2, i32 0, i32 0
  %_325 = getelementptr [512 x double], [512 x double]* %C_copy_3, i32 0, i32 0
  %_426 = getelementptr [512 x double], [512 x double]* %C_copy_4, i32 0, i32 0
  %_527 = getelementptr [512 x double], [512 x double]* %C_copy_5, i32 0, i32 0
  %_628 = getelementptr [512 x double], [512 x double]* %C_copy_6, i32 0, i32 0
  %_729 = getelementptr [512 x double], [512 x double]* %C_copy_7, i32 0, i32 0
  %_830 = getelementptr [512 x double], [512 x double]* %C_copy_8, i32 0, i32 0
  %_931 = getelementptr [512 x double], [512 x double]* %C_copy_9, i32 0, i32 0
  %_1032 = getelementptr [512 x double], [512 x double]* %C_copy_10, i32 0, i32 0
  %_1133 = getelementptr [512 x double], [512 x double]* %C_copy_11, i32 0, i32 0
  %_1234 = getelementptr [512 x double], [512 x double]* %C_copy_12, i32 0, i32 0
  %_1335 = getelementptr [512 x double], [512 x double]* %C_copy_13, i32 0, i32 0
  %_1436 = getelementptr [512 x double], [512 x double]* %C_copy_14, i32 0, i32 0
  %_1537 = getelementptr [512 x double], [512 x double]* %C_copy_15, i32 0, i32 0
  %_038 = getelementptr [512 x double], [512 x double]* %X1_copy_0, i32 0, i32 0
  %_139 = getelementptr [512 x double], [512 x double]* %X1_copy_1, i32 0, i32 0
  %_240 = getelementptr [512 x double], [512 x double]* %X1_copy_2, i32 0, i32 0
  %_341 = getelementptr [512 x double], [512 x double]* %X1_copy_3, i32 0, i32 0
  %_442 = getelementptr [512 x double], [512 x double]* %X1_copy_4, i32 0, i32 0
  %_543 = getelementptr [512 x double], [512 x double]* %X1_copy_5, i32 0, i32 0
  %_644 = getelementptr [512 x double], [512 x double]* %X1_copy_6, i32 0, i32 0
  %_745 = getelementptr [512 x double], [512 x double]* %X1_copy_7, i32 0, i32 0
  %_846 = getelementptr [512 x double], [512 x double]* %X1_copy_8, i32 0, i32 0
  %_947 = getelementptr [512 x double], [512 x double]* %X1_copy_9, i32 0, i32 0
  %_1048 = getelementptr [512 x double], [512 x double]* %X1_copy_10, i32 0, i32 0
  %_1149 = getelementptr [512 x double], [512 x double]* %X1_copy_11, i32 0, i32 0
  %_1250 = getelementptr [512 x double], [512 x double]* %X1_copy_12, i32 0, i32 0
  %_1351 = getelementptr [512 x double], [512 x double]* %X1_copy_13, i32 0, i32 0
  %_1452 = getelementptr [512 x double], [512 x double]* %X1_copy_14, i32 0, i32 0
  %_1553 = getelementptr [512 x double], [512 x double]* %X1_copy_15, i32 0, i32 0
  %_054 = getelementptr [512 x double], [512 x double]* %X2_copy_0, i32 0, i32 0
  %_155 = getelementptr [512 x double], [512 x double]* %X2_copy_1, i32 0, i32 0
  %_256 = getelementptr [512 x double], [512 x double]* %X2_copy_2, i32 0, i32 0
  %_357 = getelementptr [512 x double], [512 x double]* %X2_copy_3, i32 0, i32 0
  %_458 = getelementptr [512 x double], [512 x double]* %X2_copy_4, i32 0, i32 0
  %_559 = getelementptr [512 x double], [512 x double]* %X2_copy_5, i32 0, i32 0
  %_660 = getelementptr [512 x double], [512 x double]* %X2_copy_6, i32 0, i32 0
  %_761 = getelementptr [512 x double], [512 x double]* %X2_copy_7, i32 0, i32 0
  %_862 = getelementptr [512 x double], [512 x double]* %X2_copy_8, i32 0, i32 0
  %_963 = getelementptr [512 x double], [512 x double]* %X2_copy_9, i32 0, i32 0
  %_1064 = getelementptr [512 x double], [512 x double]* %X2_copy_10, i32 0, i32 0
  %_1165 = getelementptr [512 x double], [512 x double]* %X2_copy_11, i32 0, i32 0
  %_1266 = getelementptr [512 x double], [512 x double]* %X2_copy_12, i32 0, i32 0
  %_1367 = getelementptr [512 x double], [512 x double]* %X2_copy_13, i32 0, i32 0
  %_1468 = getelementptr [512 x double], [512 x double]* %X2_copy_14, i32 0, i32 0
  %_1569 = getelementptr [512 x double], [512 x double]* %X2_copy_15, i32 0, i32 0
  %_070 = getelementptr [512 x double], [512 x double]* %D_copy_0, i32 0, i32 0
  %_171 = getelementptr [512 x double], [512 x double]* %D_copy_1, i32 0, i32 0
  %_272 = getelementptr [512 x double], [512 x double]* %D_copy_2, i32 0, i32 0
  %_373 = getelementptr [512 x double], [512 x double]* %D_copy_3, i32 0, i32 0
  %_474 = getelementptr [512 x double], [512 x double]* %D_copy_4, i32 0, i32 0
  %_575 = getelementptr [512 x double], [512 x double]* %D_copy_5, i32 0, i32 0
  %_676 = getelementptr [512 x double], [512 x double]* %D_copy_6, i32 0, i32 0
  %_777 = getelementptr [512 x double], [512 x double]* %D_copy_7, i32 0, i32 0
  %_878 = getelementptr [512 x double], [512 x double]* %D_copy_8, i32 0, i32 0
  %_979 = getelementptr [512 x double], [512 x double]* %D_copy_9, i32 0, i32 0
  %_1080 = getelementptr [512 x double], [512 x double]* %D_copy_10, i32 0, i32 0
  %_1181 = getelementptr [512 x double], [512 x double]* %D_copy_11, i32 0, i32 0
  %_1282 = getelementptr [512 x double], [512 x double]* %D_copy_12, i32 0, i32 0
  %_1383 = getelementptr [512 x double], [512 x double]* %D_copy_13, i32 0, i32 0
  %_1484 = getelementptr [512 x double], [512 x double]* %D_copy_14, i32 0, i32 0
  %_1585 = getelementptr [512 x double], [512 x double]* %D_copy_15, i32 0, i32 0
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
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_06, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_17, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_28, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_39, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_410, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_511, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_612, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_713, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_814, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_915, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1016, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1117, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1218, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1319, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1420, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1521, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_022, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_123, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_224, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_325, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_426, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_527, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_628, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_729, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_830, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_931, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1032, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1133, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1234, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1335, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1436, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1537, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_038, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_139, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_240, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_341, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_442, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_543, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_644, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_745, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_846, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_947, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1048, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1149, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1250, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1351, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1452, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1553, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_054, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_155, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_256, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_357, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_458, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_559, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_660, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_761, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_862, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_963, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1064, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1165, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1266, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1367, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1468, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1569, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_070, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_171, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_272, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_373, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_474, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_575, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_676, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_777, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_878, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_979, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1080, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1181, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1282, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1383, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1484, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1585, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @apatb_kp_502_7_hw([512 x double]* %A_copy_0, [512 x double]* %A_copy_1, [512 x double]* %A_copy_2, [512 x double]* %A_copy_3, [512 x double]* %A_copy_4, [512 x double]* %A_copy_5, [512 x double]* %A_copy_6, [512 x double]* %A_copy_7, [512 x double]* %A_copy_8, [512 x double]* %A_copy_9, [512 x double]* %A_copy_10, [512 x double]* %A_copy_11, [512 x double]* %A_copy_12, [512 x double]* %A_copy_13, [512 x double]* %A_copy_14, [512 x double]* %A_copy_15, [512 x double]* %B_copy_0, [512 x double]* %B_copy_1, [512 x double]* %B_copy_2, [512 x double]* %B_copy_3, [512 x double]* %B_copy_4, [512 x double]* %B_copy_5, [512 x double]* %B_copy_6, [512 x double]* %B_copy_7, [512 x double]* %B_copy_8, [512 x double]* %B_copy_9, [512 x double]* %B_copy_10, [512 x double]* %B_copy_11, [512 x double]* %B_copy_12, [512 x double]* %B_copy_13, [512 x double]* %B_copy_14, [512 x double]* %B_copy_15, [512 x double]* %C_copy_0, [512 x double]* %C_copy_1, [512 x double]* %C_copy_2, [512 x double]* %C_copy_3, [512 x double]* %C_copy_4, [512 x double]* %C_copy_5, [512 x double]* %C_copy_6, [512 x double]* %C_copy_7, [512 x double]* %C_copy_8, [512 x double]* %C_copy_9, [512 x double]* %C_copy_10, [512 x double]* %C_copy_11, [512 x double]* %C_copy_12, [512 x double]* %C_copy_13, [512 x double]* %C_copy_14, [512 x double]* %C_copy_15, [512 x double]* %X1_copy_0, [512 x double]* %X1_copy_1, [512 x double]* %X1_copy_2, [512 x double]* %X1_copy_3, [512 x double]* %X1_copy_4, [512 x double]* %X1_copy_5, [512 x double]* %X1_copy_6, [512 x double]* %X1_copy_7, [512 x double]* %X1_copy_8, [512 x double]* %X1_copy_9, [512 x double]* %X1_copy_10, [512 x double]* %X1_copy_11, [512 x double]* %X1_copy_12, [512 x double]* %X1_copy_13, [512 x double]* %X1_copy_14, [512 x double]* %X1_copy_15, [512 x double]* %X2_copy_0, [512 x double]* %X2_copy_1, [512 x double]* %X2_copy_2, [512 x double]* %X2_copy_3, [512 x double]* %X2_copy_4, [512 x double]* %X2_copy_5, [512 x double]* %X2_copy_6, [512 x double]* %X2_copy_7, [512 x double]* %X2_copy_8, [512 x double]* %X2_copy_9, [512 x double]* %X2_copy_10, [512 x double]* %X2_copy_11, [512 x double]* %X2_copy_12, [512 x double]* %X2_copy_13, [512 x double]* %X2_copy_14, [512 x double]* %X2_copy_15, [512 x double]* %D_copy_0, [512 x double]* %D_copy_1, [512 x double]* %D_copy_2, [512 x double]* %D_copy_3, [512 x double]* %D_copy_4, [512 x double]* %D_copy_5, [512 x double]* %D_copy_6, [512 x double]* %D_copy_7, [512 x double]* %D_copy_8, [512 x double]* %D_copy_9, [512 x double]* %D_copy_10, [512 x double]* %D_copy_11, [512 x double]* %D_copy_12, [512 x double]* %D_copy_13, [512 x double]* %D_copy_14, [512 x double]* %D_copy_15)
  call void @copy_out([8192 x double]* %0, [512 x double]* %A_copy_0, [512 x double]* %A_copy_1, [512 x double]* %A_copy_2, [512 x double]* %A_copy_3, [512 x double]* %A_copy_4, [512 x double]* %A_copy_5, [512 x double]* %A_copy_6, [512 x double]* %A_copy_7, [512 x double]* %A_copy_8, [512 x double]* %A_copy_9, [512 x double]* %A_copy_10, [512 x double]* %A_copy_11, [512 x double]* %A_copy_12, [512 x double]* %A_copy_13, [512 x double]* %A_copy_14, [512 x double]* %A_copy_15, [8192 x double]* %1, [512 x double]* %B_copy_0, [512 x double]* %B_copy_1, [512 x double]* %B_copy_2, [512 x double]* %B_copy_3, [512 x double]* %B_copy_4, [512 x double]* %B_copy_5, [512 x double]* %B_copy_6, [512 x double]* %B_copy_7, [512 x double]* %B_copy_8, [512 x double]* %B_copy_9, [512 x double]* %B_copy_10, [512 x double]* %B_copy_11, [512 x double]* %B_copy_12, [512 x double]* %B_copy_13, [512 x double]* %B_copy_14, [512 x double]* %B_copy_15, [8192 x double]* %2, [512 x double]* %C_copy_0, [512 x double]* %C_copy_1, [512 x double]* %C_copy_2, [512 x double]* %C_copy_3, [512 x double]* %C_copy_4, [512 x double]* %C_copy_5, [512 x double]* %C_copy_6, [512 x double]* %C_copy_7, [512 x double]* %C_copy_8, [512 x double]* %C_copy_9, [512 x double]* %C_copy_10, [512 x double]* %C_copy_11, [512 x double]* %C_copy_12, [512 x double]* %C_copy_13, [512 x double]* %C_copy_14, [512 x double]* %C_copy_15, [8192 x double]* %3, [512 x double]* %X1_copy_0, [512 x double]* %X1_copy_1, [512 x double]* %X1_copy_2, [512 x double]* %X1_copy_3, [512 x double]* %X1_copy_4, [512 x double]* %X1_copy_5, [512 x double]* %X1_copy_6, [512 x double]* %X1_copy_7, [512 x double]* %X1_copy_8, [512 x double]* %X1_copy_9, [512 x double]* %X1_copy_10, [512 x double]* %X1_copy_11, [512 x double]* %X1_copy_12, [512 x double]* %X1_copy_13, [512 x double]* %X1_copy_14, [512 x double]* %X1_copy_15, [8192 x double]* %4, [512 x double]* %X2_copy_0, [512 x double]* %X2_copy_1, [512 x double]* %X2_copy_2, [512 x double]* %X2_copy_3, [512 x double]* %X2_copy_4, [512 x double]* %X2_copy_5, [512 x double]* %X2_copy_6, [512 x double]* %X2_copy_7, [512 x double]* %X2_copy_8, [512 x double]* %X2_copy_9, [512 x double]* %X2_copy_10, [512 x double]* %X2_copy_11, [512 x double]* %X2_copy_12, [512 x double]* %X2_copy_13, [512 x double]* %X2_copy_14, [512 x double]* %X2_copy_15, [8192 x double]* %5, [512 x double]* %D_copy_0, [512 x double]* %D_copy_1, [512 x double]* %D_copy_2, [512 x double]* %D_copy_3, [512 x double]* %D_copy_4, [512 x double]* %D_copy_5, [512 x double]* %D_copy_6, [512 x double]* %D_copy_7, [512 x double]* %D_copy_8, [512 x double]* %D_copy_9, [512 x double]* %D_copy_10, [512 x double]* %D_copy_11, [512 x double]* %D_copy_12, [512 x double]* %D_copy_13, [512 x double]* %D_copy_14, [512 x double]* %D_copy_15)
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
define internal void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [8192 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [512 x double]* %_0, null
  %2 = icmp eq [8192 x double]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %dst.addr_0 = getelementptr [512 x double], [512 x double]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [512 x double], [512 x double]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [512 x double], [512 x double]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [512 x double], [512 x double]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [512 x double], [512 x double]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [512 x double], [512 x double]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [512 x double], [512 x double]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [512 x double], [512 x double]* %_7, i64 0, i64 %5
  %dst.addr_8 = getelementptr [512 x double], [512 x double]* %_8, i64 0, i64 %5
  %dst.addr_9 = getelementptr [512 x double], [512 x double]* %_9, i64 0, i64 %5
  %dst.addr_10 = getelementptr [512 x double], [512 x double]* %_10, i64 0, i64 %5
  %dst.addr_11 = getelementptr [512 x double], [512 x double]* %_11, i64 0, i64 %5
  %dst.addr_12 = getelementptr [512 x double], [512 x double]* %_12, i64 0, i64 %5
  %dst.addr_13 = getelementptr [512 x double], [512 x double]* %_13, i64 0, i64 %5
  %dst.addr_14 = getelementptr [512 x double], [512 x double]* %_14, i64 0, i64 %5
  %dst.addr_15 = getelementptr [512 x double], [512 x double]* %_15, i64 0, i64 %5
  %src.addr = getelementptr [8192 x double], [8192 x double]* %0, i64 0, i64 %for.loop.idx1
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
  %exitcond = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8192 x double]* readonly "orig.arg.no"="0", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [8192 x double]* readonly "orig.arg.no"="2", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [8192 x double]* readonly "orig.arg.no"="4", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [8192 x double]* readonly "orig.arg.no"="6", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [8192 x double]* readonly "orig.arg.no"="8", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568, [8192 x double]* readonly "orig.arg.no"="10", [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_069, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_170, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_271, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_372, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_473, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_574, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_675, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_776, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_877, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_978, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1079, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1180, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1281, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1382, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1483, [512 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1584) #3 {
entry:
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_0, [512 x double]* %_1, [512 x double]* %_2, [512 x double]* %_3, [512 x double]* %_4, [512 x double]* %_5, [512 x double]* %_6, [512 x double]* %_7, [512 x double]* %_8, [512 x double]* %_9, [512 x double]* %_10, [512 x double]* %_11, [512 x double]* %_12, [512 x double]* %_13, [512 x double]* %_14, [512 x double]* %_15, [8192 x double]* %0)
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_01, [512 x double]* %_16, [512 x double]* %_27, [512 x double]* %_38, [512 x double]* %_49, [512 x double]* %_510, [512 x double]* %_611, [512 x double]* %_712, [512 x double]* %_813, [512 x double]* %_914, [512 x double]* %_1015, [512 x double]* %_1116, [512 x double]* %_1217, [512 x double]* %_1318, [512 x double]* %_1419, [512 x double]* %_1520, [8192 x double]* %1)
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_021, [512 x double]* %_122, [512 x double]* %_223, [512 x double]* %_324, [512 x double]* %_425, [512 x double]* %_526, [512 x double]* %_627, [512 x double]* %_728, [512 x double]* %_829, [512 x double]* %_930, [512 x double]* %_1031, [512 x double]* %_1132, [512 x double]* %_1233, [512 x double]* %_1334, [512 x double]* %_1435, [512 x double]* %_1536, [8192 x double]* %2)
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_037, [512 x double]* %_138, [512 x double]* %_239, [512 x double]* %_340, [512 x double]* %_441, [512 x double]* %_542, [512 x double]* %_643, [512 x double]* %_744, [512 x double]* %_845, [512 x double]* %_946, [512 x double]* %_1047, [512 x double]* %_1148, [512 x double]* %_1249, [512 x double]* %_1350, [512 x double]* %_1451, [512 x double]* %_1552, [8192 x double]* %3)
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_053, [512 x double]* %_154, [512 x double]* %_255, [512 x double]* %_356, [512 x double]* %_457, [512 x double]* %_558, [512 x double]* %_659, [512 x double]* %_760, [512 x double]* %_861, [512 x double]* %_962, [512 x double]* %_1063, [512 x double]* %_1164, [512 x double]* %_1265, [512 x double]* %_1366, [512 x double]* %_1467, [512 x double]* %_1568, [8192 x double]* %4)
  call void @onebyonecpy_hls.p0a8192f64.3.4([512 x double]* %_069, [512 x double]* %_170, [512 x double]* %_271, [512 x double]* %_372, [512 x double]* %_473, [512 x double]* %_574, [512 x double]* %_675, [512 x double]* %_776, [512 x double]* %_877, [512 x double]* %_978, [512 x double]* %_1079, [512 x double]* %_1180, [512 x double]* %_1281, [512 x double]* %_1382, [512 x double]* %_1483, [512 x double]* %_1584, [8192 x double]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [8192 x double]* %0, null
  %2 = icmp eq [512 x double]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [8192 x double], [8192 x double]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %src.addr_0 = getelementptr [512 x double], [512 x double]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [512 x double], [512 x double]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [512 x double], [512 x double]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [512 x double], [512 x double]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [512 x double], [512 x double]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [512 x double], [512 x double]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [512 x double], [512 x double]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [512 x double], [512 x double]* %_7, i64 0, i64 %5
  %src.addr_8 = getelementptr [512 x double], [512 x double]* %_8, i64 0, i64 %5
  %src.addr_9 = getelementptr [512 x double], [512 x double]* %_9, i64 0, i64 %5
  %src.addr_10 = getelementptr [512 x double], [512 x double]* %_10, i64 0, i64 %5
  %src.addr_11 = getelementptr [512 x double], [512 x double]* %_11, i64 0, i64 %5
  %src.addr_12 = getelementptr [512 x double], [512 x double]* %_12, i64 0, i64 %5
  %src.addr_13 = getelementptr [512 x double], [512 x double]* %_13, i64 0, i64 %5
  %src.addr_14 = getelementptr [512 x double], [512 x double]* %_14, i64 0, i64 %5
  %src.addr_15 = getelementptr [512 x double], [512 x double]* %_15, i64 0, i64 %5
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
  %exitcond = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8192 x double]* "orig.arg.no"="0", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [8192 x double]* "orig.arg.no"="2", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [8192 x double]* "orig.arg.no"="4", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [8192 x double]* "orig.arg.no"="6", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [8192 x double]* "orig.arg.no"="8", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568, [8192 x double]* "orig.arg.no"="10", [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_069, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_170, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_271, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_372, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_473, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_574, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_675, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_776, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_877, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_978, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1079, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1180, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1281, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1382, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1483, [512 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_1584) #4 {
entry:
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %0, [512 x double]* %_0, [512 x double]* %_1, [512 x double]* %_2, [512 x double]* %_3, [512 x double]* %_4, [512 x double]* %_5, [512 x double]* %_6, [512 x double]* %_7, [512 x double]* %_8, [512 x double]* %_9, [512 x double]* %_10, [512 x double]* %_11, [512 x double]* %_12, [512 x double]* %_13, [512 x double]* %_14, [512 x double]* %_15)
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %1, [512 x double]* %_01, [512 x double]* %_16, [512 x double]* %_27, [512 x double]* %_38, [512 x double]* %_49, [512 x double]* %_510, [512 x double]* %_611, [512 x double]* %_712, [512 x double]* %_813, [512 x double]* %_914, [512 x double]* %_1015, [512 x double]* %_1116, [512 x double]* %_1217, [512 x double]* %_1318, [512 x double]* %_1419, [512 x double]* %_1520)
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %2, [512 x double]* %_021, [512 x double]* %_122, [512 x double]* %_223, [512 x double]* %_324, [512 x double]* %_425, [512 x double]* %_526, [512 x double]* %_627, [512 x double]* %_728, [512 x double]* %_829, [512 x double]* %_930, [512 x double]* %_1031, [512 x double]* %_1132, [512 x double]* %_1233, [512 x double]* %_1334, [512 x double]* %_1435, [512 x double]* %_1536)
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %3, [512 x double]* %_037, [512 x double]* %_138, [512 x double]* %_239, [512 x double]* %_340, [512 x double]* %_441, [512 x double]* %_542, [512 x double]* %_643, [512 x double]* %_744, [512 x double]* %_845, [512 x double]* %_946, [512 x double]* %_1047, [512 x double]* %_1148, [512 x double]* %_1249, [512 x double]* %_1350, [512 x double]* %_1451, [512 x double]* %_1552)
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %4, [512 x double]* %_053, [512 x double]* %_154, [512 x double]* %_255, [512 x double]* %_356, [512 x double]* %_457, [512 x double]* %_558, [512 x double]* %_659, [512 x double]* %_760, [512 x double]* %_861, [512 x double]* %_962, [512 x double]* %_1063, [512 x double]* %_1164, [512 x double]* %_1265, [512 x double]* %_1366, [512 x double]* %_1467, [512 x double]* %_1568)
  call void @onebyonecpy_hls.p0a8192f64.9.10([8192 x double]* %5, [512 x double]* %_069, [512 x double]* %_170, [512 x double]* %_271, [512 x double]* %_372, [512 x double]* %_473, [512 x double]* %_574, [512 x double]* %_675, [512 x double]* %_776, [512 x double]* %_877, [512 x double]* %_978, [512 x double]* %_1079, [512 x double]* %_1180, [512 x double]* %_1281, [512 x double]* %_1382, [512 x double]* %_1483, [512 x double]* %_1584)
  ret void
}

declare void @apatb_kp_502_7_hw([512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*)

define void @kp_502_7_hw_stub_wrapper([512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*, [512 x double]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 65536)
  %96 = bitcast i8* %malloccall to [8192 x double]*
  %malloccall1 = tail call i8* @malloc(i64 65536)
  %97 = bitcast i8* %malloccall1 to [8192 x double]*
  %malloccall2 = tail call i8* @malloc(i64 65536)
  %98 = bitcast i8* %malloccall2 to [8192 x double]*
  %malloccall3 = tail call i8* @malloc(i64 65536)
  %99 = bitcast i8* %malloccall3 to [8192 x double]*
  %malloccall4 = tail call i8* @malloc(i64 65536)
  %100 = bitcast i8* %malloccall4 to [8192 x double]*
  %malloccall5 = tail call i8* @malloc(i64 65536)
  %101 = bitcast i8* %malloccall5 to [8192 x double]*
  call void @copy_out([8192 x double]* %96, [512 x double]* %0, [512 x double]* %1, [512 x double]* %2, [512 x double]* %3, [512 x double]* %4, [512 x double]* %5, [512 x double]* %6, [512 x double]* %7, [512 x double]* %8, [512 x double]* %9, [512 x double]* %10, [512 x double]* %11, [512 x double]* %12, [512 x double]* %13, [512 x double]* %14, [512 x double]* %15, [8192 x double]* %97, [512 x double]* %16, [512 x double]* %17, [512 x double]* %18, [512 x double]* %19, [512 x double]* %20, [512 x double]* %21, [512 x double]* %22, [512 x double]* %23, [512 x double]* %24, [512 x double]* %25, [512 x double]* %26, [512 x double]* %27, [512 x double]* %28, [512 x double]* %29, [512 x double]* %30, [512 x double]* %31, [8192 x double]* %98, [512 x double]* %32, [512 x double]* %33, [512 x double]* %34, [512 x double]* %35, [512 x double]* %36, [512 x double]* %37, [512 x double]* %38, [512 x double]* %39, [512 x double]* %40, [512 x double]* %41, [512 x double]* %42, [512 x double]* %43, [512 x double]* %44, [512 x double]* %45, [512 x double]* %46, [512 x double]* %47, [8192 x double]* %99, [512 x double]* %48, [512 x double]* %49, [512 x double]* %50, [512 x double]* %51, [512 x double]* %52, [512 x double]* %53, [512 x double]* %54, [512 x double]* %55, [512 x double]* %56, [512 x double]* %57, [512 x double]* %58, [512 x double]* %59, [512 x double]* %60, [512 x double]* %61, [512 x double]* %62, [512 x double]* %63, [8192 x double]* %100, [512 x double]* %64, [512 x double]* %65, [512 x double]* %66, [512 x double]* %67, [512 x double]* %68, [512 x double]* %69, [512 x double]* %70, [512 x double]* %71, [512 x double]* %72, [512 x double]* %73, [512 x double]* %74, [512 x double]* %75, [512 x double]* %76, [512 x double]* %77, [512 x double]* %78, [512 x double]* %79, [8192 x double]* %101, [512 x double]* %80, [512 x double]* %81, [512 x double]* %82, [512 x double]* %83, [512 x double]* %84, [512 x double]* %85, [512 x double]* %86, [512 x double]* %87, [512 x double]* %88, [512 x double]* %89, [512 x double]* %90, [512 x double]* %91, [512 x double]* %92, [512 x double]* %93, [512 x double]* %94, [512 x double]* %95)
  %102 = bitcast [8192 x double]* %96 to double*
  %103 = bitcast [8192 x double]* %97 to double*
  %104 = bitcast [8192 x double]* %98 to double*
  %105 = bitcast [8192 x double]* %99 to double*
  %106 = bitcast [8192 x double]* %100 to double*
  %107 = bitcast [8192 x double]* %101 to double*
  call void @kp_502_7_hw_stub(double* %102, double* %103, double* %104, double* %105, double* %106, double* %107)
  call void @copy_in([8192 x double]* %96, [512 x double]* %0, [512 x double]* %1, [512 x double]* %2, [512 x double]* %3, [512 x double]* %4, [512 x double]* %5, [512 x double]* %6, [512 x double]* %7, [512 x double]* %8, [512 x double]* %9, [512 x double]* %10, [512 x double]* %11, [512 x double]* %12, [512 x double]* %13, [512 x double]* %14, [512 x double]* %15, [8192 x double]* %97, [512 x double]* %16, [512 x double]* %17, [512 x double]* %18, [512 x double]* %19, [512 x double]* %20, [512 x double]* %21, [512 x double]* %22, [512 x double]* %23, [512 x double]* %24, [512 x double]* %25, [512 x double]* %26, [512 x double]* %27, [512 x double]* %28, [512 x double]* %29, [512 x double]* %30, [512 x double]* %31, [8192 x double]* %98, [512 x double]* %32, [512 x double]* %33, [512 x double]* %34, [512 x double]* %35, [512 x double]* %36, [512 x double]* %37, [512 x double]* %38, [512 x double]* %39, [512 x double]* %40, [512 x double]* %41, [512 x double]* %42, [512 x double]* %43, [512 x double]* %44, [512 x double]* %45, [512 x double]* %46, [512 x double]* %47, [8192 x double]* %99, [512 x double]* %48, [512 x double]* %49, [512 x double]* %50, [512 x double]* %51, [512 x double]* %52, [512 x double]* %53, [512 x double]* %54, [512 x double]* %55, [512 x double]* %56, [512 x double]* %57, [512 x double]* %58, [512 x double]* %59, [512 x double]* %60, [512 x double]* %61, [512 x double]* %62, [512 x double]* %63, [8192 x double]* %100, [512 x double]* %64, [512 x double]* %65, [512 x double]* %66, [512 x double]* %67, [512 x double]* %68, [512 x double]* %69, [512 x double]* %70, [512 x double]* %71, [512 x double]* %72, [512 x double]* %73, [512 x double]* %74, [512 x double]* %75, [512 x double]* %76, [512 x double]* %77, [512 x double]* %78, [512 x double]* %79, [8192 x double]* %101, [512 x double]* %80, [512 x double]* %81, [512 x double]* %82, [512 x double]* %83, [512 x double]* %84, [512 x double]* %85, [512 x double]* %86, [512 x double]* %87, [512 x double]* %88, [512 x double]* %89, [512 x double]* %90, [512 x double]* %91, [512 x double]* %92, [512 x double]* %93, [512 x double]* %94, [512 x double]* %95)
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
!5 = !DILocation(line: 4, column: 164, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_7", linkageName: "_Z8kp_502_7PdS_S_S_S_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_7.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_7.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, imports: !31)
!15 = !DIFile(filename: "G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_7_double_16/.autopilot/db\5Ckp_502_7.pp.0.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7")
!16 = !{!17, !24}
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !19, file: !18, line: 182, size: 32, elements: !20, identifier: "_ZTSSt18float_denorm_style")
!18 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Climits", directory: "G:\5CXilinx_lab\5CKP_502_7")
!19 = !DINamespace(name: "std", scope: null)
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!22 = !DIEnumerator(name: "denorm_absent", value: 0)
!23 = !DIEnumerator(name: "denorm_present", value: 1)
!24 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !19, file: !18, line: 167, size: 32, elements: !25, identifier: "_ZTSSt17float_round_style")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "round_indeterminate", value: -1)
!27 = !DIEnumerator(name: "round_toward_zero", value: 0)
!28 = !DIEnumerator(name: "round_to_nearest", value: 1)
!29 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!30 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!31 = !{!32, !38, !40, !42, !46, !48, !50, !52, !54, !56, !58, !60, !66, !70, !72, !74, !79, !81, !83, !85, !87, !89, !91, !93, !96, !98, !102, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !131, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !169, !173, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !199, !203, !207, !209, !211, !213, !218, !222, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !255, !259, !263, !265, !267, !269, !276, !280, !284, !286, !288, !290, !292, !294, !296, !300, !304, !306, !308, !310, !312, !316, !320, !324, !326, !328, !330, !332, !334, !336, !340, !344, !348, !350, !354, !358, !360, !362, !364, !366, !368, !370, !375, !381, !385, !389, !394, !396, !400, !404, !417, !421, !425, !429, !433, !438, !442, !446, !450, !454, !462, !466, !470, !474, !478, !483, !489, !493, !497, !499, !507, !511, !518, !520, !524, !528, !532, !536, !541, !545, !549, !550, !551, !552, !554, !555, !556, !557, !558, !559, !560, !562, !563, !564, !565, !566, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !33, file: !37, line: 106)
!33 = !DISubprogram(name: "acos", scope: !34, file: !34, line: 190, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!35 = !DISubroutineType(types: !36)
!36 = !{!13, !13}
!37 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "G:\5CXilinx_lab\5CKP_502_7")
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !39, file: !37, line: 125)
!39 = !DISubprogram(name: "asin", scope: !34, file: !34, line: 189, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !41, file: !37, line: 144)
!41 = !DISubprogram(name: "atan", scope: !34, file: !34, line: 191, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !43, file: !37, line: 163)
!43 = !DISubprogram(name: "atan2", scope: !34, file: !34, line: 192, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DISubroutineType(types: !45)
!45 = !{!13, !13, !13}
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !47, file: !37, line: 184)
!47 = !DISubprogram(name: "ceil", scope: !34, file: !34, line: 198, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !49, file: !37, line: 203)
!49 = !DISubprogram(name: "cos", scope: !34, file: !34, line: 184, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !51, file: !37, line: 222)
!51 = !DISubprogram(name: "cosh", scope: !34, file: !34, line: 187, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !53, file: !37, line: 241)
!53 = !DISubprogram(name: "exp", scope: !34, file: !34, line: 193, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !55, file: !37, line: 260)
!55 = !DISubprogram(name: "fabs", scope: !34, file: !34, line: 204, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !57, file: !37, line: 279)
!57 = !DISubprogram(name: "floor", scope: !34, file: !34, line: 199, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !59, file: !37, line: 298)
!59 = !DISubprogram(name: "fmod", scope: !34, file: !34, line: 246, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !61, file: !37, line: 319)
!61 = !DISubprogram(name: "frexp", scope: !34, file: !34, line: 244, type: !62, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!13, !13, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !67, file: !37, line: 338)
!67 = !DISubprogram(name: "ldexp", scope: !34, file: !34, line: 243, type: !68, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{!13, !13, !65}
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !71, file: !37, line: 357)
!71 = !DISubprogram(name: "log", scope: !34, file: !34, line: 194, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !73, file: !37, line: 376)
!73 = !DISubprogram(name: "log10", scope: !34, file: !34, line: 195, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !75, file: !37, line: 395)
!75 = !DISubprogram(name: "modf", scope: !34, file: !34, line: 245, type: !76, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DISubroutineType(types: !77)
!77 = !{!13, !13, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !80, file: !37, line: 407)
!80 = !DISubprogram(name: "pow", scope: !34, file: !34, line: 196, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !82, file: !37, line: 444)
!82 = !DISubprogram(name: "sin", scope: !34, file: !34, line: 183, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !84, file: !37, line: 463)
!84 = !DISubprogram(name: "sinh", scope: !34, file: !34, line: 186, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !86, file: !37, line: 482)
!86 = !DISubprogram(name: "sqrt", scope: !34, file: !34, line: 197, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !88, file: !37, line: 501)
!88 = !DISubprogram(name: "tan", scope: !34, file: !34, line: 185, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !90, file: !37, line: 520)
!90 = !DISubprogram(name: "tanh", scope: !34, file: !34, line: 188, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !92, file: !37, line: 1077)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !34, line: 373, baseType: !13)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !94, file: !37, line: 1078)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !34, line: 372, baseType: !95)
!95 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !97, file: !37, line: 1081)
!97 = !DISubprogram(name: "acosh", scope: !34, file: !34, line: 705, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !99, file: !37, line: 1082)
!99 = !DISubprogram(name: "acoshf", scope: !34, file: !34, line: 706, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{!95, !95}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !103, file: !37, line: 1083)
!103 = !DISubprogram(name: "acoshl", scope: !34, file: !34, line: 707, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !106}
!106 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !108, file: !37, line: 1085)
!108 = !DISubprogram(name: "asinh", scope: !34, file: !34, line: 710, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !110, file: !37, line: 1086)
!110 = !DISubprogram(name: "asinhf", scope: !34, file: !34, line: 711, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !112, file: !37, line: 1087)
!112 = !DISubprogram(name: "asinhl", scope: !34, file: !34, line: 712, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !114, file: !37, line: 1089)
!114 = !DISubprogram(name: "atanh", scope: !34, file: !34, line: 715, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !116, file: !37, line: 1090)
!116 = !DISubprogram(name: "atanhf", scope: !34, file: !34, line: 716, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !118, file: !37, line: 1091)
!118 = !DISubprogram(name: "atanhl", scope: !34, file: !34, line: 717, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !120, file: !37, line: 1093)
!120 = !DISubprogram(name: "cbrt", scope: !34, file: !34, line: 877, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !122, file: !37, line: 1094)
!122 = !DISubprogram(name: "cbrtf", scope: !34, file: !34, line: 878, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !124, file: !37, line: 1095)
!124 = !DISubprogram(name: "cbrtl", scope: !34, file: !34, line: 879, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !126, file: !37, line: 1097)
!126 = !DISubprogram(name: "copysign", scope: !34, file: !34, line: 1063, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !128, file: !37, line: 1098)
!128 = !DISubprogram(name: "copysignf", scope: !34, file: !34, line: 1064, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!95, !95, !95}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !132, file: !37, line: 1099)
!132 = !DISubprogram(name: "copysignl", scope: !34, file: !34, line: 1065, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!106, !106, !106}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !136, file: !37, line: 1101)
!136 = !DISubprogram(name: "erf", scope: !34, file: !34, line: 901, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !138, file: !37, line: 1102)
!138 = !DISubprogram(name: "erff", scope: !34, file: !34, line: 902, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !140, file: !37, line: 1103)
!140 = !DISubprogram(name: "erfl", scope: !34, file: !34, line: 903, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !142, file: !37, line: 1105)
!142 = !DISubprogram(name: "erfc", scope: !34, file: !34, line: 906, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !144, file: !37, line: 1106)
!144 = !DISubprogram(name: "erfcf", scope: !34, file: !34, line: 907, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !146, file: !37, line: 1107)
!146 = !DISubprogram(name: "erfcl", scope: !34, file: !34, line: 908, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !148, file: !37, line: 1109)
!148 = !DISubprogram(name: "exp2", scope: !34, file: !34, line: 728, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !150, file: !37, line: 1110)
!150 = !DISubprogram(name: "exp2f", scope: !34, file: !34, line: 729, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !152, file: !37, line: 1111)
!152 = !DISubprogram(name: "exp2l", scope: !34, file: !34, line: 730, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !154, file: !37, line: 1113)
!154 = !DISubprogram(name: "expm1", scope: !34, file: !34, line: 734, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !156, file: !37, line: 1114)
!156 = !DISubprogram(name: "expm1f", scope: !34, file: !34, line: 735, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !158, file: !37, line: 1115)
!158 = !DISubprogram(name: "expm1l", scope: !34, file: !34, line: 736, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !160, file: !37, line: 1117)
!160 = !DISubprogram(name: "fdim", scope: !34, file: !34, line: 1109, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !162, file: !37, line: 1118)
!162 = !DISubprogram(name: "fdimf", scope: !34, file: !34, line: 1110, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !164, file: !37, line: 1119)
!164 = !DISubprogram(name: "fdiml", scope: !34, file: !34, line: 1111, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !166, file: !37, line: 1121)
!166 = !DISubprogram(name: "fma", scope: !34, file: !34, line: 1130, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!13, !13, !13, !13}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !170, file: !37, line: 1122)
!170 = !DISubprogram(name: "fmaf", scope: !34, file: !34, line: 1131, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!95, !95, !95, !95}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !174, file: !37, line: 1123)
!174 = !DISubprogram(name: "fmal", scope: !34, file: !34, line: 1132, type: !175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DISubroutineType(types: !176)
!176 = !{!106, !106, !106, !106}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !178, file: !37, line: 1125)
!178 = !DISubprogram(name: "fmax", scope: !34, file: !34, line: 1119, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !180, file: !37, line: 1126)
!180 = !DISubprogram(name: "fmaxf", scope: !34, file: !34, line: 1120, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !182, file: !37, line: 1127)
!182 = !DISubprogram(name: "fmaxl", scope: !34, file: !34, line: 1121, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !184, file: !37, line: 1129)
!184 = !DISubprogram(name: "fmin", scope: !34, file: !34, line: 1124, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !186, file: !37, line: 1130)
!186 = !DISubprogram(name: "fminf", scope: !34, file: !34, line: 1125, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !188, file: !37, line: 1131)
!188 = !DISubprogram(name: "fminl", scope: !34, file: !34, line: 1126, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !190, file: !37, line: 1133)
!190 = !DISubprogram(name: "hypot", scope: !34, file: !34, line: 882, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !192, file: !37, line: 1134)
!192 = !DISubprogram(name: "hypotf", scope: !34, file: !34, line: 883, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !194, file: !37, line: 1135)
!194 = !DISubprogram(name: "hypotl", scope: !34, file: !34, line: 887, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !196, file: !37, line: 1137)
!196 = !DISubprogram(name: "ilogb", scope: !34, file: !34, line: 748, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!65, !13}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !200, file: !37, line: 1138)
!200 = !DISubprogram(name: "ilogbf", scope: !34, file: !34, line: 749, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!65, !95}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !204, file: !37, line: 1139)
!204 = !DISubprogram(name: "ilogbl", scope: !34, file: !34, line: 750, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!65, !106}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !208, file: !37, line: 1141)
!208 = !DISubprogram(name: "lgamma", scope: !34, file: !34, line: 911, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !210, file: !37, line: 1142)
!210 = !DISubprogram(name: "lgammaf", scope: !34, file: !34, line: 912, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !212, file: !37, line: 1143)
!212 = !DISubprogram(name: "lgammal", scope: !34, file: !34, line: 913, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !214, file: !37, line: 1145)
!214 = !DISubprogram(name: "llrint", scope: !34, file: !34, line: 946, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !13}
!217 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !219, file: !37, line: 1146)
!219 = !DISubprogram(name: "llrintf", scope: !34, file: !34, line: 947, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!217, !95}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !223, file: !37, line: 1147)
!223 = !DISubprogram(name: "llrintl", scope: !34, file: !34, line: 948, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!217, !106}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !227, file: !37, line: 1149)
!227 = !DISubprogram(name: "llround", scope: !34, file: !34, line: 1038, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !229, file: !37, line: 1150)
!229 = !DISubprogram(name: "llroundf", scope: !34, file: !34, line: 1039, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !231, file: !37, line: 1151)
!231 = !DISubprogram(name: "llroundl", scope: !34, file: !34, line: 1040, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !233, file: !37, line: 1153)
!233 = !DISubprogram(name: "log1p", scope: !34, file: !34, line: 768, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !235, file: !37, line: 1154)
!235 = !DISubprogram(name: "log1pf", scope: !34, file: !34, line: 769, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !237, file: !37, line: 1155)
!237 = !DISubprogram(name: "log1pl", scope: !34, file: !34, line: 770, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !239, file: !37, line: 1157)
!239 = !DISubprogram(name: "log2", scope: !34, file: !34, line: 773, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !241, file: !37, line: 1158)
!241 = !DISubprogram(name: "log2f", scope: !34, file: !34, line: 774, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !243, file: !37, line: 1159)
!243 = !DISubprogram(name: "log2l", scope: !34, file: !34, line: 775, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !245, file: !37, line: 1161)
!245 = !DISubprogram(name: "logb", scope: !34, file: !34, line: 778, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !247, file: !37, line: 1162)
!247 = !DISubprogram(name: "logbf", scope: !34, file: !34, line: 779, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !249, file: !37, line: 1163)
!249 = !DISubprogram(name: "logbl", scope: !34, file: !34, line: 780, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !251, file: !37, line: 1165)
!251 = !DISubprogram(name: "lrint", scope: !34, file: !34, line: 942, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !13}
!254 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !256, file: !37, line: 1166)
!256 = !DISubprogram(name: "lrintf", scope: !34, file: !34, line: 943, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!254, !95}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !260, file: !37, line: 1167)
!260 = !DISubprogram(name: "lrintl", scope: !34, file: !34, line: 944, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!254, !106}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !264, file: !37, line: 1169)
!264 = !DISubprogram(name: "lround", scope: !34, file: !34, line: 1035, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !266, file: !37, line: 1170)
!266 = !DISubprogram(name: "lroundf", scope: !34, file: !34, line: 1036, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !268, file: !37, line: 1171)
!268 = !DISubprogram(name: "lroundl", scope: !34, file: !34, line: 1037, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !270, file: !37, line: 1173)
!270 = !DISubprogram(name: "nan", scope: !34, file: !34, line: 1087, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DISubroutineType(types: !272)
!272 = !{!13, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !277, file: !37, line: 1174)
!277 = !DISubprogram(name: "nanf", scope: !34, file: !34, line: 1088, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!95, !273}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !281, file: !37, line: 1175)
!281 = !DISubprogram(name: "nanl", scope: !34, file: !34, line: 1089, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DISubroutineType(types: !283)
!283 = !{!106, !273}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !285, file: !37, line: 1177)
!285 = !DISubprogram(name: "nearbyint", scope: !34, file: !34, line: 931, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !287, file: !37, line: 1178)
!287 = !DISubprogram(name: "nearbyintf", scope: !34, file: !34, line: 932, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !289, file: !37, line: 1179)
!289 = !DISubprogram(name: "nearbyintl", scope: !34, file: !34, line: 933, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !291, file: !37, line: 1181)
!291 = !DISubprogram(name: "nextafter", scope: !34, file: !34, line: 1098, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !293, file: !37, line: 1182)
!293 = !DISubprogram(name: "nextafterf", scope: !34, file: !34, line: 1099, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !295, file: !37, line: 1183)
!295 = !DISubprogram(name: "nextafterl", scope: !34, file: !34, line: 1100, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !297, file: !37, line: 1185)
!297 = !DISubprogram(name: "nexttoward", scope: !34, file: !34, line: 1103, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!13, !13, !106}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !301, file: !37, line: 1186)
!301 = !DISubprogram(name: "nexttowardf", scope: !34, file: !34, line: 1104, type: !302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DISubroutineType(types: !303)
!303 = !{!95, !95, !106}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !305, file: !37, line: 1187)
!305 = !DISubprogram(name: "nexttowardl", scope: !34, file: !34, line: 1105, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !307, file: !37, line: 1189)
!307 = !DISubprogram(name: "remainder", scope: !34, file: !34, line: 1053, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !309, file: !37, line: 1190)
!309 = !DISubprogram(name: "remainderf", scope: !34, file: !34, line: 1054, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !311, file: !37, line: 1191)
!311 = !DISubprogram(name: "remainderl", scope: !34, file: !34, line: 1055, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !313, file: !37, line: 1193)
!313 = !DISubprogram(name: "remquo", scope: !34, file: !34, line: 1058, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!13, !13, !13, !64}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !317, file: !37, line: 1194)
!317 = !DISubprogram(name: "remquof", scope: !34, file: !34, line: 1059, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!95, !95, !95, !64}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !321, file: !37, line: 1195)
!321 = !DISubprogram(name: "remquol", scope: !34, file: !34, line: 1060, type: !322, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{!106, !106, !106, !64}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !325, file: !37, line: 1197)
!325 = !DISubprogram(name: "rint", scope: !34, file: !34, line: 937, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !327, file: !37, line: 1198)
!327 = !DISubprogram(name: "rintf", scope: !34, file: !34, line: 938, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !329, file: !37, line: 1199)
!329 = !DISubprogram(name: "rintl", scope: !34, file: !34, line: 939, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !331, file: !37, line: 1201)
!331 = !DISubprogram(name: "round", scope: !34, file: !34, line: 1030, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !333, file: !37, line: 1202)
!333 = !DISubprogram(name: "roundf", scope: !34, file: !34, line: 1031, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !335, file: !37, line: 1203)
!335 = !DISubprogram(name: "roundl", scope: !34, file: !34, line: 1032, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !337, file: !37, line: 1205)
!337 = !DISubprogram(name: "scalbln", scope: !34, file: !34, line: 871, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!13, !13, !254}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !341, file: !37, line: 1206)
!341 = !DISubprogram(name: "scalblnf", scope: !34, file: !34, line: 872, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!95, !95, !254}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !345, file: !37, line: 1207)
!345 = !DISubprogram(name: "scalblnl", scope: !34, file: !34, line: 873, type: !346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DISubroutineType(types: !347)
!347 = !{!106, !106, !254}
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !349, file: !37, line: 1209)
!349 = !DISubprogram(name: "scalbn", scope: !34, file: !34, line: 867, type: !68, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !351, file: !37, line: 1210)
!351 = !DISubprogram(name: "scalbnf", scope: !34, file: !34, line: 868, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!95, !95, !65}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !355, file: !37, line: 1211)
!355 = !DISubprogram(name: "scalbnl", scope: !34, file: !34, line: 869, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{!106, !106, !65}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !359, file: !37, line: 1213)
!359 = !DISubprogram(name: "tgamma", scope: !34, file: !34, line: 918, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !361, file: !37, line: 1214)
!361 = !DISubprogram(name: "tgammaf", scope: !34, file: !34, line: 919, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !363, file: !37, line: 1215)
!363 = !DISubprogram(name: "tgammal", scope: !34, file: !34, line: 920, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !365, file: !37, line: 1217)
!365 = !DISubprogram(name: "trunc", scope: !34, file: !34, line: 1044, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !367, file: !37, line: 1218)
!367 = !DISubprogram(name: "truncf", scope: !34, file: !34, line: 1045, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !369, file: !37, line: 1219)
!369 = !DISubprogram(name: "truncl", scope: !34, file: !34, line: 1046, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !371, file: !374, line: 124)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !372, line: 53, baseType: !373)
!372 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !372, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!374 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "G:\5CXilinx_lab\5CKP_502_7")
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !376, file: !374, line: 125)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !372, line: 58, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !372, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !378, identifier: "_ZTS7_ldiv_t")
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !377, file: !372, line: 56, baseType: !254, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !377, file: !372, line: 57, baseType: !254, size: 64, offset: 64)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !382, file: !374, line: 127)
!382 = !DISubprogram(name: "abort", scope: !372, file: !372, line: 320, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{null}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !386, file: !374, line: 128)
!386 = !DISubprogram(name: "abs", scope: !34, file: !34, line: 254, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!65, !65}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !390, file: !374, line: 129)
!390 = !DISubprogram(name: "atexit", scope: !372, file: !372, line: 340, type: !391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{!65, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !395, file: !374, line: 135)
!395 = !DISubprogram(name: "atof", scope: !34, file: !34, line: 259, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !397, file: !374, line: 136)
!397 = !DISubprogram(name: "atoi", scope: !372, file: !372, line: 346, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!65, !273}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !401, file: !374, line: 137)
!401 = !DISubprogram(name: "atol", scope: !372, file: !372, line: 348, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!254, !273}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !405, file: !374, line: 138)
!405 = !DISubprogram(name: "bsearch", scope: !372, file: !372, line: 352, type: !406, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !409, !409, !411, !411, !414}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !412, line: 35, baseType: !413)
!412 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!413 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!65, !409, !409}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !418, file: !374, line: 139)
!418 = !DISubprogram(name: "calloc", scope: !372, file: !372, line: 446, type: !419, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!419 = !DISubroutineType(types: !420)
!420 = !{!408, !411, !411}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !422, file: !374, line: 140)
!422 = !DISubprogram(name: "div", scope: !372, file: !372, line: 358, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!371, !65, !65}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !426, file: !374, line: 141)
!426 = !DISubprogram(name: "exit", scope: !372, file: !372, line: 306, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !65}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !430, file: !374, line: 142)
!430 = !DISubprogram(name: "free", scope: !372, file: !372, line: 447, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !408}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !434, file: !374, line: 143)
!434 = !DISubprogram(name: "getenv", scope: !372, file: !372, line: 359, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !273}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !439, file: !374, line: 144)
!439 = !DISubprogram(name: "labs", scope: !34, file: !34, line: 255, type: !440, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DISubroutineType(types: !441)
!441 = !{!254, !254}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !443, file: !374, line: 145)
!443 = !DISubprogram(name: "ldiv", scope: !372, file: !372, line: 369, type: !444, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DISubroutineType(types: !445)
!445 = !{!376, !254, !254}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !447, file: !374, line: 146)
!447 = !DISubprogram(name: "malloc", scope: !372, file: !372, line: 448, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!448 = !DISubroutineType(types: !449)
!449 = !{!408, !411}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !451, file: !374, line: 148)
!451 = !DISubprogram(name: "mblen", scope: !372, file: !372, line: 371, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!65, !273, !411}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !455, file: !374, line: 149)
!455 = !DISubprogram(name: "mbstowcs", scope: !372, file: !372, line: 379, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!411, !458, !461, !411}
!458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !273)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !463, file: !374, line: 150)
!463 = !DISubprogram(name: "mbtowc", scope: !372, file: !372, line: 377, type: !464, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DISubroutineType(types: !465)
!465 = !{!65, !458, !461, !411}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !467, file: !374, line: 152)
!467 = !DISubprogram(name: "qsort", scope: !372, file: !372, line: 353, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !408, !411, !411, !414}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !471, file: !374, line: 158)
!471 = !DISubprogram(name: "rand", scope: !372, file: !372, line: 382, type: !472, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DISubroutineType(types: !473)
!473 = !{!65}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !475, file: !374, line: 159)
!475 = !DISubprogram(name: "realloc", scope: !372, file: !372, line: 449, type: !476, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DISubroutineType(types: !477)
!477 = !{!408, !408, !411}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !479, file: !374, line: 160)
!479 = !DISubprogram(name: "srand", scope: !372, file: !372, line: 384, type: !480, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !484, file: !374, line: 161)
!484 = !DISubprogram(name: "strtod", scope: !372, file: !372, line: 396, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!13, !461, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !490, file: !374, line: 162)
!490 = !DISubprogram(name: "strtol", scope: !372, file: !372, line: 430, type: !491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{!254, !461, !487, !65}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !494, file: !374, line: 163)
!494 = !DISubprogram(name: "strtoul", scope: !372, file: !372, line: 432, type: !495, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{!413, !461, !487, !65}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !498, file: !374, line: 164)
!498 = !DISubprogram(name: "system", scope: !372, file: !372, line: 436, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !500, file: !374, line: 166)
!500 = !DISubprogram(name: "wcstombs", scope: !372, file: !372, line: 441, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!411, !503, !504, !411}
!503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !437)
!504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !508, file: !374, line: 167)
!508 = !DISubprogram(name: "wctomb", scope: !372, file: !372, line: 439, type: !509, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{!65, !437, !460}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !513, file: !374, line: 220)
!512 = !DINamespace(name: "__gnu_cxx", scope: null)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !372, line: 644, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !515, identifier: "_ZTS7lldiv_t")
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !514, file: !372, line: 644, baseType: !217, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !514, file: !372, line: 644, baseType: !217, size: 64, offset: 64)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !519, file: !374, line: 226)
!519 = !DISubprogram(name: "_Exit", scope: !372, file: !372, line: 311, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !521, file: !374, line: 230)
!521 = !DISubprogram(name: "llabs", scope: !372, file: !372, line: 648, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!217, !217}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !525, file: !374, line: 236)
!525 = !DISubprogram(name: "lldiv", scope: !372, file: !372, line: 646, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!513, !217, !217}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !529, file: !374, line: 247)
!529 = !DISubprogram(name: "atoll", scope: !372, file: !372, line: 657, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!217, !273}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !533, file: !374, line: 248)
!533 = !DISubprogram(name: "strtoll", scope: !372, file: !372, line: 653, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!217, !461, !487, !65}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !537, file: !374, line: 249)
!537 = !DISubprogram(name: "strtoull", scope: !372, file: !372, line: 654, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !461, !487, !65}
!540 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !542, file: !374, line: 251)
!542 = !DISubprogram(name: "strtof", scope: !372, file: !372, line: 403, type: !543, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!543 = !DISubroutineType(types: !544)
!544 = !{!95, !461, !487}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !546, file: !374, line: 252)
!546 = !DISubprogram(name: "strtold", scope: !372, file: !372, line: 414, type: !547, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DISubroutineType(types: !548)
!548 = !{!106, !461, !487}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !513, file: !374, line: 260)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !519, file: !374, line: 262)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !521, file: !374, line: 264)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !553, file: !374, line: 265)
!553 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !512, file: !374, line: 233, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !525, file: !374, line: 266)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !529, file: !374, line: 268)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !542, file: !374, line: 269)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !533, file: !374, line: 270)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !537, file: !374, line: 271)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !546, file: !374, line: 272)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !382, file: !561, line: 38)
!561 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !390, file: !561, line: 39)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !426, file: !561, line: 40)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !371, file: !561, line: 51)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !376, file: !561, line: 52)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !567, file: !561, line: 54)
!567 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !19, file: !374, line: 185, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !570}
!570 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !395, file: !561, line: 55)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !397, file: !561, line: 56)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !401, file: !561, line: 57)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !405, file: !561, line: 58)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !418, file: !561, line: 59)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !553, file: !561, line: 60)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !430, file: !561, line: 61)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !434, file: !561, line: 62)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !439, file: !561, line: 63)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !443, file: !561, line: 64)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !447, file: !561, line: 65)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !451, file: !561, line: 67)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !455, file: !561, line: 68)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !463, file: !561, line: 69)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !467, file: !561, line: 71)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !471, file: !561, line: 72)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !475, file: !561, line: 73)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !479, file: !561, line: 74)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !484, file: !561, line: 75)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !490, file: !561, line: 76)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !494, file: !561, line: 77)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !498, file: !561, line: 78)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !500, file: !561, line: 80)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !508, file: !561, line: 81)
!595 = !DILocation(line: 5, column: 9, scope: !6)
