; ModuleID = 'C:/Xilinx_trn/HLS2023/lab6_z1/lab6_z1/sol3_1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_lab6_z1_ir(i16* %a, i16* %b, i16* %c) local_unnamed_addr #1 {
entry:
  %a_copy_0 = alloca [8 x i16], align 512
  %a_copy_1 = alloca [8 x i16], align 512
  %a_copy_2 = alloca [8 x i16], align 512
  %a_copy_3 = alloca [8 x i16], align 512
  %b_copy_0 = alloca [8 x i16], align 512
  %b_copy_1 = alloca [8 x i16], align 512
  %b_copy_2 = alloca [8 x i16], align 512
  %b_copy_3 = alloca [8 x i16], align 512
  %c_copy_0 = alloca [8 x i16], align 512
  %c_copy_1 = alloca [8 x i16], align 512
  %c_copy_2 = alloca [8 x i16], align 512
  %c_copy_3 = alloca [8 x i16], align 512
  %0 = bitcast i16* %a to [32 x i16]*
  %1 = bitcast i16* %b to [32 x i16]*
  %2 = bitcast i16* %c to [32 x i16]*
  call void @copy_in([32 x i16]* %0, [8 x i16]* nonnull align 512 %a_copy_0, [8 x i16]* nonnull align 512 %a_copy_1, [8 x i16]* nonnull align 512 %a_copy_2, [8 x i16]* nonnull align 512 %a_copy_3, [32 x i16]* %1, [8 x i16]* nonnull align 512 %b_copy_0, [8 x i16]* nonnull align 512 %b_copy_1, [8 x i16]* nonnull align 512 %b_copy_2, [8 x i16]* nonnull align 512 %b_copy_3, [32 x i16]* %2, [8 x i16]* nonnull align 512 %c_copy_0, [8 x i16]* nonnull align 512 %c_copy_1, [8 x i16]* nonnull align 512 %c_copy_2, [8 x i16]* nonnull align 512 %c_copy_3)
  %a_copy.gep_0 = getelementptr [8 x i16], [8 x i16]* %a_copy_0, i64 0, i32 0
  %a_copy.gep_1 = getelementptr [8 x i16], [8 x i16]* %a_copy_1, i64 0, i32 0
  %a_copy.gep_2 = getelementptr [8 x i16], [8 x i16]* %a_copy_2, i64 0, i32 0
  %a_copy.gep_3 = getelementptr [8 x i16], [8 x i16]* %a_copy_3, i64 0, i32 0
  %b_copy.gep_0 = getelementptr [8 x i16], [8 x i16]* %b_copy_0, i64 0, i32 0
  %b_copy.gep_1 = getelementptr [8 x i16], [8 x i16]* %b_copy_1, i64 0, i32 0
  %b_copy.gep_2 = getelementptr [8 x i16], [8 x i16]* %b_copy_2, i64 0, i32 0
  %b_copy.gep_3 = getelementptr [8 x i16], [8 x i16]* %b_copy_3, i64 0, i32 0
  %c_copy.gep_0 = getelementptr [8 x i16], [8 x i16]* %c_copy_0, i64 0, i32 0
  %c_copy.gep_1 = getelementptr [8 x i16], [8 x i16]* %c_copy_1, i64 0, i32 0
  %c_copy.gep_2 = getelementptr [8 x i16], [8 x i16]* %c_copy_2, i64 0, i32 0
  %c_copy.gep_3 = getelementptr [8 x i16], [8 x i16]* %c_copy_3, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %a_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %a_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %a_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %a_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %b_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %b_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %b_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %b_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %c_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %c_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %c_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %c_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !18
  call void @apatb_lab6_z1_hw([8 x i16]* %a_copy_0, [8 x i16]* %a_copy_1, [8 x i16]* %a_copy_2, [8 x i16]* %a_copy_3, [8 x i16]* %b_copy_0, [8 x i16]* %b_copy_1, [8 x i16]* %b_copy_2, [8 x i16]* %b_copy_3, [8 x i16]* %c_copy_0, [8 x i16]* %c_copy_1, [8 x i16]* %c_copy_2, [8 x i16]* %c_copy_3)
  call void @copy_out([32 x i16]* %0, [8 x i16]* nonnull align 512 %a_copy_0, [8 x i16]* nonnull align 512 %a_copy_1, [8 x i16]* nonnull align 512 %a_copy_2, [8 x i16]* nonnull align 512 %a_copy_3, [32 x i16]* %1, [8 x i16]* nonnull align 512 %b_copy_0, [8 x i16]* nonnull align 512 %b_copy_1, [8 x i16]* nonnull align 512 %b_copy_2, [8 x i16]* nonnull align 512 %b_copy_3, [32 x i16]* %2, [8 x i16]* nonnull align 512 %c_copy_0, [8 x i16]* nonnull align 512 %c_copy_1, [8 x i16]* nonnull align 512 %c_copy_2, [8 x i16]* nonnull align 512 %c_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [8 x i16]* %_0, null
  %2 = icmp eq [32 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %dst.addr_0 = getelementptr [8 x i16], [8 x i16]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [8 x i16], [8 x i16]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [8 x i16], [8 x i16]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [8 x i16], [8 x i16]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i16, i16* %src.addr, align 2
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_1, align 2
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_2, align 2
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_3, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* readonly "orig.arg.no"="0", [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [32 x i16]* readonly "orig.arg.no"="2", [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [32 x i16]* readonly "orig.arg.no"="4", [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38) #3 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* align 512 %_0, [8 x i16]* align 512 %_1, [8 x i16]* align 512 %_2, [8 x i16]* align 512 %_3, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* align 512 %_01, [8 x i16]* align 512 %_12, [8 x i16]* align 512 %_23, [8 x i16]* align 512 %_34, [32 x i16]* %1)
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* align 512 %_05, [8 x i16]* align 512 %_16, [8 x i16]* align 512 %_27, [8 x i16]* align 512 %_38, [32 x i16]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [32 x i16]* %0, null
  %2 = icmp eq [8 x i16]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %src.addr_0 = getelementptr [8 x i16], [8 x i16]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [8 x i16], [8 x i16]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [8 x i16], [8 x i16]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [8 x i16], [8 x i16]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %src.addr_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i16, i16* %src.addr_1, align 2
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load i16, i16* %src.addr_2, align 2
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load i16, i16* %src.addr_3, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi i16 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store i16 %7, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* "orig.arg.no"="0", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [32 x i16]* "orig.arg.no"="2", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [32 x i16]* "orig.arg.no"="4", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38) #4 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, [8 x i16]* align 512 %_0, [8 x i16]* align 512 %_1, [8 x i16]* align 512 %_2, [8 x i16]* align 512 %_3)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %1, [8 x i16]* align 512 %_01, [8 x i16]* align 512 %_12, [8 x i16]* align 512 %_23, [8 x i16]* align 512 %_34)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %2, [8 x i16]* align 512 %_05, [8 x i16]* align 512 %_16, [8 x i16]* align 512 %_27, [8 x i16]* align 512 %_38)
  ret void
}

declare void @apatb_lab6_z1_hw([8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*)

define void @lab6_z1_hw_stub_wrapper([8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*) #5 {
entry:
  %12 = alloca [32 x i16]
  %13 = alloca [32 x i16]
  %14 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %12, [8 x i16]* %0, [8 x i16]* %1, [8 x i16]* %2, [8 x i16]* %3, [32 x i16]* %13, [8 x i16]* %4, [8 x i16]* %5, [8 x i16]* %6, [8 x i16]* %7, [32 x i16]* %14, [8 x i16]* %8, [8 x i16]* %9, [8 x i16]* %10, [8 x i16]* %11)
  %15 = bitcast [32 x i16]* %12 to i16*
  %16 = bitcast [32 x i16]* %13 to i16*
  %17 = bitcast [32 x i16]* %14 to i16*
  call void @lab6_z1_hw_stub(i16* %15, i16* %16, i16* %17)
  call void @copy_in([32 x i16]* %12, [8 x i16]* %0, [8 x i16]* %1, [8 x i16]* %2, [8 x i16]* %3, [32 x i16]* %13, [8 x i16]* %4, [8 x i16]* %5, [8 x i16]* %6, [8 x i16]* %7, [32 x i16]* %14, [8 x i16]* %8, [8 x i16]* %9, [8 x i16]* %10, [8 x i16]* %11)
  ret void
}

declare void @lab6_z1_hw_stub(i16*, i16*, i16*)

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
!5 = !DILocation(line: 3, column: 165, scope: !6)
!6 = distinct !DISubprogram(name: "lab6_z1", linkageName: "_Z7lab6_z1PsS_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "./source/lab6_z1.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab6_z1")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 3, baseType: !13)
!12 = !DIFile(filename: "./source/lab6_z1.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab6_z1")
!13 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 2, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab6_z1/lab6_z1/sol3_1/.autopilot/db\5Clab6_z1.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab6_z1")
!18 = !DILocation(line: 4, column: 9, scope: !6)
