; ModuleID = 'G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_3/.autopilot/db/a.g.ld.5.gdce.bc'
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
  %B_copy_0 = alloca [2 x i32], align 512
  %B_copy_1 = alloca [2 x i32], align 512
  %B_copy_2 = alloca [2 x i32], align 512
  %B_copy_3 = alloca [2 x i32], align 512
  %C_copy_0 = alloca [2 x i32], align 512
  %C_copy_1 = alloca [2 x i32], align 512
  %C_copy_2 = alloca [2 x i32], align 512
  %C_copy_3 = alloca [2 x i32], align 512
  %X1_copy_0 = alloca [2 x i32], align 512
  %X1_copy_1 = alloca [2 x i32], align 512
  %X1_copy_2 = alloca [2 x i32], align 512
  %X1_copy_3 = alloca [2 x i32], align 512
  %X2_copy_0 = alloca [2 x i32], align 512
  %X2_copy_1 = alloca [2 x i32], align 512
  %X2_copy_2 = alloca [2 x i32], align 512
  %X2_copy_3 = alloca [2 x i32], align 512
  %D_copy_0 = alloca [2 x i32], align 512
  %D_copy_1 = alloca [2 x i32], align 512
  %D_copy_2 = alloca [2 x i32], align 512
  %D_copy_3 = alloca [2 x i32], align 512
  %0 = bitcast i32* %A to [8 x i32]*
  %1 = bitcast i32* %B to [8 x i32]*
  %2 = bitcast i32* %C to [8 x i32]*
  %3 = bitcast i32* %X1 to [8 x i32]*
  %4 = bitcast i32* %X2 to [8 x i32]*
  %5 = bitcast i32* %D to [8 x i32]*
  call void @copy_in([8 x i32]* %0, [2 x i32]* nonnull align 512 %A_copy_0, [2 x i32]* nonnull align 512 %A_copy_1, [2 x i32]* nonnull align 512 %A_copy_2, [2 x i32]* nonnull align 512 %A_copy_3, [8 x i32]* %1, [2 x i32]* nonnull align 512 %B_copy_0, [2 x i32]* nonnull align 512 %B_copy_1, [2 x i32]* nonnull align 512 %B_copy_2, [2 x i32]* nonnull align 512 %B_copy_3, [8 x i32]* %2, [2 x i32]* nonnull align 512 %C_copy_0, [2 x i32]* nonnull align 512 %C_copy_1, [2 x i32]* nonnull align 512 %C_copy_2, [2 x i32]* nonnull align 512 %C_copy_3, [8 x i32]* %3, [2 x i32]* nonnull align 512 %X1_copy_0, [2 x i32]* nonnull align 512 %X1_copy_1, [2 x i32]* nonnull align 512 %X1_copy_2, [2 x i32]* nonnull align 512 %X1_copy_3, [8 x i32]* %4, [2 x i32]* nonnull align 512 %X2_copy_0, [2 x i32]* nonnull align 512 %X2_copy_1, [2 x i32]* nonnull align 512 %X2_copy_2, [2 x i32]* nonnull align 512 %X2_copy_3, [8 x i32]* %5, [2 x i32]* nonnull align 512 %D_copy_0, [2 x i32]* nonnull align 512 %D_copy_1, [2 x i32]* nonnull align 512 %D_copy_2, [2 x i32]* nonnull align 512 %D_copy_3)
  %A_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %A_copy_0, i64 0, i32 0
  %A_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %A_copy_1, i64 0, i32 0
  %A_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %A_copy_2, i64 0, i32 0
  %A_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %A_copy_3, i64 0, i32 0
  %B_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %B_copy_0, i64 0, i32 0
  %B_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %B_copy_1, i64 0, i32 0
  %B_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %B_copy_2, i64 0, i32 0
  %B_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %B_copy_3, i64 0, i32 0
  %C_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %C_copy_0, i64 0, i32 0
  %C_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %C_copy_1, i64 0, i32 0
  %C_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %C_copy_2, i64 0, i32 0
  %C_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %C_copy_3, i64 0, i32 0
  %X1_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %X1_copy_0, i64 0, i32 0
  %X1_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %X1_copy_1, i64 0, i32 0
  %X1_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %X1_copy_2, i64 0, i32 0
  %X1_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %X1_copy_3, i64 0, i32 0
  %X2_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %X2_copy_0, i64 0, i32 0
  %X2_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %X2_copy_1, i64 0, i32 0
  %X2_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %X2_copy_2, i64 0, i32 0
  %X2_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %X2_copy_3, i64 0, i32 0
  %D_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %D_copy_0, i64 0, i32 0
  %D_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %D_copy_1, i64 0, i32 0
  %D_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %D_copy_2, i64 0, i32 0
  %D_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %D_copy_3, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %A_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %B_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %C_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X1_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %X2_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %D_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !356
  call void @apatb_kp_502_7_hw([2 x i32]* %A_copy_0, [2 x i32]* %A_copy_1, [2 x i32]* %A_copy_2, [2 x i32]* %A_copy_3, [2 x i32]* %B_copy_0, [2 x i32]* %B_copy_1, [2 x i32]* %B_copy_2, [2 x i32]* %B_copy_3, [2 x i32]* %C_copy_0, [2 x i32]* %C_copy_1, [2 x i32]* %C_copy_2, [2 x i32]* %C_copy_3, [2 x i32]* %X1_copy_0, [2 x i32]* %X1_copy_1, [2 x i32]* %X1_copy_2, [2 x i32]* %X1_copy_3, [2 x i32]* %X2_copy_0, [2 x i32]* %X2_copy_1, [2 x i32]* %X2_copy_2, [2 x i32]* %X2_copy_3, [2 x i32]* %D_copy_0, [2 x i32]* %D_copy_1, [2 x i32]* %D_copy_2, [2 x i32]* %D_copy_3)
  call void @copy_out([8 x i32]* %0, [2 x i32]* nonnull align 512 %A_copy_0, [2 x i32]* nonnull align 512 %A_copy_1, [2 x i32]* nonnull align 512 %A_copy_2, [2 x i32]* nonnull align 512 %A_copy_3, [8 x i32]* %1, [2 x i32]* nonnull align 512 %B_copy_0, [2 x i32]* nonnull align 512 %B_copy_1, [2 x i32]* nonnull align 512 %B_copy_2, [2 x i32]* nonnull align 512 %B_copy_3, [8 x i32]* %2, [2 x i32]* nonnull align 512 %C_copy_0, [2 x i32]* nonnull align 512 %C_copy_1, [2 x i32]* nonnull align 512 %C_copy_2, [2 x i32]* nonnull align 512 %C_copy_3, [8 x i32]* %3, [2 x i32]* nonnull align 512 %X1_copy_0, [2 x i32]* nonnull align 512 %X1_copy_1, [2 x i32]* nonnull align 512 %X1_copy_2, [2 x i32]* nonnull align 512 %X1_copy_3, [8 x i32]* %4, [2 x i32]* nonnull align 512 %X2_copy_0, [2 x i32]* nonnull align 512 %X2_copy_1, [2 x i32]* nonnull align 512 %X2_copy_2, [2 x i32]* nonnull align 512 %X2_copy_3, [8 x i32]* %5, [2 x i32]* nonnull align 512 %D_copy_0, [2 x i32]* nonnull align 512 %D_copy_1, [2 x i32]* nonnull align 512 %D_copy_2, [2 x i32]* nonnull align 512 %D_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [8 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [2 x i32]* %_0, null
  %2 = icmp eq [8 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %dst.addr_0 = getelementptr [2 x i32], [2 x i32]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [2 x i32], [2 x i32]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [2 x i32], [2 x i32]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [2 x i32], [2 x i32]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i32, i32* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
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

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x i32]* readonly "orig.arg.no"="0", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x i32]* readonly "orig.arg.no"="2", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [8 x i32]* readonly "orig.arg.no"="4", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [8 x i32]* readonly "orig.arg.no"="6", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [8 x i32]* readonly "orig.arg.no"="8", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316, [8 x i32]* readonly "orig.arg.no"="10", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_017, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_118, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_219, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_320) #3 {
entry:
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3, [8 x i32]* %0)
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34, [8 x i32]* %1)
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_05, [2 x i32]* align 512 %_16, [2 x i32]* align 512 %_27, [2 x i32]* align 512 %_38, [8 x i32]* %2)
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312, [8 x i32]* %3)
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_013, [2 x i32]* align 512 %_114, [2 x i32]* align 512 %_215, [2 x i32]* align 512 %_316, [8 x i32]* %4)
  call void @onebyonecpy_hls.p0a8i32.76.77([2 x i32]* align 512 %_017, [2 x i32]* align 512 %_118, [2 x i32]* align 512 %_219, [2 x i32]* align 512 %_320, [8 x i32]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [8 x i32]* %0, null
  %2 = icmp eq [2 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %src.addr_0 = getelementptr [2 x i32], [2 x i32]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [2 x i32], [2 x i32]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [2 x i32], [2 x i32]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [2 x i32], [2 x i32]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
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

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store i32 %7, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x i32]* "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x i32]* "orig.arg.no"="2", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [8 x i32]* "orig.arg.no"="4", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [8 x i32]* "orig.arg.no"="6", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [8 x i32]* "orig.arg.no"="8", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316, [8 x i32]* "orig.arg.no"="10", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_017, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_118, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_219, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_320) #4 {
entry:
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %0, [2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %1, [2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %2, [2 x i32]* align 512 %_05, [2 x i32]* align 512 %_16, [2 x i32]* align 512 %_27, [2 x i32]* align 512 %_38)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %3, [2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %4, [2 x i32]* align 512 %_013, [2 x i32]* align 512 %_114, [2 x i32]* align 512 %_215, [2 x i32]* align 512 %_316)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %5, [2 x i32]* align 512 %_017, [2 x i32]* align 512 %_118, [2 x i32]* align 512 %_219, [2 x i32]* align 512 %_320)
  ret void
}

