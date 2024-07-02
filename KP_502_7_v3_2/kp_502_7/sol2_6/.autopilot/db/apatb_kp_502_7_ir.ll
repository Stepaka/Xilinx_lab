; ModuleID = 'G:/Xilinx_lab/KP_502_7_v3_2/kp_502_7/sol2_6/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_7_ir(i32* %A, i32* %B, i32* %C, i32* %X1, i32* %X2, i32* %D) local_unnamed_addr #1 {
entry:
  %A_copy_0 = alloca [2 x i32], align 512
  %A_copy_1 = alloca [2 x i32], align 512
  %A_copy_2 = alloca [2 x i32], align 512
  %A_copy_3 = alloca [2 x i32], align 512
  %A_copy_4 = alloca [2 x i32], align 512
  %A_copy_5 = alloca [2 x i32], align 512
  %A_copy_6 = alloca [2 x i32], align 512
  %A_copy_7 = alloca [2 x i32], align 512
  %B_copy_0 = alloca [2 x i32], align 512
  %B_copy_1 = alloca [2 x i32], align 512
  %B_copy_2 = alloca [2 x i32], align 512
  %B_copy_3 = alloca [2 x i32], align 512
  %B_copy_4 = alloca [2 x i32], align 512
  %B_copy_5 = alloca [2 x i32], align 512
  %B_copy_6 = alloca [2 x i32], align 512
  %B_copy_7 = alloca [2 x i32], align 512
  %C_copy_0 = alloca [2 x i32], align 512
  %C_copy_1 = alloca [2 x i32], align 512
  %C_copy_2 = alloca [2 x i32], align 512
  %C_copy_3 = alloca [2 x i32], align 512
  %C_copy_4 = alloca [2 x i32], align 512
  %C_copy_5 = alloca [2 x i32], align 512
  %C_copy_6 = alloca [2 x i32], align 512
  %C_copy_7 = alloca [2 x i32], align 512
  %X1_copy_0 = alloca [2 x i32], align 512
  %X1_copy_1 = alloca [2 x i32], align 512
  %X1_copy_2 = alloca [2 x i32], align 512
  %X1_copy_3 = alloca [2 x i32], align 512
  %X1_copy_4 = alloca [2 x i32], align 512
  %X1_copy_5 = alloca [2 x i32], align 512
  %X1_copy_6 = alloca [2 x i32], align 512
  %X1_copy_7 = alloca [2 x i32], align 512
  %X2_copy_0 = alloca [2 x i32], align 512
  %X2_copy_1 = alloca [2 x i32], align 512
  %X2_copy_2 = alloca [2 x i32], align 512
  %X2_copy_3 = alloca [2 x i32], align 512
  %X2_copy_4 = alloca [2 x i32], align 512
  %X2_copy_5 = alloca [2 x i32], align 512
  %X2_copy_6 = alloca [2 x i32], align 512
  %X2_copy_7 = alloca [2 x i32], align 512
  %D_copy_0 = alloca [2 x i32], align 512
  %D_copy_1 = alloca [2 x i32], align 512
  %D_copy_2 = alloca [2 x i32], align 512
  %D_copy_3 = alloca [2 x i32], align 512
  %D_copy_4 = alloca [2 x i32], align 512
  %D_copy_5 = alloca [2 x i32], align 512
  %D_copy_6 = alloca [2 x i32], align 512
  %D_copy_7 = alloca [2 x i32], align 512
  %0 = bitcast i32* %A to [16 x i32]*
  %1 = bitcast i32* %B to [16 x i32]*
  %2 = bitcast i32* %C to [16 x i32]*
  %3 = bitcast i32* %X1 to [16 x i32]*
  %4 = bitcast i32* %X2 to [16 x i32]*
  %5 = bitcast i32* %D to [16 x i32]*
  call void @copy_in([16 x i32]* %0, [2 x i32]* nonnull align 512 %A_copy_0, [2 x i32]* nonnull align 512 %A_copy_1, [2 x i32]* nonnull align 512 %A_copy_2, [2 x i32]* nonnull align 512 %A_copy_3, [2 x i32]* nonnull align 512 %A_copy_4, [2 x i32]* nonnull align 512 %A_copy_5, [2 x i32]* nonnull align 512 %A_copy_6, [2 x i32]* nonnull align 512 %A_copy_7, [16 x i32]* %1, [2 x i32]* nonnull align 512 %B_copy_0, [2 x i32]* nonnull align 512 %B_copy_1, [2 x i32]* nonnull align 512 %B_copy_2, [2 x i32]* nonnull align 512 %B_copy_3, [2 x i32]* nonnull align 512 %B_copy_4, [2 x i32]* nonnull align 512 %B_copy_5, [2 x i32]* nonnull align 512 %B_copy_6, [2 x i32]* nonnull align 512 %B_copy_7, [16 x i32]* %2, [2 x i32]* nonnull align 512 %C_copy_0, [2 x i32]* nonnull align 512 %C_copy_1, [2 x i32]* nonnull align 512 %C_copy_2, [2 x i32]* nonnull align 512 %C_copy_3, [2 x i32]* nonnull align 512 %C_copy_4, [2 x i32]* nonnull align 512 %C_copy_5, [2 x i32]* nonnull align 512 %C_copy_6, [2 x i32]* nonnull align 512 %C_copy_7, [16 x i32]* %3, [2 x i32]* nonnull align 512 %X1_copy_0, [2 x i32]* nonnull align 512 %X1_copy_1, [2 x i32]* nonnull align 512 %X1_copy_2, [2 x i32]* nonnull align 512 %X1_copy_3, [2 x i32]* nonnull align 512 %X1_copy_4, [2 x i32]* nonnull align 512 %X1_copy_5, [2 x i32]* nonnull align 512 %X1_copy_6, [2 x i32]* nonnull align 512 %X1_copy_7, [16 x i32]* %4, [2 x i32]* nonnull align 512 %X2_copy_0, [2 x i32]* nonnull align 512 %X2_copy_1, [2 x i32]* nonnull align 512 %X2_copy_2, [2 x i32]* nonnull align 512 %X2_copy_3, [2 x i32]* nonnull align 512 %X2_copy_4, [2 x i32]* nonnull align 512 %X2_copy_5, [2 x i32]* nonnull align 512 %X2_copy_6, [2 x i32]* nonnull align 512 %X2_copy_7, [16 x i32]* %5, [2 x i32]* nonnull align 512 %D_copy_0, [2 x i32]* nonnull align 512 %D_copy_1, [2 x i32]* nonnull align 512 %D_copy_2, [2 x i32]* nonnull align 512 %D_copy_3, [2 x i32]* nonnull align 512 %D_copy_4, [2 x i32]* nonnull align 512 %D_copy_5, [2 x i32]* nonnull align 512 %D_copy_6, [2 x i32]* nonnull align 512 %D_copy_7)
  %A_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %A_copy_0, i64 0, i32 0
  %A_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %A_copy_1, i64 0, i32 0
  %A_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %A_copy_2, i64 0, i32 0
  %A_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %A_copy_3, i64 0, i32 0
  %A_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %A_copy_4, i64 0, i32 0
  %A_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %A_copy_5, i64 0, i32 0
  %A_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %A_copy_6, i64 0, i32 0
  %A_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %A_copy_7, i64 0, i32 0
  %B_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %B_copy_0, i64 0, i32 0
  %B_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %B_copy_1, i64 0, i32 0
  %B_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %B_copy_2, i64 0, i32 0
  %B_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %B_copy_3, i64 0, i32 0
  %B_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %B_copy_4, i64 0, i32 0
  %B_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %B_copy_5, i64 0, i32 0
  %B_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %B_copy_6, i64 0, i32 0
  %B_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %B_copy_7, i64 0, i32 0
  %C_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %C_copy_0, i64 0, i32 0
  %C_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %C_copy_1, i64 0, i32 0
  %C_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %C_copy_2, i64 0, i32 0
  %C_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %C_copy_3, i64 0, i32 0
  %C_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %C_copy_4, i64 0, i32 0
  %C_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %C_copy_5, i64 0, i32 0
  %C_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %C_copy_6, i64 0, i32 0
  %C_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %C_copy_7, i64 0, i32 0
  %X1_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %X1_copy_0, i64 0, i32 0
  %X1_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %X1_copy_1, i64 0, i32 0
  %X1_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %X1_copy_2, i64 0, i32 0
  %X1_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %X1_copy_3, i64 0, i32 0
  %X1_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %X1_copy_4, i64 0, i32 0
  %X1_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %X1_copy_5, i64 0, i32 0
  %X1_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %X1_copy_6, i64 0, i32 0
  %X1_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %X1_copy_7, i64 0, i32 0
  %X2_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %X2_copy_0, i64 0, i32 0
  %X2_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %X2_copy_1, i64 0, i32 0
  %X2_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %X2_copy_2, i64 0, i32 0
  %X2_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %X2_copy_3, i64 0, i32 0
  %X2_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %X2_copy_4, i64 0, i32 0
  %X2_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %X2_copy_5, i64 0, i32 0
  %X2_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %X2_copy_6, i64 0, i32 0
  %X2_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %X2_copy_7, i64 0, i32 0
  %D_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %D_copy_0, i64 0, i32 0
  %D_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %D_copy_1, i64 0, i32 0
  %D_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %D_copy_2, i64 0, i32 0
  %D_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %D_copy_3, i64 0, i32 0
  %D_copy.gep_4 = getelementptr [2 x i32], [2 x i32]* %D_copy_4, i64 0, i32 0
  %D_copy.gep_5 = getelementptr [2 x i32], [2 x i32]* %D_copy_5, i64 0, i32 0
  %D_copy.gep_6 = getelementptr [2 x i32], [2 x i32]* %D_copy_6, i64 0, i32 0
  %D_copy.gep_7 = getelementptr [2 x i32], [2 x i32]* %D_copy_7, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !595
  call void @apatb_kp_502_7_hw([2 x i32]* %A_copy_0, [2 x i32]* %A_copy_1, [2 x i32]* %A_copy_2, [2 x i32]* %A_copy_3, [2 x i32]* %A_copy_4, [2 x i32]* %A_copy_5, [2 x i32]* %A_copy_6, [2 x i32]* %A_copy_7, [2 x i32]* %B_copy_0, [2 x i32]* %B_copy_1, [2 x i32]* %B_copy_2, [2 x i32]* %B_copy_3, [2 x i32]* %B_copy_4, [2 x i32]* %B_copy_5, [2 x i32]* %B_copy_6, [2 x i32]* %B_copy_7, [2 x i32]* %C_copy_0, [2 x i32]* %C_copy_1, [2 x i32]* %C_copy_2, [2 x i32]* %C_copy_3, [2 x i32]* %C_copy_4, [2 x i32]* %C_copy_5, [2 x i32]* %C_copy_6, [2 x i32]* %C_copy_7, [2 x i32]* %X1_copy_0, [2 x i32]* %X1_copy_1, [2 x i32]* %X1_copy_2, [2 x i32]* %X1_copy_3, [2 x i32]* %X1_copy_4, [2 x i32]* %X1_copy_5, [2 x i32]* %X1_copy_6, [2 x i32]* %X1_copy_7, [2 x i32]* %X2_copy_0, [2 x i32]* %X2_copy_1, [2 x i32]* %X2_copy_2, [2 x i32]* %X2_copy_3, [2 x i32]* %X2_copy_4, [2 x i32]* %X2_copy_5, [2 x i32]* %X2_copy_6, [2 x i32]* %X2_copy_7, [2 x i32]* %D_copy_0, [2 x i32]* %D_copy_1, [2 x i32]* %D_copy_2, [2 x i32]* %D_copy_3, [2 x i32]* %D_copy_4, [2 x i32]* %D_copy_5, [2 x i32]* %D_copy_6, [2 x i32]* %D_copy_7)
  call void @copy_out([16 x i32]* %0, [2 x i32]* nonnull align 512 %A_copy_0, [2 x i32]* nonnull align 512 %A_copy_1, [2 x i32]* nonnull align 512 %A_copy_2, [2 x i32]* nonnull align 512 %A_copy_3, [2 x i32]* nonnull align 512 %A_copy_4, [2 x i32]* nonnull align 512 %A_copy_5, [2 x i32]* nonnull align 512 %A_copy_6, [2 x i32]* nonnull align 512 %A_copy_7, [16 x i32]* %1, [2 x i32]* nonnull align 512 %B_copy_0, [2 x i32]* nonnull align 512 %B_copy_1, [2 x i32]* nonnull align 512 %B_copy_2, [2 x i32]* nonnull align 512 %B_copy_3, [2 x i32]* nonnull align 512 %B_copy_4, [2 x i32]* nonnull align 512 %B_copy_5, [2 x i32]* nonnull align 512 %B_copy_6, [2 x i32]* nonnull align 512 %B_copy_7, [16 x i32]* %2, [2 x i32]* nonnull align 512 %C_copy_0, [2 x i32]* nonnull align 512 %C_copy_1, [2 x i32]* nonnull align 512 %C_copy_2, [2 x i32]* nonnull align 512 %C_copy_3, [2 x i32]* nonnull align 512 %C_copy_4, [2 x i32]* nonnull align 512 %C_copy_5, [2 x i32]* nonnull align 512 %C_copy_6, [2 x i32]* nonnull align 512 %C_copy_7, [16 x i32]* %3, [2 x i32]* nonnull align 512 %X1_copy_0, [2 x i32]* nonnull align 512 %X1_copy_1, [2 x i32]* nonnull align 512 %X1_copy_2, [2 x i32]* nonnull align 512 %X1_copy_3, [2 x i32]* nonnull align 512 %X1_copy_4, [2 x i32]* nonnull align 512 %X1_copy_5, [2 x i32]* nonnull align 512 %X1_copy_6, [2 x i32]* nonnull align 512 %X1_copy_7, [16 x i32]* %4, [2 x i32]* nonnull align 512 %X2_copy_0, [2 x i32]* nonnull align 512 %X2_copy_1, [2 x i32]* nonnull align 512 %X2_copy_2, [2 x i32]* nonnull align 512 %X2_copy_3, [2 x i32]* nonnull align 512 %X2_copy_4, [2 x i32]* nonnull align 512 %X2_copy_5, [2 x i32]* nonnull align 512 %X2_copy_6, [2 x i32]* nonnull align 512 %X2_copy_7, [16 x i32]* %5, [2 x i32]* nonnull align 512 %D_copy_0, [2 x i32]* nonnull align 512 %D_copy_1, [2 x i32]* nonnull align 512 %D_copy_2, [2 x i32]* nonnull align 512 %D_copy_3, [2 x i32]* nonnull align 512 %D_copy_4, [2 x i32]* nonnull align 512 %D_copy_5, [2 x i32]* nonnull align 512 %D_copy_6, [2 x i32]* nonnull align 512 %D_copy_7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [16 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [2 x i32]* %_0, null
  %2 = icmp eq [16 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 8
  %5 = udiv i64 %for.loop.idx1, 8
  %dst.addr_0 = getelementptr [2 x i32], [2 x i32]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [2 x i32], [2 x i32]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [2 x i32], [2 x i32]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [2 x i32], [2 x i32]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [2 x i32], [2 x i32]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [2 x i32], [2 x i32]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [2 x i32], [2 x i32]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [2 x i32], [2 x i32]* %_7, i64 0, i64 %5
  %src.addr = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i32, i32* %src.addr, align 4
  %7 = trunc i64 %4 to i3
  switch i3 %7, label %dst.addr.case.7 [
    i3 0, label %dst.addr.case.0
    i3 1, label %dst.addr.case.1
    i3 2, label %dst.addr.case.2
    i3 3, label %dst.addr.case.3
    i3 -4, label %dst.addr.case.4
    i3 -3, label %dst.addr.case.5
    i3 -2, label %dst.addr.case.6
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_4, align 4
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_5, align 4
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_6, align 4
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_7, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([16 x i32]* readonly "orig.arg.no"="0", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [16 x i32]* readonly "orig.arg.no"="2", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [16 x i32]* readonly "orig.arg.no"="4", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [16 x i32]* readonly "orig.arg.no"="6", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [16 x i32]* readonly "orig.arg.no"="8", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [16 x i32]* readonly "orig.arg.no"="10", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #3 {
entry:
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3, [2 x i32]* align 512 %_4, [2 x i32]* align 512 %_5, [2 x i32]* align 512 %_6, [2 x i32]* align 512 %_7, [16 x i32]* %0)
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34, [2 x i32]* align 512 %_45, [2 x i32]* align 512 %_56, [2 x i32]* align 512 %_67, [2 x i32]* align 512 %_78, [16 x i32]* %1)
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312, [2 x i32]* align 512 %_413, [2 x i32]* align 512 %_514, [2 x i32]* align 512 %_615, [2 x i32]* align 512 %_716, [16 x i32]* %2)
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_017, [2 x i32]* align 512 %_118, [2 x i32]* align 512 %_219, [2 x i32]* align 512 %_320, [2 x i32]* align 512 %_421, [2 x i32]* align 512 %_522, [2 x i32]* align 512 %_623, [2 x i32]* align 512 %_724, [16 x i32]* %3)
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_025, [2 x i32]* align 512 %_126, [2 x i32]* align 512 %_227, [2 x i32]* align 512 %_328, [2 x i32]* align 512 %_429, [2 x i32]* align 512 %_530, [2 x i32]* align 512 %_631, [2 x i32]* align 512 %_732, [16 x i32]* %4)
  call void @onebyonecpy_hls.p0a16i32.15.16([2 x i32]* align 512 %_033, [2 x i32]* align 512 %_134, [2 x i32]* align 512 %_235, [2 x i32]* align 512 %_336, [2 x i32]* align 512 %_437, [2 x i32]* align 512 %_538, [2 x i32]* align 512 %_639, [2 x i32]* align 512 %_740, [16 x i32]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7) #2 {
