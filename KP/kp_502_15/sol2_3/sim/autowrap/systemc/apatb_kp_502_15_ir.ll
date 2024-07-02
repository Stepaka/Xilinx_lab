; ModuleID = 'C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_15_ir(i32* %r, i32* %a, i32* %b, i32* %c, i32* %x) local_unnamed_addr #1 {
entry:
  %r_copy_0 = alloca [2 x i32], align 512
  %r_copy_1 = alloca [2 x i32], align 512
  %r_copy_2 = alloca [2 x i32], align 512
  %r_copy_3 = alloca [2 x i32], align 512
  %a_copy_0 = alloca [2 x i32], align 512
  %a_copy_1 = alloca [2 x i32], align 512
  %a_copy_2 = alloca [2 x i32], align 512
  %a_copy_3 = alloca [2 x i32], align 512
  %b_copy_0 = alloca [2 x i32], align 512
  %b_copy_1 = alloca [2 x i32], align 512
  %b_copy_2 = alloca [2 x i32], align 512
  %b_copy_3 = alloca [2 x i32], align 512
  %c_copy_0 = alloca [2 x i32], align 512
  %c_copy_1 = alloca [2 x i32], align 512
  %c_copy_2 = alloca [2 x i32], align 512
  %c_copy_3 = alloca [2 x i32], align 512
  %x_copy_0 = alloca [2 x i32], align 512
  %x_copy_1 = alloca [2 x i32], align 512
  %x_copy_2 = alloca [2 x i32], align 512
  %x_copy_3 = alloca [2 x i32], align 512
  %0 = bitcast i32* %r to [8 x i32]*
  %1 = bitcast i32* %a to [8 x i32]*
  %2 = bitcast i32* %b to [8 x i32]*
  %3 = bitcast i32* %c to [8 x i32]*
  %4 = bitcast i32* %x to [8 x i32]*
  call void @copy_in([8 x i32]* %0, [2 x i32]* nonnull align 512 %r_copy_0, [2 x i32]* nonnull align 512 %r_copy_1, [2 x i32]* nonnull align 512 %r_copy_2, [2 x i32]* nonnull align 512 %r_copy_3, [8 x i32]* %1, [2 x i32]* nonnull align 512 %a_copy_0, [2 x i32]* nonnull align 512 %a_copy_1, [2 x i32]* nonnull align 512 %a_copy_2, [2 x i32]* nonnull align 512 %a_copy_3, [8 x i32]* %2, [2 x i32]* nonnull align 512 %b_copy_0, [2 x i32]* nonnull align 512 %b_copy_1, [2 x i32]* nonnull align 512 %b_copy_2, [2 x i32]* nonnull align 512 %b_copy_3, [8 x i32]* %3, [2 x i32]* nonnull align 512 %c_copy_0, [2 x i32]* nonnull align 512 %c_copy_1, [2 x i32]* nonnull align 512 %c_copy_2, [2 x i32]* nonnull align 512 %c_copy_3, [8 x i32]* %4, [2 x i32]* nonnull align 512 %x_copy_0, [2 x i32]* nonnull align 512 %x_copy_1, [2 x i32]* nonnull align 512 %x_copy_2, [2 x i32]* nonnull align 512 %x_copy_3)
  %r_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %r_copy_0, i64 0, i32 0
  %r_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %r_copy_1, i64 0, i32 0
  %r_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %r_copy_2, i64 0, i32 0
  %r_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %r_copy_3, i64 0, i32 0
  %a_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %a_copy_0, i64 0, i32 0
  %a_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %a_copy_1, i64 0, i32 0
  %a_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %a_copy_2, i64 0, i32 0
  %a_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %a_copy_3, i64 0, i32 0
  %b_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %b_copy_0, i64 0, i32 0
  %b_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %b_copy_1, i64 0, i32 0
  %b_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %b_copy_2, i64 0, i32 0
  %b_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %b_copy_3, i64 0, i32 0
  %c_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %c_copy_0, i64 0, i32 0
  %c_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %c_copy_1, i64 0, i32 0
  %c_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %c_copy_2, i64 0, i32 0
  %c_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %c_copy_3, i64 0, i32 0
  %x_copy.gep_0 = getelementptr [2 x i32], [2 x i32]* %x_copy_0, i64 0, i32 0
  %x_copy.gep_1 = getelementptr [2 x i32], [2 x i32]* %x_copy_1, i64 0, i32 0
  %x_copy.gep_2 = getelementptr [2 x i32], [2 x i32]* %x_copy_2, i64 0, i32 0
  %x_copy.gep_3 = getelementptr [2 x i32], [2 x i32]* %x_copy_3, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %r_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %r_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %r_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %r_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %a_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %a_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %a_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %a_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %b_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %b_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %b_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %b_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %c_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %c_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %c_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %c_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %x_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %x_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %x_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i32* %x_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @apatb_kp_502_15_hw([2 x i32]* %r_copy_0, [2 x i32]* %r_copy_1, [2 x i32]* %r_copy_2, [2 x i32]* %r_copy_3, [2 x i32]* %a_copy_0, [2 x i32]* %a_copy_1, [2 x i32]* %a_copy_2, [2 x i32]* %a_copy_3, [2 x i32]* %b_copy_0, [2 x i32]* %b_copy_1, [2 x i32]* %b_copy_2, [2 x i32]* %b_copy_3, [2 x i32]* %c_copy_0, [2 x i32]* %c_copy_1, [2 x i32]* %c_copy_2, [2 x i32]* %c_copy_3, [2 x i32]* %x_copy_0, [2 x i32]* %x_copy_1, [2 x i32]* %x_copy_2, [2 x i32]* %x_copy_3)
  call void @copy_out([8 x i32]* %0, [2 x i32]* nonnull align 512 %r_copy_0, [2 x i32]* nonnull align 512 %r_copy_1, [2 x i32]* nonnull align 512 %r_copy_2, [2 x i32]* nonnull align 512 %r_copy_3, [8 x i32]* %1, [2 x i32]* nonnull align 512 %a_copy_0, [2 x i32]* nonnull align 512 %a_copy_1, [2 x i32]* nonnull align 512 %a_copy_2, [2 x i32]* nonnull align 512 %a_copy_3, [8 x i32]* %2, [2 x i32]* nonnull align 512 %b_copy_0, [2 x i32]* nonnull align 512 %b_copy_1, [2 x i32]* nonnull align 512 %b_copy_2, [2 x i32]* nonnull align 512 %b_copy_3, [8 x i32]* %3, [2 x i32]* nonnull align 512 %c_copy_0, [2 x i32]* nonnull align 512 %c_copy_1, [2 x i32]* nonnull align 512 %c_copy_2, [2 x i32]* nonnull align 512 %c_copy_3, [8 x i32]* %4, [2 x i32]* nonnull align 512 %x_copy_0, [2 x i32]* nonnull align 512 %x_copy_1, [2 x i32]* nonnull align 512 %x_copy_2, [2 x i32]* nonnull align 512 %x_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [8 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
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
define internal void @copy_in([8 x i32]* readonly "orig.arg.no"="0", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x i32]* readonly "orig.arg.no"="2", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [8 x i32]* readonly "orig.arg.no"="4", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [8 x i32]* readonly "orig.arg.no"="6", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [8 x i32]* readonly "orig.arg.no"="8", [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, [2 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316) #3 {
entry:
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3, [8 x i32]* %0)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34, [8 x i32]* %1)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* align 512 %_05, [2 x i32]* align 512 %_16, [2 x i32]* align 512 %_27, [2 x i32]* align 512 %_38, [8 x i32]* %2)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312, [8 x i32]* %3)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i32]* align 512 %_013, [2 x i32]* align 512 %_114, [2 x i32]* align 512 %_215, [2 x i32]* align 512 %_316, [8 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
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
define internal void @copy_out([8 x i32]* "orig.arg.no"="0", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [8 x i32]* "orig.arg.no"="2", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [8 x i32]* "orig.arg.no"="4", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [8 x i32]* "orig.arg.no"="6", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [8 x i32]* "orig.arg.no"="8", [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, [2 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316) #4 {
entry:
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %0, [2 x i32]* align 512 %_0, [2 x i32]* align 512 %_1, [2 x i32]* align 512 %_2, [2 x i32]* align 512 %_3)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %1, [2 x i32]* align 512 %_01, [2 x i32]* align 512 %_12, [2 x i32]* align 512 %_23, [2 x i32]* align 512 %_34)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %2, [2 x i32]* align 512 %_05, [2 x i32]* align 512 %_16, [2 x i32]* align 512 %_27, [2 x i32]* align 512 %_38)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %3, [2 x i32]* align 512 %_09, [2 x i32]* align 512 %_110, [2 x i32]* align 512 %_211, [2 x i32]* align 512 %_312)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %4, [2 x i32]* align 512 %_013, [2 x i32]* align 512 %_114, [2 x i32]* align 512 %_215, [2 x i32]* align 512 %_316)
  ret void
}

