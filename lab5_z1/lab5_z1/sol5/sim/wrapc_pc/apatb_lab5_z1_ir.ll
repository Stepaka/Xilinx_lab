; ModuleID = 'C:/Xilinx_trn/HLS2023/lab5_z1/lab5_z1/sol5/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_lab5_z1_ir(i16* %d_in, i16* %d_out) local_unnamed_addr #1 {
entry:
  %d_in_copy_0 = alloca [256 x i16], align 512
  %d_in_copy_1 = alloca [256 x i16], align 512
  %d_out_copy = alloca [128 x i16], align 512
  %0 = bitcast i16* %d_in to [512 x i16]*
  %1 = bitcast i16* %d_out to [128 x i16]*
  call void @copy_in([512 x i16]* %0, [256 x i16]* nonnull align 512 %d_in_copy_0, [256 x i16]* nonnull align 512 %d_in_copy_1, [128 x i16]* %1, [128 x i16]* nonnull align 512 %d_out_copy)
  %d_in_copy.gep_0 = getelementptr [256 x i16], [256 x i16]* %d_in_copy_0, i64 0, i32 0
  %d_in_copy.gep_1 = getelementptr [256 x i16], [256 x i16]* %d_in_copy_1, i64 0, i32 0
  %2 = getelementptr inbounds [128 x i16], [128 x i16]* %d_out_copy, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_in_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_in_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @apatb_lab5_z1_hw([256 x i16]* %d_in_copy_0, [256 x i16]* %d_in_copy_1, i16* %2)
  call void @copy_out([512 x i16]* %0, [256 x i16]* nonnull align 512 %d_in_copy_0, [256 x i16]* nonnull align 512 %d_in_copy_1, [128 x i16]* %1, [128 x i16]* nonnull align 512 %d_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128i16([128 x i16]* noalias align 512, [128 x i16]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x i16]* %0, null
  %3 = icmp eq [128 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x i16], [128 x i16]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [128 x i16], [128 x i16]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i16, i16* %src.addr, align 2
  store i16 %5, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a512i16.3.4([256 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [256 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [512 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [256 x i16]* %_0, null
  %2 = icmp eq [512 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 256
  %5 = urem i64 %for.loop.idx1, 256
  %dst.addr_0 = getelementptr [256 x i16], [256 x i16]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [256 x i16], [256 x i16]* %_1, i64 0, i64 %5
  %src.addr = getelementptr [512 x i16], [512 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i16, i16* %src.addr, align 2
  %7 = trunc i64 %4 to i1
  %cond = icmp eq i1 %7, false
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %7)
  store i16 %6, i16* %dst.addr_1, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([512 x i16]* readonly "orig.arg.no"="0", [256 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i16]* readonly "orig.arg.no"="2", [128 x i16]* noalias align 512 "orig.arg.no"="3") #4 {
entry:
  call void @onebyonecpy_hls.p0a512i16.3.4([256 x i16]* align 512 %_0, [256 x i16]* align 512 %_1, [512 x i16]* %0)
  call fastcc void @onebyonecpy_hls.p0a128i16([128 x i16]* align 512 %2, [128 x i16]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a512i16.9.10([512 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1) #2 {
entry:
  %1 = icmp eq [512 x i16]* %0, null
  %2 = icmp eq [256 x i16]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [512 x i16], [512 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 256
  %5 = urem i64 %for.loop.idx1, 256
  %src.addr_0 = getelementptr [256 x i16], [256 x i16]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [256 x i16], [256 x i16]* %_1, i64 0, i64 %5
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %src.addr_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %6)
  %_12 = load i16, i16* %src.addr_1, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %7 = phi i16 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ]
  store i16 %7, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([512 x i16]* "orig.arg.no"="0", [256 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [128 x i16]* "orig.arg.no"="2", [128 x i16]* noalias readonly align 512 "orig.arg.no"="3") #5 {
entry:
  call void @onebyonecpy_hls.p0a512i16.9.10([512 x i16]* %0, [256 x i16]* align 512 %_0, [256 x i16]* align 512 %_1)
  call fastcc void @onebyonecpy_hls.p0a128i16([128 x i16]* %1, [128 x i16]* align 512 %2)
  ret void
}

declare void @apatb_lab5_z1_hw([256 x i16]*, [256 x i16]*, i16*)

define void @lab5_z1_hw_stub_wrapper([256 x i16]*, [256 x i16]*, i16*) #6 {
entry:
  %3 = alloca [512 x i16]
  %4 = bitcast i16* %2 to [128 x i16]*
  call void @copy_out([512 x i16]* %3, [256 x i16]* %0, [256 x i16]* %1, [128 x i16]* null, [128 x i16]* %4)
  %5 = bitcast [512 x i16]* %3 to i16*
  %6 = bitcast [128 x i16]* %4 to i16*
  call void @lab5_z1_hw_stub(i16* %5, i16* %6)
  call void @copy_in([512 x i16]* %3, [256 x i16]* %0, [256 x i16]* %1, [128 x i16]* null, [128 x i16]* %4)
  ret void
}

declare void @lab5_z1_hw_stub(i16*, i16*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 3, column: 134, scope: !6)
!6 = distinct !DISubprogram(name: "lab5_z1", linkageName: "_Z7lab5_z1PsS_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "./source/lab5_z1.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab5_z1")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 1, baseType: !13)
!12 = !DIFile(filename: "./source/lab5_z1.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab5_z1")
!13 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 2, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab5_z1/lab5_z1/sol5/.autopilot/db\5Clab5_z1.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab5_z1")