entry:
  %1 = icmp eq [16 x i32]* %0, null
  %2 = icmp eq [2 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 8
  %5 = udiv i64 %for.loop.idx1, 8
  %src.addr_0 = getelementptr [2 x i32], [2 x i32]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [2 x i32], [2 x i32]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [2 x i32], [2 x i32]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [2 x i32], [2 x i32]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [2 x i32], [2 x i32]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [2 x i32], [2 x i32]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [2 x i32], [2 x i32]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [2 x i32], [2 x i32]* %_7, i64 0, i64 %5
  %6 = trunc i64 %4 to i3
  switch i3 %6, label %src.addr.case.7 [
    i3 0, label %src.addr.case.0
    i3 1, label %src.addr.case.1
    i3 2, label %src.addr.case.2
    i3 3, label %src.addr.case.3
    i3 -4, label %src.addr.case.4
    i3 -3, label %src.addr.case.5
    i3 -2, label %src.addr.case.6
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i32, i32* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load i32, i32* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load i32, i32* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_45 = load i32, i32* %src.addr_4, align 4
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_56 = load i32, i32* %src.addr_5, align 4
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_67 = load i32, i32* %src.addr_6, align 4
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_78 = load i32, i32* %src.addr_7, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ], [ %_67, %src.addr.case.6 ], [ %_78, %src.addr.case.7 ]
  store i32 %7, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([16 x i32]* "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [16 x i32]* "orig.arg.no"="2", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [16 x i32]* "orig.arg.no"="4", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [16 x i32]* "orig.arg.no"="6", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [16 x i32]* "orig.arg.no"="8", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [16 x i32]* "orig.arg.no"="10", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #4 {
entry:
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %0, [2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3, [2 x i32]* align 512 %_4, [2 x i32]* align 512 %_5, [2 x i32]* align 512 %_6, [2 x i32]* align 512 %_7)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %1, [2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34, [2 x i32]* align 512 %_45, [2 x i32]* align 512 %_56, [2 x i32]* align 512 %_67, [2 x i32]* align 512 %_78)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %2, [2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312, [2 x i32]* align 512 %_413, [2 x i32]* align 512 %_514, [2 x i32]* align 512 %_615, [2 x i32]* align 512 %_716)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %3, [2 x i32]* align 512 %_017, [2 x i32]* align 512 %_118, [2 x i32]* align 512 %_219, [2 x i32]* align 512 %_320, [2 x i32]* align 512 %_421, [2 x i32]* align 512 %_522, [2 x i32]* align 512 %_623, [2 x i32]* align 512 %_724)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %4, [2 x i32]* align 512 %_025, [2 x i32]* align 512 %_126, [2 x i32]* align 512 %_227, [2 x i32]* align 512 %_328, [2 x i32]* align 512 %_429, [2 x i32]* align 512 %_530, [2 x i32]* align 512 %_631, [2 x i32]* align 512 %_732)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %5, [2 x i32]* align 512 %_033, [2 x i32]* align 512 %_134, [2 x i32]* align 512 %_235, [2 x i32]* align 512 %_336, [2 x i32]* align 512 %_437, [2 x i32]* align 512 %_538, [2 x i32]* align 512 %_639, [2 x i32]* align 512 %_740)
  ret void
}

