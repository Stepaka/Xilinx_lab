; ModuleID = 'C:/Xilinx_trn/HLS2023/lab7_z3/lab7_z3/sol2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_lab7_z3_ir(double* %a, double* %b, double* %c) local_unnamed_addr #1 {
entry:
  %a_copy_0 = alloca [8 x double], align 512
  %a_copy_1 = alloca [8 x double], align 512
  %a_copy_2 = alloca [8 x double], align 512
  %a_copy_3 = alloca [8 x double], align 512
  %a_copy_4 = alloca [8 x double], align 512
  %a_copy_5 = alloca [8 x double], align 512
  %a_copy_6 = alloca [8 x double], align 512
  %a_copy_7 = alloca [8 x double], align 512
  %a_copy_8 = alloca [8 x double], align 512
  %a_copy_9 = alloca [8 x double], align 512
  %a_copy_10 = alloca [8 x double], align 512
  %a_copy_11 = alloca [8 x double], align 512
  %a_copy_12 = alloca [8 x double], align 512
  %a_copy_13 = alloca [8 x double], align 512
  %a_copy_14 = alloca [8 x double], align 512
  %a_copy_15 = alloca [8 x double], align 512
  %b_copy_0 = alloca [8 x double], align 512
  %b_copy_1 = alloca [8 x double], align 512
  %b_copy_2 = alloca [8 x double], align 512
  %b_copy_3 = alloca [8 x double], align 512
  %b_copy_4 = alloca [8 x double], align 512
  %b_copy_5 = alloca [8 x double], align 512
  %b_copy_6 = alloca [8 x double], align 512
  %b_copy_7 = alloca [8 x double], align 512
  %b_copy_8 = alloca [8 x double], align 512
  %b_copy_9 = alloca [8 x double], align 512
  %b_copy_10 = alloca [8 x double], align 512
  %b_copy_11 = alloca [8 x double], align 512
  %b_copy_12 = alloca [8 x double], align 512
  %b_copy_13 = alloca [8 x double], align 512
  %b_copy_14 = alloca [8 x double], align 512
  %b_copy_15 = alloca [8 x double], align 512
  %c_copy_0 = alloca [8 x double], align 512
  %c_copy_1 = alloca [8 x double], align 512
  %c_copy_2 = alloca [8 x double], align 512
  %c_copy_3 = alloca [8 x double], align 512
  %c_copy_4 = alloca [8 x double], align 512
  %c_copy_5 = alloca [8 x double], align 512
  %c_copy_6 = alloca [8 x double], align 512
  %c_copy_7 = alloca [8 x double], align 512
  %c_copy_8 = alloca [8 x double], align 512
  %c_copy_9 = alloca [8 x double], align 512
  %c_copy_10 = alloca [8 x double], align 512
  %c_copy_11 = alloca [8 x double], align 512
  %c_copy_12 = alloca [8 x double], align 512
  %c_copy_13 = alloca [8 x double], align 512
  %c_copy_14 = alloca [8 x double], align 512
  %c_copy_15 = alloca [8 x double], align 512
  %0 = bitcast double* %a to [128 x double]*
  %1 = bitcast double* %b to [128 x double]*
  %2 = bitcast double* %c to [128 x double]*
  call void @copy_in([128 x double]* %0, [8 x double]* nonnull align 512 %a_copy_0, [8 x double]* nonnull align 512 %a_copy_1, [8 x double]* nonnull align 512 %a_copy_2, [8 x double]* nonnull align 512 %a_copy_3, [8 x double]* nonnull align 512 %a_copy_4, [8 x double]* nonnull align 512 %a_copy_5, [8 x double]* nonnull align 512 %a_copy_6, [8 x double]* nonnull align 512 %a_copy_7, [8 x double]* nonnull align 512 %a_copy_8, [8 x double]* nonnull align 512 %a_copy_9, [8 x double]* nonnull align 512 %a_copy_10, [8 x double]* nonnull align 512 %a_copy_11, [8 x double]* nonnull align 512 %a_copy_12, [8 x double]* nonnull align 512 %a_copy_13, [8 x double]* nonnull align 512 %a_copy_14, [8 x double]* nonnull align 512 %a_copy_15, [128 x double]* %1, [8 x double]* nonnull align 512 %b_copy_0, [8 x double]* nonnull align 512 %b_copy_1, [8 x double]* nonnull align 512 %b_copy_2, [8 x double]* nonnull align 512 %b_copy_3, [8 x double]* nonnull align 512 %b_copy_4, [8 x double]* nonnull align 512 %b_copy_5, [8 x double]* nonnull align 512 %b_copy_6, [8 x double]* nonnull align 512 %b_copy_7, [8 x double]* nonnull align 512 %b_copy_8, [8 x double]* nonnull align 512 %b_copy_9, [8 x double]* nonnull align 512 %b_copy_10, [8 x double]* nonnull align 512 %b_copy_11, [8 x double]* nonnull align 512 %b_copy_12, [8 x double]* nonnull align 512 %b_copy_13, [8 x double]* nonnull align 512 %b_copy_14, [8 x double]* nonnull align 512 %b_copy_15, [128 x double]* %2, [8 x double]* nonnull align 512 %c_copy_0, [8 x double]* nonnull align 512 %c_copy_1, [8 x double]* nonnull align 512 %c_copy_2, [8 x double]* nonnull align 512 %c_copy_3, [8 x double]* nonnull align 512 %c_copy_4, [8 x double]* nonnull align 512 %c_copy_5, [8 x double]* nonnull align 512 %c_copy_6, [8 x double]* nonnull align 512 %c_copy_7, [8 x double]* nonnull align 512 %c_copy_8, [8 x double]* nonnull align 512 %c_copy_9, [8 x double]* nonnull align 512 %c_copy_10, [8 x double]* nonnull align 512 %c_copy_11, [8 x double]* nonnull align 512 %c_copy_12, [8 x double]* nonnull align 512 %c_copy_13, [8 x double]* nonnull align 512 %c_copy_14, [8 x double]* nonnull align 512 %c_copy_15)
  %a_copy.gep_0 = getelementptr [8 x double], [8 x double]* %a_copy_0, i64 0, i32 0
  %a_copy.gep_1 = getelementptr [8 x double], [8 x double]* %a_copy_1, i64 0, i32 0
  %a_copy.gep_2 = getelementptr [8 x double], [8 x double]* %a_copy_2, i64 0, i32 0
  %a_copy.gep_3 = getelementptr [8 x double], [8 x double]* %a_copy_3, i64 0, i32 0
  %a_copy.gep_4 = getelementptr [8 x double], [8 x double]* %a_copy_4, i64 0, i32 0
  %a_copy.gep_5 = getelementptr [8 x double], [8 x double]* %a_copy_5, i64 0, i32 0
  %a_copy.gep_6 = getelementptr [8 x double], [8 x double]* %a_copy_6, i64 0, i32 0
  %a_copy.gep_7 = getelementptr [8 x double], [8 x double]* %a_copy_7, i64 0, i32 0
  %a_copy.gep_8 = getelementptr [8 x double], [8 x double]* %a_copy_8, i64 0, i32 0
  %a_copy.gep_9 = getelementptr [8 x double], [8 x double]* %a_copy_9, i64 0, i32 0
  %a_copy.gep_10 = getelementptr [8 x double], [8 x double]* %a_copy_10, i64 0, i32 0
  %a_copy.gep_11 = getelementptr [8 x double], [8 x double]* %a_copy_11, i64 0, i32 0
  %a_copy.gep_12 = getelementptr [8 x double], [8 x double]* %a_copy_12, i64 0, i32 0
  %a_copy.gep_13 = getelementptr [8 x double], [8 x double]* %a_copy_13, i64 0, i32 0
  %a_copy.gep_14 = getelementptr [8 x double], [8 x double]* %a_copy_14, i64 0, i32 0
  %a_copy.gep_15 = getelementptr [8 x double], [8 x double]* %a_copy_15, i64 0, i32 0
  %b_copy.gep_0 = getelementptr [8 x double], [8 x double]* %b_copy_0, i64 0, i32 0
  %b_copy.gep_1 = getelementptr [8 x double], [8 x double]* %b_copy_1, i64 0, i32 0
  %b_copy.gep_2 = getelementptr [8 x double], [8 x double]* %b_copy_2, i64 0, i32 0
  %b_copy.gep_3 = getelementptr [8 x double], [8 x double]* %b_copy_3, i64 0, i32 0
  %b_copy.gep_4 = getelementptr [8 x double], [8 x double]* %b_copy_4, i64 0, i32 0
  %b_copy.gep_5 = getelementptr [8 x double], [8 x double]* %b_copy_5, i64 0, i32 0
  %b_copy.gep_6 = getelementptr [8 x double], [8 x double]* %b_copy_6, i64 0, i32 0
  %b_copy.gep_7 = getelementptr [8 x double], [8 x double]* %b_copy_7, i64 0, i32 0
  %b_copy.gep_8 = getelementptr [8 x double], [8 x double]* %b_copy_8, i64 0, i32 0
  %b_copy.gep_9 = getelementptr [8 x double], [8 x double]* %b_copy_9, i64 0, i32 0
  %b_copy.gep_10 = getelementptr [8 x double], [8 x double]* %b_copy_10, i64 0, i32 0
  %b_copy.gep_11 = getelementptr [8 x double], [8 x double]* %b_copy_11, i64 0, i32 0
  %b_copy.gep_12 = getelementptr [8 x double], [8 x double]* %b_copy_12, i64 0, i32 0
  %b_copy.gep_13 = getelementptr [8 x double], [8 x double]* %b_copy_13, i64 0, i32 0
  %b_copy.gep_14 = getelementptr [8 x double], [8 x double]* %b_copy_14, i64 0, i32 0
  %b_copy.gep_15 = getelementptr [8 x double], [8 x double]* %b_copy_15, i64 0, i32 0
  %c_copy.gep_0 = getelementptr [8 x double], [8 x double]* %c_copy_0, i64 0, i32 0
  %c_copy.gep_1 = getelementptr [8 x double], [8 x double]* %c_copy_1, i64 0, i32 0
  %c_copy.gep_2 = getelementptr [8 x double], [8 x double]* %c_copy_2, i64 0, i32 0
  %c_copy.gep_3 = getelementptr [8 x double], [8 x double]* %c_copy_3, i64 0, i32 0
  %c_copy.gep_4 = getelementptr [8 x double], [8 x double]* %c_copy_4, i64 0, i32 0
  %c_copy.gep_5 = getelementptr [8 x double], [8 x double]* %c_copy_5, i64 0, i32 0
  %c_copy.gep_6 = getelementptr [8 x double], [8 x double]* %c_copy_6, i64 0, i32 0
  %c_copy.gep_7 = getelementptr [8 x double], [8 x double]* %c_copy_7, i64 0, i32 0
  %c_copy.gep_8 = getelementptr [8 x double], [8 x double]* %c_copy_8, i64 0, i32 0
  %c_copy.gep_9 = getelementptr [8 x double], [8 x double]* %c_copy_9, i64 0, i32 0
  %c_copy.gep_10 = getelementptr [8 x double], [8 x double]* %c_copy_10, i64 0, i32 0
  %c_copy.gep_11 = getelementptr [8 x double], [8 x double]* %c_copy_11, i64 0, i32 0
  %c_copy.gep_12 = getelementptr [8 x double], [8 x double]* %c_copy_12, i64 0, i32 0
  %c_copy.gep_13 = getelementptr [8 x double], [8 x double]* %c_copy_13, i64 0, i32 0
  %c_copy.gep_14 = getelementptr [8 x double], [8 x double]* %c_copy_14, i64 0, i32 0
  %c_copy.gep_15 = getelementptr [8 x double], [8 x double]* %c_copy_15, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %a_copy.gep_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %b_copy.gep_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(double* %c_copy.gep_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @apatb_lab7_z3_hw([8 x double]* %a_copy_0, [8 x double]* %a_copy_1, [8 x double]* %a_copy_2, [8 x double]* %a_copy_3, [8 x double]* %a_copy_4, [8 x double]* %a_copy_5, [8 x double]* %a_copy_6, [8 x double]* %a_copy_7, [8 x double]* %a_copy_8, [8 x double]* %a_copy_9, [8 x double]* %a_copy_10, [8 x double]* %a_copy_11, [8 x double]* %a_copy_12, [8 x double]* %a_copy_13, [8 x double]* %a_copy_14, [8 x double]* %a_copy_15, [8 x double]* %b_copy_0, [8 x double]* %b_copy_1, [8 x double]* %b_copy_2, [8 x double]* %b_copy_3, [8 x double]* %b_copy_4, [8 x double]* %b_copy_5, [8 x double]* %b_copy_6, [8 x double]* %b_copy_7, [8 x double]* %b_copy_8, [8 x double]* %b_copy_9, [8 x double]* %b_copy_10, [8 x double]* %b_copy_11, [8 x double]* %b_copy_12, [8 x double]* %b_copy_13, [8 x double]* %b_copy_14, [8 x double]* %b_copy_15, [8 x double]* %c_copy_0, [8 x double]* %c_copy_1, [8 x double]* %c_copy_2, [8 x double]* %c_copy_3, [8 x double]* %c_copy_4, [8 x double]* %c_copy_5, [8 x double]* %c_copy_6, [8 x double]* %c_copy_7, [8 x double]* %c_copy_8, [8 x double]* %c_copy_9, [8 x double]* %c_copy_10, [8 x double]* %c_copy_11, [8 x double]* %c_copy_12, [8 x double]* %c_copy_13, [8 x double]* %c_copy_14, [8 x double]* %c_copy_15)
  call void @copy_out([128 x double]* %0, [8 x double]* nonnull align 512 %a_copy_0, [8 x double]* nonnull align 512 %a_copy_1, [8 x double]* nonnull align 512 %a_copy_2, [8 x double]* nonnull align 512 %a_copy_3, [8 x double]* nonnull align 512 %a_copy_4, [8 x double]* nonnull align 512 %a_copy_5, [8 x double]* nonnull align 512 %a_copy_6, [8 x double]* nonnull align 512 %a_copy_7, [8 x double]* nonnull align 512 %a_copy_8, [8 x double]* nonnull align 512 %a_copy_9, [8 x double]* nonnull align 512 %a_copy_10, [8 x double]* nonnull align 512 %a_copy_11, [8 x double]* nonnull align 512 %a_copy_12, [8 x double]* nonnull align 512 %a_copy_13, [8 x double]* nonnull align 512 %a_copy_14, [8 x double]* nonnull align 512 %a_copy_15, [128 x double]* %1, [8 x double]* nonnull align 512 %b_copy_0, [8 x double]* nonnull align 512 %b_copy_1, [8 x double]* nonnull align 512 %b_copy_2, [8 x double]* nonnull align 512 %b_copy_3, [8 x double]* nonnull align 512 %b_copy_4, [8 x double]* nonnull align 512 %b_copy_5, [8 x double]* nonnull align 512 %b_copy_6, [8 x double]* nonnull align 512 %b_copy_7, [8 x double]* nonnull align 512 %b_copy_8, [8 x double]* nonnull align 512 %b_copy_9, [8 x double]* nonnull align 512 %b_copy_10, [8 x double]* nonnull align 512 %b_copy_11, [8 x double]* nonnull align 512 %b_copy_12, [8 x double]* nonnull align 512 %b_copy_13, [8 x double]* nonnull align 512 %b_copy_14, [8 x double]* nonnull align 512 %b_copy_15, [128 x double]* %2, [8 x double]* nonnull align 512 %c_copy_0, [8 x double]* nonnull align 512 %c_copy_1, [8 x double]* nonnull align 512 %c_copy_2, [8 x double]* nonnull align 512 %c_copy_3, [8 x double]* nonnull align 512 %c_copy_4, [8 x double]* nonnull align 512 %c_copy_5, [8 x double]* nonnull align 512 %c_copy_6, [8 x double]* nonnull align 512 %c_copy_7, [8 x double]* nonnull align 512 %c_copy_8, [8 x double]* nonnull align 512 %c_copy_9, [8 x double]* nonnull align 512 %c_copy_10, [8 x double]* nonnull align 512 %c_copy_11, [8 x double]* nonnull align 512 %c_copy_12, [8 x double]* nonnull align 512 %c_copy_13, [8 x double]* nonnull align 512 %c_copy_14, [8 x double]* nonnull align 512 %c_copy_15)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a128f64.3.4([8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [128 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [8 x double]* %_0, null
  %2 = icmp eq [128 x double]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %dst.addr_0 = getelementptr [8 x double], [8 x double]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [8 x double], [8 x double]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [8 x double], [8 x double]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [8 x double], [8 x double]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [8 x double], [8 x double]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [8 x double], [8 x double]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [8 x double], [8 x double]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [8 x double], [8 x double]* %_7, i64 0, i64 %5
  %dst.addr_8 = getelementptr [8 x double], [8 x double]* %_8, i64 0, i64 %5
  %dst.addr_9 = getelementptr [8 x double], [8 x double]* %_9, i64 0, i64 %5
  %dst.addr_10 = getelementptr [8 x double], [8 x double]* %_10, i64 0, i64 %5
  %dst.addr_11 = getelementptr [8 x double], [8 x double]* %_11, i64 0, i64 %5
  %dst.addr_12 = getelementptr [8 x double], [8 x double]* %_12, i64 0, i64 %5
  %dst.addr_13 = getelementptr [8 x double], [8 x double]* %_13, i64 0, i64 %5
  %dst.addr_14 = getelementptr [8 x double], [8 x double]* %_14, i64 0, i64 %5
  %dst.addr_15 = getelementptr [8 x double], [8 x double]* %_15, i64 0, i64 %5
  %src.addr = getelementptr [128 x double], [128 x double]* %0, i64 0, i64 %for.loop.idx1
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
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([128 x double]* readonly "orig.arg.no"="0", [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [128 x double]* readonly "orig.arg.no"="2", [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [128 x double]* readonly "orig.arg.no"="4", [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [8 x double]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536) #3 {
entry:
  call void @onebyonecpy_hls.p0a128f64.3.4([8 x double]* align 512 %_0, [8 x double]* align 512 %_1, [8 x double]* align 512 %_2, [8 x double]* align 512 %_3, [8 x double]* align 512 %_4, [8 x double]* align 512 %_5, [8 x double]* align 512 %_6, [8 x double]* align 512 %_7, [8 x double]* align 512 %_8, [8 x double]* align 512 %_9, [8 x double]* align 512 %_10, [8 x double]* align 512 %_11, [8 x double]* align 512 %_12, [8 x double]* align 512 %_13, [8 x double]* align 512 %_14, [8 x double]* align 512 %_15, [128 x double]* %0)
  call void @onebyonecpy_hls.p0a128f64.3.4([8 x double]* align 512 %_01, [8 x double]* align 512 %_16, [8 x double]* align 512 %_27, [8 x double]* align 512 %_38, [8 x double]* align 512 %_49, [8 x double]* align 512 %_510, [8 x double]* align 512 %_611, [8 x double]* align 512 %_712, [8 x double]* align 512 %_813, [8 x double]* align 512 %_914, [8 x double]* align 512 %_1015, [8 x double]* align 512 %_1116, [8 x double]* align 512 %_1217, [8 x double]* align 512 %_1318, [8 x double]* align 512 %_1419, [8 x double]* align 512 %_1520, [128 x double]* %1)
  call void @onebyonecpy_hls.p0a128f64.3.4([8 x double]* align 512 %_021, [8 x double]* align 512 %_122, [8 x double]* align 512 %_223, [8 x double]* align 512 %_324, [8 x double]* align 512 %_425, [8 x double]* align 512 %_526, [8 x double]* align 512 %_627, [8 x double]* align 512 %_728, [8 x double]* align 512 %_829, [8 x double]* align 512 %_930, [8 x double]* align 512 %_1031, [8 x double]* align 512 %_1132, [8 x double]* align 512 %_1233, [8 x double]* align 512 %_1334, [8 x double]* align 512 %_1435, [8 x double]* align 512 %_1536, [128 x double]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a128f64.9.10([128 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #2 {
entry:
  %1 = icmp eq [128 x double]* %0, null
  %2 = icmp eq [8 x double]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [128 x double], [128 x double]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 16
  %5 = udiv i64 %for.loop.idx1, 16
  %src.addr_0 = getelementptr [8 x double], [8 x double]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [8 x double], [8 x double]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [8 x double], [8 x double]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [8 x double], [8 x double]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [8 x double], [8 x double]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [8 x double], [8 x double]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [8 x double], [8 x double]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [8 x double], [8 x double]* %_7, i64 0, i64 %5
  %src.addr_8 = getelementptr [8 x double], [8 x double]* %_8, i64 0, i64 %5
  %src.addr_9 = getelementptr [8 x double], [8 x double]* %_9, i64 0, i64 %5
  %src.addr_10 = getelementptr [8 x double], [8 x double]* %_10, i64 0, i64 %5
  %src.addr_11 = getelementptr [8 x double], [8 x double]* %_11, i64 0, i64 %5
  %src.addr_12 = getelementptr [8 x double], [8 x double]* %_12, i64 0, i64 %5
  %src.addr_13 = getelementptr [8 x double], [8 x double]* %_13, i64 0, i64 %5
  %src.addr_14 = getelementptr [8 x double], [8 x double]* %_14, i64 0, i64 %5
  %src.addr_15 = getelementptr [8 x double], [8 x double]* %_15, i64 0, i64 %5
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
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([128 x double]* "orig.arg.no"="0", [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [128 x double]* "orig.arg.no"="2", [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [128 x double]* "orig.arg.no"="4", [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_021, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_122, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_223, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_324, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_425, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_526, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_627, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_728, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_829, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_930, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1031, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1132, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1233, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1334, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1435, [8 x double]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1536) #4 {
entry:
  call void @onebyonecpy_hls.p0a128f64.9.10([128 x double]* %0, [8 x double]* align 512 %_0, [8 x double]* align 512 %_1, [8 x double]* align 512 %_2, [8 x double]* align 512 %_3, [8 x double]* align 512 %_4, [8 x double]* align 512 %_5, [8 x double]* align 512 %_6, [8 x double]* align 512 %_7, [8 x double]* align 512 %_8, [8 x double]* align 512 %_9, [8 x double]* align 512 %_10, [8 x double]* align 512 %_11, [8 x double]* align 512 %_12, [8 x double]* align 512 %_13, [8 x double]* align 512 %_14, [8 x double]* align 512 %_15)
  call void @onebyonecpy_hls.p0a128f64.9.10([128 x double]* %1, [8 x double]* align 512 %_01, [8 x double]* align 512 %_16, [8 x double]* align 512 %_27, [8 x double]* align 512 %_38, [8 x double]* align 512 %_49, [8 x double]* align 512 %_510, [8 x double]* align 512 %_611, [8 x double]* align 512 %_712, [8 x double]* align 512 %_813, [8 x double]* align 512 %_914, [8 x double]* align 512 %_1015, [8 x double]* align 512 %_1116, [8 x double]* align 512 %_1217, [8 x double]* align 512 %_1318, [8 x double]* align 512 %_1419, [8 x double]* align 512 %_1520)
  call void @onebyonecpy_hls.p0a128f64.9.10([128 x double]* %2, [8 x double]* align 512 %_021, [8 x double]* align 512 %_122, [8 x double]* align 512 %_223, [8 x double]* align 512 %_324, [8 x double]* align 512 %_425, [8 x double]* align 512 %_526, [8 x double]* align 512 %_627, [8 x double]* align 512 %_728, [8 x double]* align 512 %_829, [8 x double]* align 512 %_930, [8 x double]* align 512 %_1031, [8 x double]* align 512 %_1132, [8 x double]* align 512 %_1233, [8 x double]* align 512 %_1334, [8 x double]* align 512 %_1435, [8 x double]* align 512 %_1536)
  ret void
}

declare void @apatb_lab7_z3_hw([8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*)

define void @lab7_z3_hw_stub_wrapper([8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*, [8 x double]*) #5 {
entry:
  %48 = alloca [128 x double]
  %49 = alloca [128 x double]
  %50 = alloca [128 x double]
  call void @copy_out([128 x double]* %48, [8 x double]* %0, [8 x double]* %1, [8 x double]* %2, [8 x double]* %3, [8 x double]* %4, [8 x double]* %5, [8 x double]* %6, [8 x double]* %7, [8 x double]* %8, [8 x double]* %9, [8 x double]* %10, [8 x double]* %11, [8 x double]* %12, [8 x double]* %13, [8 x double]* %14, [8 x double]* %15, [128 x double]* %49, [8 x double]* %16, [8 x double]* %17, [8 x double]* %18, [8 x double]* %19, [8 x double]* %20, [8 x double]* %21, [8 x double]* %22, [8 x double]* %23, [8 x double]* %24, [8 x double]* %25, [8 x double]* %26, [8 x double]* %27, [8 x double]* %28, [8 x double]* %29, [8 x double]* %30, [8 x double]* %31, [128 x double]* %50, [8 x double]* %32, [8 x double]* %33, [8 x double]* %34, [8 x double]* %35, [8 x double]* %36, [8 x double]* %37, [8 x double]* %38, [8 x double]* %39, [8 x double]* %40, [8 x double]* %41, [8 x double]* %42, [8 x double]* %43, [8 x double]* %44, [8 x double]* %45, [8 x double]* %46, [8 x double]* %47)
  %51 = bitcast [128 x double]* %48 to double*
  %52 = bitcast [128 x double]* %49 to double*
  %53 = bitcast [128 x double]* %50 to double*
  call void @lab7_z3_hw_stub(double* %51, double* %52, double* %53)
  call void @copy_in([128 x double]* %48, [8 x double]* %0, [8 x double]* %1, [8 x double]* %2, [8 x double]* %3, [8 x double]* %4, [8 x double]* %5, [8 x double]* %6, [8 x double]* %7, [8 x double]* %8, [8 x double]* %9, [8 x double]* %10, [8 x double]* %11, [8 x double]* %12, [8 x double]* %13, [8 x double]* %14, [8 x double]* %15, [128 x double]* %49, [8 x double]* %16, [8 x double]* %17, [8 x double]* %18, [8 x double]* %19, [8 x double]* %20, [8 x double]* %21, [8 x double]* %22, [8 x double]* %23, [8 x double]* %24, [8 x double]* %25, [8 x double]* %26, [8 x double]* %27, [8 x double]* %28, [8 x double]* %29, [8 x double]* %30, [8 x double]* %31, [128 x double]* %50, [8 x double]* %32, [8 x double]* %33, [8 x double]* %34, [8 x double]* %35, [8 x double]* %36, [8 x double]* %37, [8 x double]* %38, [8 x double]* %39, [8 x double]* %40, [8 x double]* %41, [8 x double]* %42, [8 x double]* %43, [8 x double]* %44, [8 x double]* %45, [8 x double]* %46, [8 x double]* %47)
  ret void
}

declare void @lab7_z3_hw_stub(double*, double*, double*)

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
!5 = !DILocation(line: 5, column: 64, scope: !6)
!6 = distinct !DISubprogram(name: "lab7_z3", linkageName: "_Z7lab7_z3PdS_S_", scope: !7, file: !7, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "./source/lab7_z3.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z3")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 3, baseType: !13)
!12 = !DIFile(filename: "./source/lab7_z3.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z3")
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 2, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab7_z3/lab7_z3/sol2/.autopilot/db\5Clab7_z3.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z3")
!18 = !DILocation(line: 6, column: 9, scope: !6)