declare void @apatb_kp_502_15_hw([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*)

define void @kp_502_15_hw_stub_wrapper([2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*) #5 {
entry:
  %20 = alloca [8 x i32]
  %21 = alloca [8 x i32]
  %22 = alloca [8 x i32]
  %23 = alloca [8 x i32]
  %24 = alloca [8 x i32]
  call void @copy_out([8 x i32]* %20, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [8 x i32]* %21, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [8 x i32]* %22, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [8 x i32]* %23, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [8 x i32]* %24, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19)
  %25 = bitcast [8 x i32]* %20 to i32*
  %26 = bitcast [8 x i32]* %21 to i32*
  %27 = bitcast [8 x i32]* %22 to i32*
  %28 = bitcast [8 x i32]* %23 to i32*
  %29 = bitcast [8 x i32]* %24 to i32*
  call void @kp_502_15_hw_stub(i32* %25, i32* %26, i32* %27, i32* %28, i32* %29)
  call void @copy_in([8 x i32]* %20, [2 x i32]* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [8 x i32]* %21, [2 x i32]* %4, [2 x i32]* %5, [2 x i32]* %6, [2 x i32]* %7, [8 x i32]* %22, [2 x i32]* %8, [2 x i32]* %9, [2 x i32]* %10, [2 x i32]* %11, [8 x i32]* %23, [2 x i32]* %12, [2 x i32]* %13, [2 x i32]* %14, [2 x i32]* %15, [8 x i32]* %24, [2 x i32]* %16, [2 x i32]* %17, [2 x i32]* %18, [2 x i32]* %19)
  ret void
}

declare void @kp_502_15_hw_stub(i32*, i32*, i32*, i32*, i32*)

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
!5 = !DILocation(line: 6, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "kp_502_15", linkageName: "_Z9kp_502_15PiS_S_S_S_", scope: !7, file: !7, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "./source/kp_502_15.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14, !14, !14, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 3, baseType: !13)
!12 = !DIFile(filename: "./source/kp_502_15.h", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 2, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_3/.autopilot/db\5Ckp_502_15.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!18 = !DILocation(line: 5, column: 118, scope: !6)