declare void @apatb_kp_502_7_hw([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*)

define void @kp_502_7_hw_stub_wrapper([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*) #5 {
entry:
  %48 = alloca [16 x i32]
  %49 = alloca [16 x i32]
  %50 = alloca [16 x i32]
  %51 = alloca [16 x i32]
  %52 = alloca [16 x i32]
  %53 = alloca [16 x i32]
  call void @copy_out([16 x i32]* %48, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [16 x i32]* %49, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [16 x i32]* %50, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19, [2 x i32]* %20, [2 x i32]* %21, [2 x i32]* %22, [2 x i32]* %23, [16 x i32]* %51, [2 x i32]* %24, [2 x i32]* %25, [2 x i32]* %26, [2 x i32]* %27, [2 x i32]* %28, [2 x i32]* %29, [2 x i32]* %30, [2 x i32]* %31, [16 x i32]* %52, [2 x i32]* %32, [2 x i32]* %33, [2 x i32]* %34, [2 x i32]* %35, [2 x i32]* %36, [2 x i32]* %37, [2 x i32]* %38, [2 x i32]* %39, [16 x i32]* %53, [2 x i32]* %40, [2 x i32]* %41, [2 x i32]* %42, [2 x i32]* %43, [2 x i32]* %44, [2 x i32]* %45, [2 x i32]* %46, [2 x i32]* %47)
  %54 = bitcast [16 x i32]* %48 to i32*
  %55 = bitcast [16 x i32]* %49 to i32*
  %56 = bitcast [16 x i32]* %50 to i32*
  %57 = bitcast [16 x i32]* %51 to i32*
  %58 = bitcast [16 x i32]* %52 to i32*
  %59 = bitcast [16 x i32]* %53 to i32*
  call void @kp_502_7_hw_stub(i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59)
  call void @copy_in([16 x i32]* %48, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [16 x i32]* %49, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [16 x i32]* %50, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19, [2 x i32]* %20, [2 x i32]* %21, [2 x i32]* %22, [2 x i32]* %23, [16 x i32]* %51, [2 x i32]* %24, [2 x i32]* %25, [2 x i32]* %26, [2 x i32]* %27, [2 x i32]* %28, [2 x i32]* %29, [2 x i32]* %30, [2 x i32]* %31, [16 x i32]* %52, [2 x i32]* %32, [2 x i32]* %33, [2 x i32]* %34, [2 x i32]* %35, [2 x i32]* %36, [2 x i32]* %37, [2 x i32]* %38, [2 x i32]* %39, [16 x i32]* %53, [2 x i32]* %40, [2 x i32]* %41, [2 x i32]* %42, [2 x i32]* %43, [2 x i32]* %44, [2 x i32]* %45, [2 x i32]* %46, [2 x i32]* %47)
  ret void
}

declare void @kp_502_7_hw_stub(i32*, i32*, i32*, i32*, i32*, i32*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
!5 = !DILocation(line: 4, column: 154, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_7", linkageName: "_Z8kp_502_7PiS_S_S_S_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_7.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_7.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !31, imports: !32)
!15 = !DIFile(filename: "G:/Xilinx_lab/KP_502_7_v3_2/kp_502_7/sol2_6/.autopilot/db\5Ckp_502_7.pp.0.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!16 = !{!17, !24}
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !19, file: !18, line: 182, size: 32, elements: !20, identifier: "_ZTSSt18float_denorm_style")
!18 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Climits", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
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
!31 = !{!13}
!32 = !{!33, !40, !42, !44, !48, !50, !52, !54, !56, !58, !60, !62, !67, !71, !73, !75, !80, !82, !84, !86, !88, !90, !92, !94, !97, !99, !103, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !132, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !170, !174, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !200, !204, !208, !210, !212, !214, !219, !223, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !256, !260, !264, !266, !268, !270, !277, !281, !285, !287, !289, !291, !293, !295, !297, !301, !305, !307, !309, !311, !313, !317, !321, !325, !327, !329, !331, !333, !335, !337, !341, !345, !349, !351, !355, !359, !361, !363, !365, !367, !369, !371, !376, !382, !386, !390, !395, !397, !401, !405, !418, !422, !426, !430, !434, !439, !443, !447, !451, !455, !463, !467, !471, !474, !478, !483, !489, !493, !497, !499, !507, !511, !518, !520, !524, !528, !532, !536, !541, !545, !549, !550, !551, !552, !554, !555, !556, !557, !558, !559, !560, !562, !563, !564, !565, !566, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !34, file: !39, line: 106)
!34 = !DISubprogram(name: "acos", scope: !35, file: !35, line: 190, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !38}
!38 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!39 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !41, file: !39, line: 125)
!41 = !DISubprogram(name: "asin", scope: !35, file: !35, line: 189, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !43, file: !39, line: 144)
!43 = !DISubprogram(name: "atan", scope: !35, file: !35, line: 191, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !45, file: !39, line: 163)
!45 = !DISubprogram(name: "atan2", scope: !35, file: !35, line: 192, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DISubroutineType(types: !47)
!47 = !{!38, !38, !38}
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !49, file: !39, line: 184)
!49 = !DISubprogram(name: "ceil", scope: !35, file: !35, line: 198, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !51, file: !39, line: 203)
!51 = !DISubprogram(name: "cos", scope: !35, file: !35, line: 184, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !53, file: !39, line: 222)
!53 = !DISubprogram(name: "cosh", scope: !35, file: !35, line: 187, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !55, file: !39, line: 241)
!55 = !DISubprogram(name: "exp", scope: !35, file: !35, line: 193, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !57, file: !39, line: 260)
!57 = !DISubprogram(name: "fabs", scope: !35, file: !35, line: 204, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !59, file: !39, line: 279)
!59 = !DISubprogram(name: "floor", scope: !35, file: !35, line: 199, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !61, file: !39, line: 298)
!61 = !DISubprogram(name: "fmod", scope: !35, file: !35, line: 246, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !63, file: !39, line: 319)
!63 = !DISubprogram(name: "frexp", scope: !35, file: !35, line: 244, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DISubroutineType(types: !65)
!65 = !{!38, !38, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !68, file: !39, line: 338)
!68 = !DISubprogram(name: "ldexp", scope: !35, file: !35, line: 243, type: !69, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DISubroutineType(types: !70)
!70 = !{!38, !38, !13}
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !72, file: !39, line: 357)
!72 = !DISubprogram(name: "log", scope: !35, file: !35, line: 194, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !74, file: !39, line: 376)
!74 = !DISubprogram(name: "log10", scope: !35, file: !35, line: 195, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !76, file: !39, line: 395)
!76 = !DISubprogram(name: "modf", scope: !35, file: !35, line: 245, type: !77, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{!38, !38, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !81, file: !39, line: 407)
!81 = !DISubprogram(name: "pow", scope: !35, file: !35, line: 196, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !83, file: !39, line: 444)
!83 = !DISubprogram(name: "sin", scope: !35, file: !35, line: 183, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !85, file: !39, line: 463)
!85 = !DISubprogram(name: "sinh", scope: !35, file: !35, line: 186, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !87, file: !39, line: 482)
!87 = !DISubprogram(name: "sqrt", scope: !35, file: !35, line: 197, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !89, file: !39, line: 501)
!89 = !DISubprogram(name: "tan", scope: !35, file: !35, line: 185, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !91, file: !39, line: 520)
!91 = !DISubprogram(name: "tanh", scope: !35, file: !35, line: 188, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !93, file: !39, line: 1077)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !35, line: 373, baseType: !38)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !95, file: !39, line: 1078)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !35, line: 372, baseType: !96)
!96 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !98, file: !39, line: 1081)
!98 = !DISubprogram(name: "acosh", scope: !35, file: !35, line: 705, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !100, file: !39, line: 1082)
!100 = !DISubprogram(name: "acoshf", scope: !35, file: !35, line: 706, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DISubroutineType(types: !102)
!102 = !{!96, !96}
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !104, file: !39, line: 1083)
!104 = !DISubprogram(name: "acoshl", scope: !35, file: !35, line: 707, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !107}
!107 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !109, file: !39, line: 1085)
!109 = !DISubprogram(name: "asinh", scope: !35, file: !35, line: 710, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !111, file: !39, line: 1086)
!111 = !DISubprogram(name: "asinhf", scope: !35, file: !35, line: 711, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !113, file: !39, line: 1087)
!113 = !DISubprogram(name: "asinhl", scope: !35, file: !35, line: 712, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !115, file: !39, line: 1089)
!115 = !DISubprogram(name: "atanh", scope: !35, file: !35, line: 715, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !117, file: !39, line: 1090)
!117 = !DISubprogram(name: "atanhf", scope: !35, file: !35, line: 716, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !119, file: !39, line: 1091)
!119 = !DISubprogram(name: "atanhl", scope: !35, file: !35, line: 717, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !121, file: !39, line: 1093)
!121 = !DISubprogram(name: "cbrt", scope: !35, file: !35, line: 877, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !123, file: !39, line: 1094)
!123 = !DISubprogram(name: "cbrtf", scope: !35, file: !35, line: 878, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !125, file: !39, line: 1095)
!125 = !DISubprogram(name: "cbrtl", scope: !35, file: !35, line: 879, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !127, file: !39, line: 1097)
!127 = !DISubprogram(name: "copysign", scope: !35, file: !35, line: 1063, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !129, file: !39, line: 1098)
!129 = !DISubprogram(name: "copysignf", scope: !35, file: !35, line: 1064, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!96, !96, !96}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !133, file: !39, line: 1099)
!133 = !DISubprogram(name: "copysignl", scope: !35, file: !35, line: 1065, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!107, !107, !107}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !137, file: !39, line: 1101)
!137 = !DISubprogram(name: "erf", scope: !35, file: !35, line: 901, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !139, file: !39, line: 1102)
!139 = !DISubprogram(name: "erff", scope: !35, file: !35, line: 902, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !141, file: !39, line: 1103)
!141 = !DISubprogram(name: "erfl", scope: !35, file: !35, line: 903, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !143, file: !39, line: 1105)
!143 = !DISubprogram(name: "erfc", scope: !35, file: !35, line: 906, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !145, file: !39, line: 1106)
!145 = !DISubprogram(name: "erfcf", scope: !35, file: !35, line: 907, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !147, file: !39, line: 1107)
!147 = !DISubprogram(name: "erfcl", scope: !35, file: !35, line: 908, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !149, file: !39, line: 1109)
!149 = !DISubprogram(name: "exp2", scope: !35, file: !35, line: 728, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !151, file: !39, line: 1110)
!151 = !DISubprogram(name: "exp2f", scope: !35, file: !35, line: 729, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !153, file: !39, line: 1111)
!153 = !DISubprogram(name: "exp2l", scope: !35, file: !35, line: 730, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !155, file: !39, line: 1113)
!155 = !DISubprogram(name: "expm1", scope: !35, file: !35, line: 734, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !157, file: !39, line: 1114)
!157 = !DISubprogram(name: "expm1f", scope: !35, file: !35, line: 735, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !159, file: !39, line: 1115)
!159 = !DISubprogram(name: "expm1l", scope: !35, file: !35, line: 736, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !161, file: !39, line: 1117)
!161 = !DISubprogram(name: "fdim", scope: !35, file: !35, line: 1109, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !163, file: !39, line: 1118)
!163 = !DISubprogram(name: "fdimf", scope: !35, file: !35, line: 1110, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !165, file: !39, line: 1119)
!165 = !DISubprogram(name: "fdiml", scope: !35, file: !35, line: 1111, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !167, file: !39, line: 1121)
!167 = !DISubprogram(name: "fma", scope: !35, file: !35, line: 1130, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!38, !38, !38, !38}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !171, file: !39, line: 1122)
!171 = !DISubprogram(name: "fmaf", scope: !35, file: !35, line: 1131, type: !172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!96, !96, !96, !96}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !175, file: !39, line: 1123)
!175 = !DISubprogram(name: "fmal", scope: !35, file: !35, line: 1132, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!107, !107, !107, !107}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !179, file: !39, line: 1125)
!179 = !DISubprogram(name: "fmax", scope: !35, file: !35, line: 1119, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !181, file: !39, line: 1126)
!181 = !DISubprogram(name: "fmaxf", scope: !35, file: !35, line: 1120, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !183, file: !39, line: 1127)
!183 = !DISubprogram(name: "fmaxl", scope: !35, file: !35, line: 1121, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !185, file: !39, line: 1129)
!185 = !DISubprogram(name: "fmin", scope: !35, file: !35, line: 1124, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !187, file: !39, line: 1130)
!187 = !DISubprogram(name: "fminf", scope: !35, file: !35, line: 1125, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !189, file: !39, line: 1131)
!189 = !DISubprogram(name: "fminl", scope: !35, file: !35, line: 1126, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !191, file: !39, line: 1133)
!191 = !DISubprogram(name: "hypot", scope: !35, file: !35, line: 882, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !193, file: !39, line: 1134)
!193 = !DISubprogram(name: "hypotf", scope: !35, file: !35, line: 883, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !195, file: !39, line: 1135)
!195 = !DISubprogram(name: "hypotl", scope: !35, file: !35, line: 887, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !197, file: !39, line: 1137)
!197 = !DISubprogram(name: "ilogb", scope: !35, file: !35, line: 748, type: !198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{!13, !38}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !201, file: !39, line: 1138)
!201 = !DISubprogram(name: "ilogbf", scope: !35, file: !35, line: 749, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!13, !96}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !205, file: !39, line: 1139)
!205 = !DISubprogram(name: "ilogbl", scope: !35, file: !35, line: 750, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!13, !107}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !209, file: !39, line: 1141)
!209 = !DISubprogram(name: "lgamma", scope: !35, file: !35, line: 911, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !211, file: !39, line: 1142)
!211 = !DISubprogram(name: "lgammaf", scope: !35, file: !35, line: 912, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !213, file: !39, line: 1143)
!213 = !DISubprogram(name: "lgammal", scope: !35, file: !35, line: 913, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !215, file: !39, line: 1145)
!215 = !DISubprogram(name: "llrint", scope: !35, file: !35, line: 946, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !38}
!218 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !220, file: !39, line: 1146)
!220 = !DISubprogram(name: "llrintf", scope: !35, file: !35, line: 947, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!218, !96}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !224, file: !39, line: 1147)
!224 = !DISubprogram(name: "llrintl", scope: !35, file: !35, line: 948, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!218, !107}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !228, file: !39, line: 1149)
!228 = !DISubprogram(name: "llround", scope: !35, file: !35, line: 1038, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !230, file: !39, line: 1150)
!230 = !DISubprogram(name: "llroundf", scope: !35, file: !35, line: 1039, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !232, file: !39, line: 1151)
!232 = !DISubprogram(name: "llroundl", scope: !35, file: !35, line: 1040, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !234, file: !39, line: 1153)
!234 = !DISubprogram(name: "log1p", scope: !35, file: !35, line: 768, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !236, file: !39, line: 1154)
!236 = !DISubprogram(name: "log1pf", scope: !35, file: !35, line: 769, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !238, file: !39, line: 1155)
!238 = !DISubprogram(name: "log1pl", scope: !35, file: !35, line: 770, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !240, file: !39, line: 1157)
!240 = !DISubprogram(name: "log2", scope: !35, file: !35, line: 773, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !242, file: !39, line: 1158)
!242 = !DISubprogram(name: "log2f", scope: !35, file: !35, line: 774, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !244, file: !39, line: 1159)
!244 = !DISubprogram(name: "log2l", scope: !35, file: !35, line: 775, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !246, file: !39, line: 1161)
!246 = !DISubprogram(name: "logb", scope: !35, file: !35, line: 778, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !248, file: !39, line: 1162)
!248 = !DISubprogram(name: "logbf", scope: !35, file: !35, line: 779, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !250, file: !39, line: 1163)
!250 = !DISubprogram(name: "logbl", scope: !35, file: !35, line: 780, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !252, file: !39, line: 1165)
!252 = !DISubprogram(name: "lrint", scope: !35, file: !35, line: 942, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !38}
!255 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !257, file: !39, line: 1166)
!257 = !DISubprogram(name: "lrintf", scope: !35, file: !35, line: 943, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubroutineType(types: !259)
!259 = !{!255, !96}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !261, file: !39, line: 1167)
!261 = !DISubprogram(name: "lrintl", scope: !35, file: !35, line: 944, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubroutineType(types: !263)
!263 = !{!255, !107}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !265, file: !39, line: 1169)
!265 = !DISubprogram(name: "lround", scope: !35, file: !35, line: 1035, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !267, file: !39, line: 1170)
!267 = !DISubprogram(name: "lroundf", scope: !35, file: !35, line: 1036, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !269, file: !39, line: 1171)
!269 = !DISubprogram(name: "lroundl", scope: !35, file: !35, line: 1037, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !271, file: !39, line: 1173)
!271 = !DISubprogram(name: "nan", scope: !35, file: !35, line: 1087, type: !272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DISubroutineType(types: !273)
!273 = !{!38, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !278, file: !39, line: 1174)
!278 = !DISubprogram(name: "nanf", scope: !35, file: !35, line: 1088, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!96, !274}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !282, file: !39, line: 1175)
!282 = !DISubprogram(name: "nanl", scope: !35, file: !35, line: 1089, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!107, !274}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !286, file: !39, line: 1177)
!286 = !DISubprogram(name: "nearbyint", scope: !35, file: !35, line: 931, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !288, file: !39, line: 1178)
!288 = !DISubprogram(name: "nearbyintf", scope: !35, file: !35, line: 932, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !290, file: !39, line: 1179)
!290 = !DISubprogram(name: "nearbyintl", scope: !35, file: !35, line: 933, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !292, file: !39, line: 1181)
!292 = !DISubprogram(name: "nextafter", scope: !35, file: !35, line: 1098, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !294, file: !39, line: 1182)
!294 = !DISubprogram(name: "nextafterf", scope: !35, file: !35, line: 1099, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !296, file: !39, line: 1183)
!296 = !DISubprogram(name: "nextafterl", scope: !35, file: !35, line: 1100, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !298, file: !39, line: 1185)
!298 = !DISubprogram(name: "nexttoward", scope: !35, file: !35, line: 1103, type: !299, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!38, !38, !107}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !302, file: !39, line: 1186)
!302 = !DISubprogram(name: "nexttowardf", scope: !35, file: !35, line: 1104, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!96, !96, !107}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !306, file: !39, line: 1187)
!306 = !DISubprogram(name: "nexttowardl", scope: !35, file: !35, line: 1105, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !308, file: !39, line: 1189)
!308 = !DISubprogram(name: "remainder", scope: !35, file: !35, line: 1053, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !310, file: !39, line: 1190)
!310 = !DISubprogram(name: "remainderf", scope: !35, file: !35, line: 1054, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !312, file: !39, line: 1191)
!312 = !DISubprogram(name: "remainderl", scope: !35, file: !35, line: 1055, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !314, file: !39, line: 1193)
!314 = !DISubprogram(name: "remquo", scope: !35, file: !35, line: 1058, type: !315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{!38, !38, !38, !66}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !318, file: !39, line: 1194)
!318 = !DISubprogram(name: "remquof", scope: !35, file: !35, line: 1059, type: !319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{!96, !96, !96, !66}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !322, file: !39, line: 1195)
!322 = !DISubprogram(name: "remquol", scope: !35, file: !35, line: 1060, type: !323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{!107, !107, !107, !66}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !326, file: !39, line: 1197)
!326 = !DISubprogram(name: "rint", scope: !35, file: !35, line: 937, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !328, file: !39, line: 1198)
!328 = !DISubprogram(name: "rintf", scope: !35, file: !35, line: 938, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !330, file: !39, line: 1199)
!330 = !DISubprogram(name: "rintl", scope: !35, file: !35, line: 939, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !332, file: !39, line: 1201)
!332 = !DISubprogram(name: "round", scope: !35, file: !35, line: 1030, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !334, file: !39, line: 1202)
!334 = !DISubprogram(name: "roundf", scope: !35, file: !35, line: 1031, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !336, file: !39, line: 1203)
!336 = !DISubprogram(name: "roundl", scope: !35, file: !35, line: 1032, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !338, file: !39, line: 1205)
!338 = !DISubprogram(name: "scalbln", scope: !35, file: !35, line: 871, type: !339, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{!38, !38, !255}
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !342, file: !39, line: 1206)
!342 = !DISubprogram(name: "scalblnf", scope: !35, file: !35, line: 872, type: !343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!96, !96, !255}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !346, file: !39, line: 1207)
!346 = !DISubprogram(name: "scalblnl", scope: !35, file: !35, line: 873, type: !347, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{!107, !107, !255}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !350, file: !39, line: 1209)
!350 = !DISubprogram(name: "scalbn", scope: !35, file: !35, line: 867, type: !69, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !352, file: !39, line: 1210)
!352 = !DISubprogram(name: "scalbnf", scope: !35, file: !35, line: 868, type: !353, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{!96, !96, !13}
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !356, file: !39, line: 1211)
!356 = !DISubprogram(name: "scalbnl", scope: !35, file: !35, line: 869, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!107, !107, !13}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !360, file: !39, line: 1213)
!360 = !DISubprogram(name: "tgamma", scope: !35, file: !35, line: 918, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !362, file: !39, line: 1214)
!362 = !DISubprogram(name: "tgammaf", scope: !35, file: !35, line: 919, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !364, file: !39, line: 1215)
!364 = !DISubprogram(name: "tgammal", scope: !35, file: !35, line: 920, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !366, file: !39, line: 1217)
!366 = !DISubprogram(name: "trunc", scope: !35, file: !35, line: 1044, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !368, file: !39, line: 1218)
!368 = !DISubprogram(name: "truncf", scope: !35, file: !35, line: 1045, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !370, file: !39, line: 1219)
!370 = !DISubprogram(name: "truncl", scope: !35, file: !35, line: 1046, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !372, file: !375, line: 124)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !373, line: 53, baseType: !374)
!373 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !373, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!375 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !377, file: !375, line: 125)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !373, line: 58, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !373, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !379, identifier: "_ZTS7_ldiv_t")
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !378, file: !373, line: 56, baseType: !255, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !378, file: !373, line: 57, baseType: !255, size: 64, offset: 64)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !383, file: !375, line: 127)
!383 = !DISubprogram(name: "abort", scope: !373, file: !373, line: 320, type: !384, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{null}
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !387, file: !375, line: 128)
!387 = !DISubprogram(name: "abs", scope: !35, file: !35, line: 254, type: !388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{!13, !13}
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !391, file: !375, line: 129)
!391 = !DISubprogram(name: "atexit", scope: !373, file: !373, line: 340, type: !392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!13, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !396, file: !375, line: 135)
!396 = !DISubprogram(name: "atof", scope: !35, file: !35, line: 259, type: !272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !398, file: !375, line: 136)
!398 = !DISubprogram(name: "atoi", scope: !373, file: !373, line: 346, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!13, !274}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !402, file: !375, line: 137)
!402 = !DISubprogram(name: "atol", scope: !373, file: !373, line: 348, type: !403, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DISubroutineType(types: !404)
!404 = !{!255, !274}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !406, file: !375, line: 138)
!406 = !DISubprogram(name: "bsearch", scope: !373, file: !373, line: 352, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !410, !410, !412, !412, !415}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !413, line: 35, baseType: !414)
!413 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!414 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!13, !410, !410}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !419, file: !375, line: 139)
!419 = !DISubprogram(name: "calloc", scope: !373, file: !373, line: 446, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!409, !412, !412}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !423, file: !375, line: 140)
!423 = !DISubprogram(name: "div", scope: !373, file: !373, line: 358, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{!372, !13, !13}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !427, file: !375, line: 141)
!427 = !DISubprogram(name: "exit", scope: !373, file: !373, line: 306, type: !428, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !13}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !431, file: !375, line: 142)
!431 = !DISubprogram(name: "free", scope: !373, file: !373, line: 447, type: !432, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !409}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !435, file: !375, line: 143)
!435 = !DISubprogram(name: "getenv", scope: !373, file: !373, line: 359, type: !436, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !274}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !440, file: !375, line: 144)
!440 = !DISubprogram(name: "labs", scope: !35, file: !35, line: 255, type: !441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DISubroutineType(types: !442)
!442 = !{!255, !255}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !444, file: !375, line: 145)
!444 = !DISubprogram(name: "ldiv", scope: !373, file: !373, line: 369, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{!377, !255, !255}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !448, file: !375, line: 146)
!448 = !DISubprogram(name: "malloc", scope: !373, file: !373, line: 448, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{!409, !412}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !452, file: !375, line: 148)
!452 = !DISubprogram(name: "mblen", scope: !373, file: !373, line: 371, type: !453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{!13, !274, !412}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !456, file: !375, line: 149)
!456 = !DISubprogram(name: "mbstowcs", scope: !373, file: !373, line: 379, type: !457, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!457 = !DISubroutineType(types: !458)
!458 = !{!412, !459, !462, !412}
!459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !274)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !464, file: !375, line: 150)
!464 = !DISubprogram(name: "mbtowc", scope: !373, file: !373, line: 377, type: !465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DISubroutineType(types: !466)
!466 = !{!13, !459, !462, !412}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !468, file: !375, line: 152)
!468 = !DISubprogram(name: "qsort", scope: !373, file: !373, line: 353, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !409, !412, !412, !415}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !472, file: !375, line: 158)
!472 = !DISubprogram(name: "rand", scope: !373, file: !373, line: 382, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !31)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !475, file: !375, line: 159)
!475 = !DISubprogram(name: "realloc", scope: !373, file: !373, line: 449, type: !476, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DISubroutineType(types: !477)
!477 = !{!409, !409, !412}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !479, file: !375, line: 160)
!479 = !DISubprogram(name: "srand", scope: !373, file: !373, line: 384, type: !480, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !484, file: !375, line: 161)
!484 = !DISubprogram(name: "strtod", scope: !373, file: !373, line: 396, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!38, !462, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !490, file: !375, line: 162)
!490 = !DISubprogram(name: "strtol", scope: !373, file: !373, line: 430, type: !491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{!255, !462, !487, !13}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !494, file: !375, line: 163)
!494 = !DISubprogram(name: "strtoul", scope: !373, file: !373, line: 432, type: !495, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{!414, !462, !487, !13}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !498, file: !375, line: 164)
!498 = !DISubprogram(name: "system", scope: !373, file: !373, line: 436, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !500, file: !375, line: 166)
!500 = !DISubprogram(name: "wcstombs", scope: !373, file: !373, line: 441, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!412, !503, !504, !412}
!503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !508, file: !375, line: 167)
!508 = !DISubprogram(name: "wctomb", scope: !373, file: !373, line: 439, type: !509, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{!13, !438, !461}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !513, file: !375, line: 220)
!512 = !DINamespace(name: "__gnu_cxx", scope: null)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !373, line: 644, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !515, identifier: "_ZTS7lldiv_t")
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !514, file: !373, line: 644, baseType: !218, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !514, file: !373, line: 644, baseType: !218, size: 64, offset: 64)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !519, file: !375, line: 226)
!519 = !DISubprogram(name: "_Exit", scope: !373, file: !373, line: 311, type: !428, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !521, file: !375, line: 230)
!521 = !DISubprogram(name: "llabs", scope: !373, file: !373, line: 648, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!218, !218}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !525, file: !375, line: 236)
!525 = !DISubprogram(name: "lldiv", scope: !373, file: !373, line: 646, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!513, !218, !218}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !529, file: !375, line: 247)
!529 = !DISubprogram(name: "atoll", scope: !373, file: !373, line: 657, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!218, !274}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !533, file: !375, line: 248)
!533 = !DISubprogram(name: "strtoll", scope: !373, file: !373, line: 653, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!218, !462, !487, !13}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !537, file: !375, line: 249)
!537 = !DISubprogram(name: "strtoull", scope: !373, file: !373, line: 654, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !462, !487, !13}
!540 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !542, file: !375, line: 251)
!542 = !DISubprogram(name: "strtof", scope: !373, file: !373, line: 403, type: !543, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!543 = !DISubroutineType(types: !544)
!544 = !{!96, !462, !487}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !546, file: !375, line: 252)
!546 = !DISubprogram(name: "strtold", scope: !373, file: !373, line: 414, type: !547, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DISubroutineType(types: !548)
!548 = !{!107, !462, !487}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !513, file: !375, line: 260)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !519, file: !375, line: 262)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !521, file: !375, line: 264)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !553, file: !375, line: 265)
!553 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !512, file: !375, line: 233, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !525, file: !375, line: 266)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !529, file: !375, line: 268)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !542, file: !375, line: 269)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !533, file: !375, line: 270)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !537, file: !375, line: 271)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !546, file: !375, line: 272)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !383, file: !561, line: 38)
!561 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "G:\5CXilinx_lab\5CKP_502_7_v3_2")
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !391, file: !561, line: 39)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !427, file: !561, line: 40)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !372, file: !561, line: 51)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !377, file: !561, line: 52)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !567, file: !561, line: 54)
!567 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !19, file: !375, line: 185, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !570}
!570 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !396, file: !561, line: 55)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !398, file: !561, line: 56)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !402, file: !561, line: 57)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !406, file: !561, line: 58)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !419, file: !561, line: 59)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !553, file: !561, line: 60)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !431, file: !561, line: 61)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !435, file: !561, line: 62)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !440, file: !561, line: 63)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !444, file: !561, line: 64)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !448, file: !561, line: 65)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !452, file: !561, line: 67)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !456, file: !561, line: 68)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !464, file: !561, line: 69)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !468, file: !561, line: 71)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !472, file: !561, line: 72)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !475, file: !561, line: 73)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !479, file: !561, line: 74)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !484, file: !561, line: 75)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !490, file: !561, line: 76)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !494, file: !561, line: 77)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !498, file: !561, line: 78)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !500, file: !561, line: 80)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !508, file: !561, line: 81)
!595 = !DILocation(line: 5, column: 9, scope: !6)
