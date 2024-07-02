; ModuleID = 'C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_10/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_kp_502_15_ir(double* %r, double* %a, double* %b, double* %c, double* %x) local_unnamed_addr #1 {
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
  %r_copy_0 = bitcast i8* %malloccall_0 to [4096 x double]*
  %r_copy_1 = bitcast i8* %malloccall_1 to [4096 x double]*
  %r_copy_2 = bitcast i8* %malloccall_2 to [4096 x double]*
  %r_copy_3 = bitcast i8* %malloccall_3 to [4096 x double]*
  %r_copy_4 = bitcast i8* %malloccall_4 to [4096 x double]*
  %r_copy_5 = bitcast i8* %malloccall_5 to [4096 x double]*
  %r_copy_6 = bitcast i8* %malloccall_6 to [4096 x double]*
  %r_copy_7 = bitcast i8* %malloccall_7 to [4096 x double]*
  %r_copy_8 = bitcast i8* %malloccall_8 to [4096 x double]*
  %r_copy_9 = bitcast i8* %malloccall_9 to [4096 x double]*
  %r_copy_10 = bitcast i8* %malloccall_10 to [4096 x double]*
  %r_copy_11 = bitcast i8* %malloccall_11 to [4096 x double]*
  %r_copy_12 = bitcast i8* %malloccall_12 to [4096 x double]*
  %r_copy_13 = bitcast i8* %malloccall_13 to [4096 x double]*
  %r_copy_14 = bitcast i8* %malloccall_14 to [4096 x double]*
  %r_copy_15 = bitcast i8* %malloccall_15 to [4096 x double]*
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
  %a_copy_0 = bitcast i8* %malloccall1_0 to [4096 x double]*
  %a_copy_1 = bitcast i8* %malloccall1_1 to [4096 x double]*
  %a_copy_2 = bitcast i8* %malloccall1_2 to [4096 x double]*
  %a_copy_3 = bitcast i8* %malloccall1_3 to [4096 x double]*
  %a_copy_4 = bitcast i8* %malloccall1_4 to [4096 x double]*
  %a_copy_5 = bitcast i8* %malloccall1_5 to [4096 x double]*
  %a_copy_6 = bitcast i8* %malloccall1_6 to [4096 x double]*
  %a_copy_7 = bitcast i8* %malloccall1_7 to [4096 x double]*
  %a_copy_8 = bitcast i8* %malloccall1_8 to [4096 x double]*
  %a_copy_9 = bitcast i8* %malloccall1_9 to [4096 x double]*
  %a_copy_10 = bitcast i8* %malloccall1_10 to [4096 x double]*
  %a_copy_11 = bitcast i8* %malloccall1_11 to [4096 x double]*
  %a_copy_12 = bitcast i8* %malloccall1_12 to [4096 x double]*
  %a_copy_13 = bitcast i8* %malloccall1_13 to [4096 x double]*
  %a_copy_14 = bitcast i8* %malloccall1_14 to [4096 x double]*
  %a_copy_15 = bitcast i8* %malloccall1_15 to [4096 x double]*
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
  %b_copy_0 = bitcast i8* %malloccall2_0 to [4096 x double]*
  %b_copy_1 = bitcast i8* %malloccall2_1 to [4096 x double]*
  %b_copy_2 = bitcast i8* %malloccall2_2 to [4096 x double]*
  %b_copy_3 = bitcast i8* %malloccall2_3 to [4096 x double]*
  %b_copy_4 = bitcast i8* %malloccall2_4 to [4096 x double]*
  %b_copy_5 = bitcast i8* %malloccall2_5 to [4096 x double]*
  %b_copy_6 = bitcast i8* %malloccall2_6 to [4096 x double]*
  %b_copy_7 = bitcast i8* %malloccall2_7 to [4096 x double]*
  %b_copy_8 = bitcast i8* %malloccall2_8 to [4096 x double]*
  %b_copy_9 = bitcast i8* %malloccall2_9 to [4096 x double]*
  %b_copy_10 = bitcast i8* %malloccall2_10 to [4096 x double]*
  %b_copy_11 = bitcast i8* %malloccall2_11 to [4096 x double]*
  %b_copy_12 = bitcast i8* %malloccall2_12 to [4096 x double]*
  %b_copy_13 = bitcast i8* %malloccall2_13 to [4096 x double]*
  %b_copy_14 = bitcast i8* %malloccall2_14 to [4096 x double]*
  %b_copy_15 = bitcast i8* %malloccall2_15 to [4096 x double]*
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
  %c_copy_0 = bitcast i8* %malloccall3_0 to [4096 x double]*
  %c_copy_1 = bitcast i8* %malloccall3_1 to [4096 x double]*
  %c_copy_2 = bitcast i8* %malloccall3_2 to [4096 x double]*
  %c_copy_3 = bitcast i8* %malloccall3_3 to [4096 x double]*
  %c_copy_4 = bitcast i8* %malloccall3_4 to [4096 x double]*
  %c_copy_5 = bitcast i8* %malloccall3_5 to [4096 x double]*
  %c_copy_6 = bitcast i8* %malloccall3_6 to [4096 x double]*
  %c_copy_7 = bitcast i8* %malloccall3_7 to [4096 x double]*
  %c_copy_8 = bitcast i8* %malloccall3_8 to [4096 x double]*
  %c_copy_9 = bitcast i8* %malloccall3_9 to [4096 x double]*
  %c_copy_10 = bitcast i8* %malloccall3_10 to [4096 x double]*
  %c_copy_11 = bitcast i8* %malloccall3_11 to [4096 x double]*
  %c_copy_12 = bitcast i8* %malloccall3_12 to [4096 x double]*
  %c_copy_13 = bitcast i8* %malloccall3_13 to [4096 x double]*
  %c_copy_14 = bitcast i8* %malloccall3_14 to [4096 x double]*
  %c_copy_15 = bitcast i8* %malloccall3_15 to [4096 x double]*
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
  %x_copy_0 = bitcast i8* %malloccall4_0 to [4096 x double]*
  %x_copy_1 = bitcast i8* %malloccall4_1 to [4096 x double]*
  %x_copy_2 = bitcast i8* %malloccall4_2 to [4096 x double]*
  %x_copy_3 = bitcast i8* %malloccall4_3 to [4096 x double]*
  %x_copy_4 = bitcast i8* %malloccall4_4 to [4096 x double]*
  %x_copy_5 = bitcast i8* %malloccall4_5 to [4096 x double]*
  %x_copy_6 = bitcast i8* %malloccall4_6 to [4096 x double]*
  %x_copy_7 = bitcast i8* %malloccall4_7 to [4096 x double]*
  %x_copy_8 = bitcast i8* %malloccall4_8 to [4096 x double]*
  %x_copy_9 = bitcast i8* %malloccall4_9 to [4096 x double]*
  %x_copy_10 = bitcast i8* %malloccall4_10 to [4096 x double]*
  %x_copy_11 = bitcast i8* %malloccall4_11 to [4096 x double]*
  %x_copy_12 = bitcast i8* %malloccall4_12 to [4096 x double]*
  %x_copy_13 = bitcast i8* %malloccall4_13 to [4096 x double]*
  %x_copy_14 = bitcast i8* %malloccall4_14 to [4096 x double]*
  %x_copy_15 = bitcast i8* %malloccall4_15 to [4096 x double]*
  %0 = bitcast double* %r to [65536 x double]*
  %1 = bitcast double* %a to [65536 x double]*
  %2 = bitcast double* %b to [65536 x double]*
  %3 = bitcast double* %c to [65536 x double]*
  %4 = bitcast double* %x to [65536 x double]*
  call void @copy_in([65536 x double]* %0, [4096 x double]* %r_copy_0, [4096 x double]* %r_copy_1, [4096 x double]* %r_copy_2, [4096 x double]* %r_copy_3, [4096 x double]* %r_copy_4, [4096 x double]* %r_copy_5, [4096 x double]* %r_copy_6, [4096 x double]* %r_copy_7, [4096 x double]* %r_copy_8, [4096 x double]* %r_copy_9, [4096 x double]* %r_copy_10, [4096 x double]* %r_copy_11, [4096 x double]* %r_copy_12, [4096 x double]* %r_copy_13, [4096 x double]* %r_copy_14, [4096 x double]* %r_copy_15, [65536 x double]* %1, [4096 x double]* %a_copy_0, [4096 x double]* %a_copy_1, [4096 x double]* %a_copy_2, [4096 x double]* %a_copy_3, [4096 x double]* %a_copy_4, [4096 x double]* %a_copy_5, [4096 x double]* %a_copy_6, [4096 x double]* %a_copy_7, [4096 x double]* %a_copy_8, [4096 x double]* %a_copy_9, [4096 x double]* %a_copy_10, [4096 x double]* %a_copy_11, [4096 x double]* %a_copy_12, [4096 x double]* %a_copy_13, [4096 x double]* %a_copy_14, [4096 x double]* %a_copy_15, [65536 x double]* %2, [4096 x double]* %b_copy_0, [4096 x double]* %b_copy_1, [4096 x double]* %b_copy_2, [4096 x double]* %b_copy_3, [4096 x double]* %b_copy_4, [4096 x double]* %b_copy_5, [4096 x double]* %b_copy_6, [4096 x double]* %b_copy_7, [4096 x double]* %b_copy_8, [4096 x double]* %b_copy_9, [4096 x double]* %b_copy_10, [4096 x double]* %b_copy_11, [4096 x double]* %b_copy_12, [4096 x double]* %b_copy_13, [4096 x double]* %b_copy_14, [4096 x double]* %b_copy_15, [65536 x double]* %3, [4096 x double]* %c_copy_0, [4096 x double]* %c_copy_1, [4096 x double]* %c_copy_2, [4096 x double]* %c_copy_3, [4096 x double]* %c_copy_4, [4096 x double]* %c_copy_5, [4096 x double]* %c_copy_6, [4096 x double]* %c_copy_7, [4096 x double]* %c_copy_8, [4096 x double]* %c_copy_9, [4096 x double]* %c_copy_10, [4096 x double]* %c_copy_11, [4096 x double]* %c_copy_12, [4096 x double]* %c_copy_13, [4096 x double]* %c_copy_14, [4096 x double]* %c_copy_15, [65536 x double]* %4, [4096 x double]* %x_copy_0, [4096 x double]* %x_copy_1, [4096 x double]* %x_copy_2, [4096 x double]* %x_copy_3, [4096 x double]* %x_copy_4, [4096 x double]* %x_copy_5, [4096 x double]* %x_copy_6, [4096 x double]* %x_copy_7, [4096 x double]* %x_copy_8, [4096 x double]* %x_copy_9, [4096 x double]* %x_copy_10, [4096 x double]* %x_copy_11, [4096 x double]* %x_copy_12, [4096 x double]* %x_copy_13, [4096 x double]* %x_copy_14, [4096 x double]* %x_copy_15)
  %_0 = getelementptr [4096 x double], [4096 x double]* %r_copy_0, i32 0, i32 0
  %_1 = getelementptr [4096 x double], [4096 x double]* %r_copy_1, i32 0, i32 0
  %_2 = getelementptr [4096 x double], [4096 x double]* %r_copy_2, i32 0, i32 0
  %_3 = getelementptr [4096 x double], [4096 x double]* %r_copy_3, i32 0, i32 0
  %_4 = getelementptr [4096 x double], [4096 x double]* %r_copy_4, i32 0, i32 0
  %_5 = getelementptr [4096 x double], [4096 x double]* %r_copy_5, i32 0, i32 0
  %_6 = getelementptr [4096 x double], [4096 x double]* %r_copy_6, i32 0, i32 0
  %_7 = getelementptr [4096 x double], [4096 x double]* %r_copy_7, i32 0, i32 0
  %_8 = getelementptr [4096 x double], [4096 x double]* %r_copy_8, i32 0, i32 0
  %_9 = getelementptr [4096 x double], [4096 x double]* %r_copy_9, i32 0, i32 0
  %_10 = getelementptr [4096 x double], [4096 x double]* %r_copy_10, i32 0, i32 0
  %_11 = getelementptr [4096 x double], [4096 x double]* %r_copy_11, i32 0, i32 0
  %_12 = getelementptr [4096 x double], [4096 x double]* %r_copy_12, i32 0, i32 0
  %_13 = getelementptr [4096 x double], [4096 x double]* %r_copy_13, i32 0, i32 0
  %_14 = getelementptr [4096 x double], [4096 x double]* %r_copy_14, i32 0, i32 0
  %_15 = getelementptr [4096 x double], [4096 x double]* %r_copy_15, i32 0, i32 0
  %_05 = getelementptr [4096 x double], [4096 x double]* %a_copy_0, i32 0, i32 0
  %_16 = getelementptr [4096 x double], [4096 x double]* %a_copy_1, i32 0, i32 0
  %_27 = getelementptr [4096 x double], [4096 x double]* %a_copy_2, i32 0, i32 0
  %_38 = getelementptr [4096 x double], [4096 x double]* %a_copy_3, i32 0, i32 0
  %_49 = getelementptr [4096 x double], [4096 x double]* %a_copy_4, i32 0, i32 0
  %_510 = getelementptr [4096 x double], [4096 x double]* %a_copy_5, i32 0, i32 0
  %_611 = getelementptr [4096 x double], [4096 x double]* %a_copy_6, i32 0, i32 0
  %_712 = getelementptr [4096 x double], [4096 x double]* %a_copy_7, i32 0, i32 0
  %_813 = getelementptr [4096 x double], [4096 x double]* %a_copy_8, i32 0, i32 0
  %_914 = getelementptr [4096 x double], [4096 x double]* %a_copy_9, i32 0, i32 0
  %_1015 = getelementptr [4096 x double], [4096 x double]* %a_copy_10, i32 0, i32 0
  %_1116 = getelementptr [4096 x double], [4096 x double]* %a_copy_11, i32 0, i32 0
  %_1217 = getelementptr [4096 x double], [4096 x double]* %a_copy_12, i32 0, i32 0
  %_1318 = getelementptr [4096 x double], [4096 x double]* %a_copy_13, i32 0, i32 0
  %_1419 = getelementptr [4096 x double], [4096 x double]* %a_copy_14, i32 0, i32 0
  %_1520 = getelementptr [4096 x double], [4096 x double]* %a_copy_15, i32 0, i32 0
  %_021 = getelementptr [4096 x double], [4096 x double]* %b_copy_0, i32 0, i32 0
  %_122 = getelementptr [4096 x double], [4096 x double]* %b_copy_1, i32 0, i32 0
  %_223 = getelementptr [4096 x double], [4096 x double]* %b_copy_2, i32 0, i32 0
  %_324 = getelementptr [4096 x double], [4096 x double]* %b_copy_3, i32 0, i32 0
  %_425 = getelementptr [4096 x double], [4096 x double]* %b_copy_4, i32 0, i32 0
  %_526 = getelementptr [4096 x double], [4096 x double]* %b_copy_5, i32 0, i32 0
  %_627 = getelementptr [4096 x double], [4096 x double]* %b_copy_6, i32 0, i32 0
  %_728 = getelementptr [4096 x double], [4096 x double]* %b_copy_7, i32 0, i32 0
  %_829 = getelementptr [4096 x double], [4096 x double]* %b_copy_8, i32 0, i32 0
  %_930 = getelementptr [4096 x double], [4096 x double]* %b_copy_9, i32 0, i32 0
  %_1031 = getelementptr [4096 x double], [4096 x double]* %b_copy_10, i32 0, i32 0
  %_1132 = getelementptr [4096 x double], [4096 x double]* %b_copy_11, i32 0, i32 0
  %_1233 = getelementptr [4096 x double], [4096 x double]* %b_copy_12, i32 0, i32 0
  %_1334 = getelementptr [4096 x double], [4096 x double]* %b_copy_13, i32 0, i32 0
  %_1435 = getelementptr [4096 x double], [4096 x double]* %b_copy_14, i32 0, i32 0
  %_1536 = getelementptr [4096 x double], [4096 x double]* %b_copy_15, i32 0, i32 0
  %_037 = getelementptr [4096 x double], [4096 x double]* %c_copy_0, i32 0, i32 0
  %_138 = getelementptr [4096 x double], [4096 x double]* %c_copy_1, i32 0, i32 0
  %_239 = getelementptr [4096 x double], [4096 x double]* %c_copy_2, i32 0, i32 0
  %_340 = getelementptr [4096 x double], [4096 x double]* %c_copy_3, i32 0, i32 0
  %_441 = getelementptr [4096 x double], [4096 x double]* %c_copy_4, i32 0, i32 0
  %_542 = getelementptr [4096 x double], [4096 x double]* %c_copy_5, i32 0, i32 0
  %_643 = getelementptr [4096 x double], [4096 x double]* %c_copy_6, i32 0, i32 0
  %_744 = getelementptr [4096 x double], [4096 x double]* %c_copy_7, i32 0, i32 0
  %_845 = getelementptr [4096 x double], [4096 x double]* %c_copy_8, i32 0, i32 0
  %_946 = getelementptr [4096 x double], [4096 x double]* %c_copy_9, i32 0, i32 0
  %_1047 = getelementptr [4096 x double], [4096 x double]* %c_copy_10, i32 0, i32 0
  %_1148 = getelementptr [4096 x double], [4096 x double]* %c_copy_11, i32 0, i32 0
  %_1249 = getelementptr [4096 x double], [4096 x double]* %c_copy_12, i32 0, i32 0
  %_1350 = getelementptr [4096 x double], [4096 x double]* %c_copy_13, i32 0, i32 0
  %_1451 = getelementptr [4096 x double], [4096 x double]* %c_copy_14, i32 0, i32 0
  %_1552 = getelementptr [4096 x double], [4096 x double]* %c_copy_15, i32 0, i32 0
  %_053 = getelementptr [4096 x double], [4096 x double]* %x_copy_0, i32 0, i32 0
  %_154 = getelementptr [4096 x double], [4096 x double]* %x_copy_1, i32 0, i32 0
  %_255 = getelementptr [4096 x double], [4096 x double]* %x_copy_2, i32 0, i32 0
  %_356 = getelementptr [4096 x double], [4096 x double]* %x_copy_3, i32 0, i32 0
  %_457 = getelementptr [4096 x double], [4096 x double]* %x_copy_4, i32 0, i32 0
  %_558 = getelementptr [4096 x double], [4096 x double]* %x_copy_5, i32 0, i32 0
  %_659 = getelementptr [4096 x double], [4096 x double]* %x_copy_6, i32 0, i32 0
  %_760 = getelementptr [4096 x double], [4096 x double]* %x_copy_7, i32 0, i32 0
  %_861 = getelementptr [4096 x double], [4096 x double]* %x_copy_8, i32 0, i32 0
  %_962 = getelementptr [4096 x double], [4096 x double]* %x_copy_9, i32 0, i32 0
  %_1063 = getelementptr [4096 x double], [4096 x double]* %x_copy_10, i32 0, i32 0
  %_1164 = getelementptr [4096 x double], [4096 x double]* %x_copy_11, i32 0, i32 0
  %_1265 = getelementptr [4096 x double], [4096 x double]* %x_copy_12, i32 0, i32 0
  %_1366 = getelementptr [4096 x double], [4096 x double]* %x_copy_13, i32 0, i32 0
  %_1467 = getelementptr [4096 x double], [4096 x double]* %x_copy_14, i32 0, i32 0
  %_1568 = getelementptr [4096 x double], [4096 x double]* %x_copy_15, i32 0, i32 0
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
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_05, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_16, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_27, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_38, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_49, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_510, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_611, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_712, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_813, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_914, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1015, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1116, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1217, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1318, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1419, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1520, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_021, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_122, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_223, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_324, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_425, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_526, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_627, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_728, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_829, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_930, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1031, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1132, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1233, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1334, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1435, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1536, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_037, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_138, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_239, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_340, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_441, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_542, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_643, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_744, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_845, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_946, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1047, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1148, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1249, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1350, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1451, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1552, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_053, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_154, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_255, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_356, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_457, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_558, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_659, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_760, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_861, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_962, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1063, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1164, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1265, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1366, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1467, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %_1568, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @apatb_kp_502_15_hw([4096 x double]* %r_copy_0, [4096 x double]* %r_copy_1, [4096 x double]* %r_copy_2, [4096 x double]* %r_copy_3, [4096 x double]* %r_copy_4, [4096 x double]* %r_copy_5, [4096 x double]* %r_copy_6, [4096 x double]* %r_copy_7, [4096 x double]* %r_copy_8, [4096 x double]* %r_copy_9, [4096 x double]* %r_copy_10, [4096 x double]* %r_copy_11, [4096 x double]* %r_copy_12, [4096 x double]* %r_copy_13, [4096 x double]* %r_copy_14, [4096 x double]* %r_copy_15, [4096 x double]* %a_copy_0, [4096 x double]* %a_copy_1, [4096 x double]* %a_copy_2, [4096 x double]* %a_copy_3, [4096 x double]* %a_copy_4, [4096 x double]* %a_copy_5, [4096 x double]* %a_copy_6, [4096 x double]* %a_copy_7, [4096 x double]* %a_copy_8, [4096 x double]* %a_copy_9, [4096 x double]* %a_copy_10, [4096 x double]* %a_copy_11, [4096 x double]* %a_copy_12, [4096 x double]* %a_copy_13, [4096 x double]* %a_copy_14, [4096 x double]* %a_copy_15, [4096 x double]* %b_copy_0, [4096 x double]* %b_copy_1, [4096 x double]* %b_copy_2, [4096 x double]* %b_copy_3, [4096 x double]* %b_copy_4, [4096 x double]* %b_copy_5, [4096 x double]* %b_copy_6, [4096 x double]* %b_copy_7, [4096 x double]* %b_copy_8, [4096 x double]* %b_copy_9, [4096 x double]* %b_copy_10, [4096 x double]* %b_copy_11, [4096 x double]* %b_copy_12, [4096 x double]* %b_copy_13, [4096 x double]* %b_copy_14, [4096 x double]* %b_copy_15, [4096 x double]* %c_copy_0, [4096 x double]* %c_copy_1, [4096 x double]* %c_copy_2, [4096 x double]* %c_copy_3, [4096 x double]* %c_copy_4, [4096 x double]* %c_copy_5, [4096 x double]* %c_copy_6, [4096 x double]* %c_copy_7, [4096 x double]* %c_copy_8, [4096 x double]* %c_copy_9, [4096 x double]* %c_copy_10, [4096 x double]* %c_copy_11, [4096 x double]* %c_copy_12, [4096 x double]* %c_copy_13, [4096 x double]* %c_copy_14, [4096 x double]* %c_copy_15, [4096 x double]* %x_copy_0, [4096 x double]* %x_copy_1, [4096 x double]* %x_copy_2, [4096 x double]* %x_copy_3, [4096 x double]* %x_copy_4, [4096 x double]* %x_copy_5, [4096 x double]* %x_copy_6, [4096 x double]* %x_copy_7, [4096 x double]* %x_copy_8, [4096 x double]* %x_copy_9, [4096 x double]* %x_copy_10, [4096 x double]* %x_copy_11, [4096 x double]* %x_copy_12, [4096 x double]* %x_copy_13, [4096 x double]* %x_copy_14, [4096 x double]* %x_copy_15)
  call void @copy_out([65536 x double]* %0, [4096 x double]* %r_copy_0, [4096 x double]* %r_copy_1, [4096 x double]* %r_copy_2, [4096 x double]* %r_copy_3, [4096 x double]* %r_copy_4, [4096 x double]* %r_copy_5, [4096 x double]* %r_copy_6, [4096 x double]* %r_copy_7, [4096 x double]* %r_copy_8, [4096 x double]* %r_copy_9, [4096 x double]* %r_copy_10, [4096 x double]* %r_copy_11, [4096 x double]* %r_copy_12, [4096 x double]* %r_copy_13, [4096 x double]* %r_copy_14, [4096 x double]* %r_copy_15, [65536 x double]* %1, [4096 x double]* %a_copy_0, [4096 x double]* %a_copy_1, [4096 x double]* %a_copy_2, [4096 x double]* %a_copy_3, [4096 x double]* %a_copy_4, [4096 x double]* %a_copy_5, [4096 x double]* %a_copy_6, [4096 x double]* %a_copy_7, [4096 x double]* %a_copy_8, [4096 x double]* %a_copy_9, [4096 x double]* %a_copy_10, [4096 x double]* %a_copy_11, [4096 x double]* %a_copy_12, [4096 x double]* %a_copy_13, [4096 x double]* %a_copy_14, [4096 x double]* %a_copy_15, [65536 x double]* %2, [4096 x double]* %b_copy_0, [4096 x double]* %b_copy_1, [4096 x double]* %b_copy_2, [4096 x double]* %b_copy_3, [4096 x double]* %b_copy_4, [4096 x double]* %b_copy_5, [4096 x double]* %b_copy_6, [4096 x double]* %b_copy_7, [4096 x double]* %b_copy_8, [4096 x double]* %b_copy_9, [4096 x double]* %b_copy_10, [4096 x double]* %b_copy_11, [4096 x double]* %b_copy_12, [4096 x double]* %b_copy_13, [4096 x double]* %b_copy_14, [4096 x double]* %b_copy_15, [65536 x double]* %3, [4096 x double]* %c_copy_0, [4096 x double]* %c_copy_1, [4096 x double]* %c_copy_2, [4096 x double]* %c_copy_3, [4096 x double]* %c_copy_4, [4096 x double]* %c_copy_5, [4096 x double]* %c_copy_6, [4096 x double]* %c_copy_7, [4096 x double]* %c_copy_8, [4096 x double]* %c_copy_9, [4096 x double]* %c_copy_10, [4096 x double]* %c_copy_11, [4096 x double]* %c_copy_12, [4096 x double]* %c_copy_13, [4096 x double]* %c_copy_14, [4096 x double]* %c_copy_15, [65536 x double]* %4, [4096 x double]* %x_copy_0, [4096 x double]* %x_copy_1, [4096 x double]* %x_copy_2, [4096 x double]* %x_copy_3, [4096 x double]* %x_copy_4, [4096 x double]* %x_copy_5, [4096 x double]* %x_copy_6, [4096 x double]* %x_copy_7, [4096 x double]* %x_copy_8, [4096 x double]* %x_copy_9, [4096 x double]* %x_copy_10, [4096 x double]* %x_copy_11, [4096 x double]* %x_copy_12, [4096 x double]* %x_copy_13, [4096 x double]* %x_copy_14, [4096 x double]* %x_copy_15)
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
define internal void @copy_in([65536 x double]* readonly "orig.arg.no"="0", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [65536 x double]* readonly "orig.arg.no"="2", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [65536 x double]* readonly "orig.arg.no"="4", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [65536 x double]* readonly "orig.arg.no"="6", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [65536 x double]* readonly "orig.arg.no"="8", [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [4096 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568) #3 {
entry:
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_0, [4096 x double]* %_1, [4096 x double]* %_2, [4096 x double]* %_3, [4096 x double]* %_4, [4096 x double]* %_5, [4096 x double]* %_6, [4096 x double]* %_7, [4096 x double]* %_8, [4096 x double]* %_9, [4096 x double]* %_10, [4096 x double]* %_11, [4096 x double]* %_12, [4096 x double]* %_13, [4096 x double]* %_14, [4096 x double]* %_15, [65536 x double]* %0)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_01, [4096 x double]* %_16, [4096 x double]* %_27, [4096 x double]* %_38, [4096 x double]* %_49, [4096 x double]* %_510, [4096 x double]* %_611, [4096 x double]* %_712, [4096 x double]* %_813, [4096 x double]* %_914, [4096 x double]* %_1015, [4096 x double]* %_1116, [4096 x double]* %_1217, [4096 x double]* %_1318, [4096 x double]* %_1419, [4096 x double]* %_1520, [65536 x double]* %1)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_021, [4096 x double]* %_122, [4096 x double]* %_223, [4096 x double]* %_324, [4096 x double]* %_425, [4096 x double]* %_526, [4096 x double]* %_627, [4096 x double]* %_728, [4096 x double]* %_829, [4096 x double]* %_930, [4096 x double]* %_1031, [4096 x double]* %_1132, [4096 x double]* %_1233, [4096 x double]* %_1334, [4096 x double]* %_1435, [4096 x double]* %_1536, [65536 x double]* %2)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_037, [4096 x double]* %_138, [4096 x double]* %_239, [4096 x double]* %_340, [4096 x double]* %_441, [4096 x double]* %_542, [4096 x double]* %_643, [4096 x double]* %_744, [4096 x double]* %_845, [4096 x double]* %_946, [4096 x double]* %_1047, [4096 x double]* %_1148, [4096 x double]* %_1249, [4096 x double]* %_1350, [4096 x double]* %_1451, [4096 x double]* %_1552, [65536 x double]* %3)
  call void @onebyonecpy_hls.p0a65536f64.3.4([4096 x double]* %_053, [4096 x double]* %_154, [4096 x double]* %_255, [4096 x double]* %_356, [4096 x double]* %_457, [4096 x double]* %_558, [4096 x double]* %_659, [4096 x double]* %_760, [4096 x double]* %_861, [4096 x double]* %_962, [4096 x double]* %_1063, [4096 x double]* %_1164, [4096 x double]* %_1265, [4096 x double]* %_1366, [4096 x double]* %_1467, [4096 x double]* %_1568, [65536 x double]* %4)
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
define internal void @copy_out([65536 x double]* "orig.arg.no"="0", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [65536 x double]* "orig.arg.no"="2", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [65536 x double]* "orig.arg.no"="4", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536, [65536 x double]* "orig.arg.no"="6", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_037, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_138, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_239, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_340, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_441, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_542, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_643, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_744, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_845, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_946, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1047, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1148, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1249, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1350, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1451, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1552, [65536 x double]* "orig.arg.no"="8", [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_053, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_154, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_255, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_356, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_457, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_558, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_659, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_760, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_861, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_962, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1063, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1164, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1265, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1366, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1467, [4096 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1568) #4 {
entry:
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %0, [4096 x double]* %_0, [4096 x double]* %_1, [4096 x double]* %_2, [4096 x double]* %_3, [4096 x double]* %_4, [4096 x double]* %_5, [4096 x double]* %_6, [4096 x double]* %_7, [4096 x double]* %_8, [4096 x double]* %_9, [4096 x double]* %_10, [4096 x double]* %_11, [4096 x double]* %_12, [4096 x double]* %_13, [4096 x double]* %_14, [4096 x double]* %_15)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %1, [4096 x double]* %_01, [4096 x double]* %_16, [4096 x double]* %_27, [4096 x double]* %_38, [4096 x double]* %_49, [4096 x double]* %_510, [4096 x double]* %_611, [4096 x double]* %_712, [4096 x double]* %_813, [4096 x double]* %_914, [4096 x double]* %_1015, [4096 x double]* %_1116, [4096 x double]* %_1217, [4096 x double]* %_1318, [4096 x double]* %_1419, [4096 x double]* %_1520)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %2, [4096 x double]* %_021, [4096 x double]* %_122, [4096 x double]* %_223, [4096 x double]* %_324, [4096 x double]* %_425, [4096 x double]* %_526, [4096 x double]* %_627, [4096 x double]* %_728, [4096 x double]* %_829, [4096 x double]* %_930, [4096 x double]* %_1031, [4096 x double]* %_1132, [4096 x double]* %_1233, [4096 x double]* %_1334, [4096 x double]* %_1435, [4096 x double]* %_1536)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %3, [4096 x double]* %_037, [4096 x double]* %_138, [4096 x double]* %_239, [4096 x double]* %_340, [4096 x double]* %_441, [4096 x double]* %_542, [4096 x double]* %_643, [4096 x double]* %_744, [4096 x double]* %_845, [4096 x double]* %_946, [4096 x double]* %_1047, [4096 x double]* %_1148, [4096 x double]* %_1249, [4096 x double]* %_1350, [4096 x double]* %_1451, [4096 x double]* %_1552)
  call void @onebyonecpy_hls.p0a65536f64.9.10([65536 x double]* %4, [4096 x double]* %_053, [4096 x double]* %_154, [4096 x double]* %_255, [4096 x double]* %_356, [4096 x double]* %_457, [4096 x double]* %_558, [4096 x double]* %_659, [4096 x double]* %_760, [4096 x double]* %_861, [4096 x double]* %_962, [4096 x double]* %_1063, [4096 x double]* %_1164, [4096 x double]* %_1265, [4096 x double]* %_1366, [4096 x double]* %_1467, [4096 x double]* %_1568)
  ret void
}