declare void @apatb_kp_502_7_hw([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*)

define void @kp_502_7_hw_stub_wrapper([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*) #5 {
entry:
  %24 = alloca [8 x i32]
  %25 = alloca [8 x i32]
  %26 = alloca [8 x i32]
  %27 = alloca [8 x i32]
  %28 = alloca [8 x i32]
  %29 = alloca [8 x i32]
  call void @copy_out([8 x i32]* %24, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [8 x i32]* %25, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [8 x i32]* %26, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [8 x i32]* %27, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [8 x i32]* %28, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19, [8 x i32]* %29, [2 x i32]* %20, [2 x i32]* %21, [2 x i32]* %22, [2 x i32]* %23)
  %30 = bitcast [8 x i32]* %24 to i32*
  %31 = bitcast [8 x i32]* %25 to i32*
  %32 = bitcast [8 x i32]* %26 to i32*
  %33 = bitcast [8 x i32]* %27 to i32*
  %34 = bitcast [8 x i32]* %28 to i32*
  %35 = bitcast [8 x i32]* %29 to i32*
  call void @kp_502_7_hw_stub(i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  call void @copy_in([8 x i32]* %24, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [8 x i32]* %25, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [8 x i32]* %26, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [8 x i32]* %27, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [8 x i32]* %28, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19, [8 x i32]* %29, [2 x i32]* %20, [2 x i32]* %21, [2 x i32]* %22, [2 x i32]* %23)
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
!5 = !DILocation(line: 4, column: 149, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_7", linkageName: "_Z8kp_502_7PiS_S_S_S_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_7.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 2, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_7.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !16)
!15 = !DIFile(filename: "G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_3/.autopilot/db\5Ckp_502_7.pp.0.cpp", directory: "G:\5CXilinx_lab\5CKP_502_7")
!16 = !{!17, !25, !27, !29, !33, !35, !37, !39, !41, !43, !45, !47, !52, !56, !58, !60, !65, !67, !69, !71, !73, !75, !77, !79, !82, !84, !88, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !117, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !155, !159, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !185, !189, !193, !195, !197, !199, !204, !208, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !241, !245, !249, !251, !253, !255, !262, !266, !270, !272, !274, !276, !278, !280, !282, !286, !290, !292, !294, !296, !298, !302, !306, !310, !312, !314, !316, !318, !320, !322, !326, !330, !334, !336, !340, !344, !346, !348, !350, !352, !354}
!17 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !19, file: !24, line: 106)
!18 = !DINamespace(name: "std", scope: null)
!19 = !DISubprogram(name: "acos", scope: !20, file: !20, line: 190, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!20 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "G:\5CXilinx_lab\5CKP_502_7")
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23}
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !DIFile(filename: "G:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "G:\5CXilinx_lab\5CKP_502_7")
!25 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !26, file: !24, line: 125)
!26 = !DISubprogram(name: "asin", scope: !20, file: !20, line: 189, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !28, file: !24, line: 144)
!28 = !DISubprogram(name: "atan", scope: !20, file: !20, line: 191, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !30, file: !24, line: 163)
!30 = !DISubprogram(name: "atan2", scope: !20, file: !20, line: 192, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DISubroutineType(types: !32)
!32 = !{!23, !23, !23}
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !34, file: !24, line: 184)
!34 = !DISubprogram(name: "ceil", scope: !20, file: !20, line: 198, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !36, file: !24, line: 203)
!36 = !DISubprogram(name: "cos", scope: !20, file: !20, line: 184, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !38, file: !24, line: 222)
!38 = !DISubprogram(name: "cosh", scope: !20, file: !20, line: 187, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !40, file: !24, line: 241)
!40 = !DISubprogram(name: "exp", scope: !20, file: !20, line: 193, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !42, file: !24, line: 260)
!42 = !DISubprogram(name: "fabs", scope: !20, file: !20, line: 204, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !44, file: !24, line: 279)
!44 = !DISubprogram(name: "floor", scope: !20, file: !20, line: 199, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !46, file: !24, line: 298)
!46 = !DISubprogram(name: "fmod", scope: !20, file: !20, line: 246, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !48, file: !24, line: 319)
!48 = !DISubprogram(name: "frexp", scope: !20, file: !20, line: 244, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DISubroutineType(types: !50)
!50 = !{!23, !23, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !53, file: !24, line: 338)
!53 = !DISubprogram(name: "ldexp", scope: !20, file: !20, line: 243, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DISubroutineType(types: !55)
!55 = !{!23, !23, !13}
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !57, file: !24, line: 357)
!57 = !DISubprogram(name: "log", scope: !20, file: !20, line: 194, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !59, file: !24, line: 376)
!59 = !DISubprogram(name: "log10", scope: !20, file: !20, line: 195, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !61, file: !24, line: 395)
!61 = !DISubprogram(name: "modf", scope: !20, file: !20, line: 245, type: !62, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!23, !23, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !66, file: !24, line: 407)
!66 = !DISubprogram(name: "pow", scope: !20, file: !20, line: 196, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !68, file: !24, line: 444)
!68 = !DISubprogram(name: "sin", scope: !20, file: !20, line: 183, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !70, file: !24, line: 463)
!70 = !DISubprogram(name: "sinh", scope: !20, file: !20, line: 186, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !72, file: !24, line: 482)
!72 = !DISubprogram(name: "sqrt", scope: !20, file: !20, line: 197, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !74, file: !24, line: 501)
!74 = !DISubprogram(name: "tan", scope: !20, file: !20, line: 185, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !76, file: !24, line: 520)
!76 = !DISubprogram(name: "tanh", scope: !20, file: !20, line: 188, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !78, file: !24, line: 1077)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !20, line: 373, baseType: !23)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !80, file: !24, line: 1078)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !20, line: 372, baseType: !81)
!81 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !83, file: !24, line: 1081)
!83 = !DISubprogram(name: "acosh", scope: !20, file: !20, line: 705, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !85, file: !24, line: 1082)
!85 = !DISubprogram(name: "acoshf", scope: !20, file: !20, line: 706, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!81, !81}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !89, file: !24, line: 1083)
!89 = !DISubprogram(name: "acoshl", scope: !20, file: !20, line: 707, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !92}
!92 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !94, file: !24, line: 1085)
!94 = !DISubprogram(name: "asinh", scope: !20, file: !20, line: 710, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !96, file: !24, line: 1086)
!96 = !DISubprogram(name: "asinhf", scope: !20, file: !20, line: 711, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !98, file: !24, line: 1087)
!98 = !DISubprogram(name: "asinhl", scope: !20, file: !20, line: 712, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !100, file: !24, line: 1089)
!100 = !DISubprogram(name: "atanh", scope: !20, file: !20, line: 715, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !102, file: !24, line: 1090)
!102 = !DISubprogram(name: "atanhf", scope: !20, file: !20, line: 716, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !104, file: !24, line: 1091)
!104 = !DISubprogram(name: "atanhl", scope: !20, file: !20, line: 717, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !106, file: !24, line: 1093)
!106 = !DISubprogram(name: "cbrt", scope: !20, file: !20, line: 877, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !108, file: !24, line: 1094)
!108 = !DISubprogram(name: "cbrtf", scope: !20, file: !20, line: 878, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !110, file: !24, line: 1095)
!110 = !DISubprogram(name: "cbrtl", scope: !20, file: !20, line: 879, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !112, file: !24, line: 1097)
!112 = !DISubprogram(name: "copysign", scope: !20, file: !20, line: 1063, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !114, file: !24, line: 1098)
!114 = !DISubprogram(name: "copysignf", scope: !20, file: !20, line: 1064, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!81, !81, !81}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !118, file: !24, line: 1099)
!118 = !DISubprogram(name: "copysignl", scope: !20, file: !20, line: 1065, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!92, !92, !92}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !122, file: !24, line: 1101)
!122 = !DISubprogram(name: "erf", scope: !20, file: !20, line: 901, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !124, file: !24, line: 1102)
!124 = !DISubprogram(name: "erff", scope: !20, file: !20, line: 902, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !126, file: !24, line: 1103)
!126 = !DISubprogram(name: "erfl", scope: !20, file: !20, line: 903, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !128, file: !24, line: 1105)
!128 = !DISubprogram(name: "erfc", scope: !20, file: !20, line: 906, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !130, file: !24, line: 1106)
!130 = !DISubprogram(name: "erfcf", scope: !20, file: !20, line: 907, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !132, file: !24, line: 1107)
!132 = !DISubprogram(name: "erfcl", scope: !20, file: !20, line: 908, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !134, file: !24, line: 1109)
!134 = !DISubprogram(name: "exp2", scope: !20, file: !20, line: 728, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !136, file: !24, line: 1110)
!136 = !DISubprogram(name: "exp2f", scope: !20, file: !20, line: 729, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !138, file: !24, line: 1111)
!138 = !DISubprogram(name: "exp2l", scope: !20, file: !20, line: 730, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !140, file: !24, line: 1113)
!140 = !DISubprogram(name: "expm1", scope: !20, file: !20, line: 734, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !142, file: !24, line: 1114)
!142 = !DISubprogram(name: "expm1f", scope: !20, file: !20, line: 735, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !144, file: !24, line: 1115)
!144 = !DISubprogram(name: "expm1l", scope: !20, file: !20, line: 736, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !146, file: !24, line: 1117)
!146 = !DISubprogram(name: "fdim", scope: !20, file: !20, line: 1109, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !148, file: !24, line: 1118)
!148 = !DISubprogram(name: "fdimf", scope: !20, file: !20, line: 1110, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !150, file: !24, line: 1119)
!150 = !DISubprogram(name: "fdiml", scope: !20, file: !20, line: 1111, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !152, file: !24, line: 1121)
!152 = !DISubprogram(name: "fma", scope: !20, file: !20, line: 1130, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!23, !23, !23, !23}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !156, file: !24, line: 1122)
!156 = !DISubprogram(name: "fmaf", scope: !20, file: !20, line: 1131, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!81, !81, !81, !81}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !160, file: !24, line: 1123)
!160 = !DISubprogram(name: "fmal", scope: !20, file: !20, line: 1132, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!92, !92, !92, !92}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !164, file: !24, line: 1125)
!164 = !DISubprogram(name: "fmax", scope: !20, file: !20, line: 1119, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !166, file: !24, line: 1126)
!166 = !DISubprogram(name: "fmaxf", scope: !20, file: !20, line: 1120, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !168, file: !24, line: 1127)
!168 = !DISubprogram(name: "fmaxl", scope: !20, file: !20, line: 1121, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !170, file: !24, line: 1129)
!170 = !DISubprogram(name: "fmin", scope: !20, file: !20, line: 1124, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !172, file: !24, line: 1130)
!172 = !DISubprogram(name: "fminf", scope: !20, file: !20, line: 1125, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !174, file: !24, line: 1131)
!174 = !DISubprogram(name: "fminl", scope: !20, file: !20, line: 1126, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !176, file: !24, line: 1133)
!176 = !DISubprogram(name: "hypot", scope: !20, file: !20, line: 882, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !178, file: !24, line: 1134)
!178 = !DISubprogram(name: "hypotf", scope: !20, file: !20, line: 883, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !180, file: !24, line: 1135)
!180 = !DISubprogram(name: "hypotl", scope: !20, file: !20, line: 887, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !182, file: !24, line: 1137)
!182 = !DISubprogram(name: "ilogb", scope: !20, file: !20, line: 748, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!13, !23}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !186, file: !24, line: 1138)
!186 = !DISubprogram(name: "ilogbf", scope: !20, file: !20, line: 749, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!13, !81}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !190, file: !24, line: 1139)
!190 = !DISubprogram(name: "ilogbl", scope: !20, file: !20, line: 750, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{!13, !92}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !194, file: !24, line: 1141)
!194 = !DISubprogram(name: "lgamma", scope: !20, file: !20, line: 911, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !196, file: !24, line: 1142)
!196 = !DISubprogram(name: "lgammaf", scope: !20, file: !20, line: 912, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !198, file: !24, line: 1143)
!198 = !DISubprogram(name: "lgammal", scope: !20, file: !20, line: 913, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !200, file: !24, line: 1145)
!200 = !DISubprogram(name: "llrint", scope: !20, file: !20, line: 946, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !23}
!203 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !205, file: !24, line: 1146)
!205 = !DISubprogram(name: "llrintf", scope: !20, file: !20, line: 947, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!203, !81}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !209, file: !24, line: 1147)
!209 = !DISubprogram(name: "llrintl", scope: !20, file: !20, line: 948, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!203, !92}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !213, file: !24, line: 1149)
!213 = !DISubprogram(name: "llround", scope: !20, file: !20, line: 1038, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !215, file: !24, line: 1150)
!215 = !DISubprogram(name: "llroundf", scope: !20, file: !20, line: 1039, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !217, file: !24, line: 1151)
!217 = !DISubprogram(name: "llroundl", scope: !20, file: !20, line: 1040, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !219, file: !24, line: 1153)
!219 = !DISubprogram(name: "log1p", scope: !20, file: !20, line: 768, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !221, file: !24, line: 1154)
!221 = !DISubprogram(name: "log1pf", scope: !20, file: !20, line: 769, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !223, file: !24, line: 1155)
!223 = !DISubprogram(name: "log1pl", scope: !20, file: !20, line: 770, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !225, file: !24, line: 1157)
!225 = !DISubprogram(name: "log2", scope: !20, file: !20, line: 773, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !227, file: !24, line: 1158)
!227 = !DISubprogram(name: "log2f", scope: !20, file: !20, line: 774, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !229, file: !24, line: 1159)
!229 = !DISubprogram(name: "log2l", scope: !20, file: !20, line: 775, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !231, file: !24, line: 1161)
!231 = !DISubprogram(name: "logb", scope: !20, file: !20, line: 778, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !233, file: !24, line: 1162)
!233 = !DISubprogram(name: "logbf", scope: !20, file: !20, line: 779, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !235, file: !24, line: 1163)
!235 = !DISubprogram(name: "logbl", scope: !20, file: !20, line: 780, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !237, file: !24, line: 1165)
!237 = !DISubprogram(name: "lrint", scope: !20, file: !20, line: 942, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !23}
!240 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !242, file: !24, line: 1166)
!242 = !DISubprogram(name: "lrintf", scope: !20, file: !20, line: 943, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!240, !81}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !246, file: !24, line: 1167)
!246 = !DISubprogram(name: "lrintl", scope: !20, file: !20, line: 944, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!240, !92}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !250, file: !24, line: 1169)
!250 = !DISubprogram(name: "lround", scope: !20, file: !20, line: 1035, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !252, file: !24, line: 1170)
!252 = !DISubprogram(name: "lroundf", scope: !20, file: !20, line: 1036, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !254, file: !24, line: 1171)
!254 = !DISubprogram(name: "lroundl", scope: !20, file: !20, line: 1037, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !256, file: !24, line: 1173)
!256 = !DISubprogram(name: "nan", scope: !20, file: !20, line: 1087, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!23, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !263, file: !24, line: 1174)
!263 = !DISubprogram(name: "nanf", scope: !20, file: !20, line: 1088, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!81, !259}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !267, file: !24, line: 1175)
!267 = !DISubprogram(name: "nanl", scope: !20, file: !20, line: 1089, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!92, !259}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !271, file: !24, line: 1177)
!271 = !DISubprogram(name: "nearbyint", scope: !20, file: !20, line: 931, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !273, file: !24, line: 1178)
!273 = !DISubprogram(name: "nearbyintf", scope: !20, file: !20, line: 932, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !275, file: !24, line: 1179)
!275 = !DISubprogram(name: "nearbyintl", scope: !20, file: !20, line: 933, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !277, file: !24, line: 1181)
!277 = !DISubprogram(name: "nextafter", scope: !20, file: !20, line: 1098, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !279, file: !24, line: 1182)
!279 = !DISubprogram(name: "nextafterf", scope: !20, file: !20, line: 1099, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !281, file: !24, line: 1183)
!281 = !DISubprogram(name: "nextafterl", scope: !20, file: !20, line: 1100, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !283, file: !24, line: 1185)
!283 = !DISubprogram(name: "nexttoward", scope: !20, file: !20, line: 1103, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!23, !23, !92}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !287, file: !24, line: 1186)
!287 = !DISubprogram(name: "nexttowardf", scope: !20, file: !20, line: 1104, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!81, !81, !92}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !291, file: !24, line: 1187)
!291 = !DISubprogram(name: "nexttowardl", scope: !20, file: !20, line: 1105, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !293, file: !24, line: 1189)
!293 = !DISubprogram(name: "remainder", scope: !20, file: !20, line: 1053, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !295, file: !24, line: 1190)
!295 = !DISubprogram(name: "remainderf", scope: !20, file: !20, line: 1054, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !297, file: !24, line: 1191)
!297 = !DISubprogram(name: "remainderl", scope: !20, file: !20, line: 1055, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !299, file: !24, line: 1193)
!299 = !DISubprogram(name: "remquo", scope: !20, file: !20, line: 1058, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!23, !23, !23, !51}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !303, file: !24, line: 1194)
!303 = !DISubprogram(name: "remquof", scope: !20, file: !20, line: 1059, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!81, !81, !81, !51}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !307, file: !24, line: 1195)
!307 = !DISubprogram(name: "remquol", scope: !20, file: !20, line: 1060, type: !308, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!92, !92, !92, !51}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !311, file: !24, line: 1197)
!311 = !DISubprogram(name: "rint", scope: !20, file: !20, line: 937, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !313, file: !24, line: 1198)
!313 = !DISubprogram(name: "rintf", scope: !20, file: !20, line: 938, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !315, file: !24, line: 1199)
!315 = !DISubprogram(name: "rintl", scope: !20, file: !20, line: 939, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !317, file: !24, line: 1201)
!317 = !DISubprogram(name: "round", scope: !20, file: !20, line: 1030, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !319, file: !24, line: 1202)
!319 = !DISubprogram(name: "roundf", scope: !20, file: !20, line: 1031, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !321, file: !24, line: 1203)
!321 = !DISubprogram(name: "roundl", scope: !20, file: !20, line: 1032, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !323, file: !24, line: 1205)
!323 = !DISubprogram(name: "scalbln", scope: !20, file: !20, line: 871, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!23, !23, !240}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !327, file: !24, line: 1206)
!327 = !DISubprogram(name: "scalblnf", scope: !20, file: !20, line: 872, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!81, !81, !240}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !331, file: !24, line: 1207)
!331 = !DISubprogram(name: "scalblnl", scope: !20, file: !20, line: 873, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!92, !92, !240}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !335, file: !24, line: 1209)
!335 = !DISubprogram(name: "scalbn", scope: !20, file: !20, line: 867, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !337, file: !24, line: 1210)
!337 = !DISubprogram(name: "scalbnf", scope: !20, file: !20, line: 868, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!81, !81, !13}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !341, file: !24, line: 1211)
!341 = !DISubprogram(name: "scalbnl", scope: !20, file: !20, line: 869, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!92, !92, !13}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !345, file: !24, line: 1213)
!345 = !DISubprogram(name: "tgamma", scope: !20, file: !20, line: 918, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !347, file: !24, line: 1214)
!347 = !DISubprogram(name: "tgammaf", scope: !20, file: !20, line: 919, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !349, file: !24, line: 1215)
!349 = !DISubprogram(name: "tgammal", scope: !20, file: !20, line: 920, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !351, file: !24, line: 1217)
!351 = !DISubprogram(name: "trunc", scope: !20, file: !20, line: 1044, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !353, file: !24, line: 1218)
!353 = !DISubprogram(name: "truncf", scope: !20, file: !20, line: 1045, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !355, file: !24, line: 1219)
!355 = !DISubprogram(name: "truncl", scope: !20, file: !20, line: 1046, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DILocation(line: 5, column: 9, scope: !6)