declare void @apatb_kp_502_15_hw([4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*)

define void @kp_502_15_hw_stub_wrapper([4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*, [4096 x double]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 524288)
  %80 = bitcast i8* %malloccall to [65536 x double]*
  %malloccall1 = tail call i8* @malloc(i64 524288)
  %81 = bitcast i8* %malloccall1 to [65536 x double]*
  %malloccall2 = tail call i8* @malloc(i64 524288)
  %82 = bitcast i8* %malloccall2 to [65536 x double]*
  %malloccall3 = tail call i8* @malloc(i64 524288)
  %83 = bitcast i8* %malloccall3 to [65536 x double]*
  %malloccall4 = tail call i8* @malloc(i64 524288)
  %84 = bitcast i8* %malloccall4 to [65536 x double]*
  call void @copy_out([65536 x double]* %80, [4096 x double]* %0, [4096 x double]* %1, [4096 x double]* %2, [4096 x double]* %3, [4096 x double]* %4, [4096 x double]* %5, [4096 x double]* %6, [4096 x double]* %7, [4096 x double]* %8, [4096 x double]* %9, [4096 x double]* %10, [4096 x double]* %11, [4096 x double]* %12, [4096 x double]* %13, [4096 x double]* %14, [4096 x double]* %15, [65536 x double]* %81, [4096 x double]* %16, [4096 x double]* %17, [4096 x double]* %18, [4096 x double]* %19, [4096 x double]* %20, [4096 x double]* %21, [4096 x double]* %22, [4096 x double]* %23, [4096 x double]* %24, [4096 x double]* %25, [4096 x double]* %26, [4096 x double]* %27, [4096 x double]* %28, [4096 x double]* %29, [4096 x double]* %30, [4096 x double]* %31, [65536 x double]* %82, [4096 x double]* %32, [4096 x double]* %33, [4096 x double]* %34, [4096 x double]* %35, [4096 x double]* %36, [4096 x double]* %37, [4096 x double]* %38, [4096 x double]* %39, [4096 x double]* %40, [4096 x double]* %41, [4096 x double]* %42, [4096 x double]* %43, [4096 x double]* %44, [4096 x double]* %45, [4096 x double]* %46, [4096 x double]* %47, [65536 x double]* %83, [4096 x double]* %48, [4096 x double]* %49, [4096 x double]* %50, [4096 x double]* %51, [4096 x double]* %52, [4096 x double]* %53, [4096 x double]* %54, [4096 x double]* %55, [4096 x double]* %56, [4096 x double]* %57, [4096 x double]* %58, [4096 x double]* %59, [4096 x double]* %60, [4096 x double]* %61, [4096 x double]* %62, [4096 x double]* %63, [65536 x double]* %84, [4096 x double]* %64, [4096 x double]* %65, [4096 x double]* %66, [4096 x double]* %67, [4096 x double]* %68, [4096 x double]* %69, [4096 x double]* %70, [4096 x double]* %71, [4096 x double]* %72, [4096 x double]* %73, [4096 x double]* %74, [4096 x double]* %75, [4096 x double]* %76, [4096 x double]* %77, [4096 x double]* %78, [4096 x double]* %79)
  %85 = bitcast [65536 x double]* %80 to double*
  %86 = bitcast [65536 x double]* %81 to double*
  %87 = bitcast [65536 x double]* %82 to double*
  %88 = bitcast [65536 x double]* %83 to double*
  %89 = bitcast [65536 x double]* %84 to double*
  call void @kp_502_15_hw_stub(double* %85, double* %86, double* %87, double* %88, double* %89)
  call void @copy_in([65536 x double]* %80, [4096 x double]* %0, [4096 x double]* %1, [4096 x double]* %2, [4096 x double]* %3, [4096 x double]* %4, [4096 x double]* %5, [4096 x double]* %6, [4096 x double]* %7, [4096 x double]* %8, [4096 x double]* %9, [4096 x double]* %10, [4096 x double]* %11, [4096 x double]* %12, [4096 x double]* %13, [4096 x double]* %14, [4096 x double]* %15, [65536 x double]* %81, [4096 x double]* %16, [4096 x double]* %17, [4096 x double]* %18, [4096 x double]* %19, [4096 x double]* %20, [4096 x double]* %21, [4096 x double]* %22, [4096 x double]* %23, [4096 x double]* %24, [4096 x double]* %25, [4096 x double]* %26, [4096 x double]* %27, [4096 x double]* %28, [4096 x double]* %29, [4096 x double]* %30, [4096 x double]* %31, [65536 x double]* %82, [4096 x double]* %32, [4096 x double]* %33, [4096 x double]* %34, [4096 x double]* %35, [4096 x double]* %36, [4096 x double]* %37, [4096 x double]* %38, [4096 x double]* %39, [4096 x double]* %40, [4096 x double]* %41, [4096 x double]* %42, [4096 x double]* %43, [4096 x double]* %44, [4096 x double]* %45, [4096 x double]* %46, [4096 x double]* %47, [65536 x double]* %83, [4096 x double]* %48, [4096 x double]* %49, [4096 x double]* %50, [4096 x double]* %51, [4096 x double]* %52, [4096 x double]* %53, [4096 x double]* %54, [4096 x double]* %55, [4096 x double]* %56, [4096 x double]* %57, [4096 x double]* %58, [4096 x double]* %59, [4096 x double]* %60, [4096 x double]* %61, [4096 x double]* %62, [4096 x double]* %63, [65536 x double]* %84, [4096 x double]* %64, [4096 x double]* %65, [4096 x double]* %66, [4096 x double]* %67, [4096 x double]* %68, [4096 x double]* %69, [4096 x double]* %70, [4096 x double]* %71, [4096 x double]* %72, [4096 x double]* %73, [4096 x double]* %74, [4096 x double]* %75, [4096 x double]* %76, [4096 x double]* %77, [4096 x double]* %78, [4096 x double]* %79)
  ret void
}

declare void @kp_502_15_hw_stub(double*, double*, double*, double*, double*)

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
!5 = !DILocation(line: 6, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_15", linkageName: "_Z9kp_502_15PdS_S_S_S_", scope: !7, file: !7, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_15.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14, !14, !14, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 3, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_15.h", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 2, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_10/.autopilot/db\5Ckp_502_15.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!18 = !DILocation(line: 5, column: 134, scope: !6)
