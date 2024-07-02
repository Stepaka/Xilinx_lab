; ModuleID = 'C:/Xilinx_trn/HLS2023/lab5_z1/lab5_z1/sol6_1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_lab5_z1_ir(i16* %d_in, i16* %d_out) local_unnamed_addr #1 {
entry:
  %d_in_copy1 = alloca [256 x i32], align 512
  %d_out_copy = alloca [128 x i16], align 512
  %0 = bitcast i16* %d_in to [512 x i16]*
  %1 = bitcast i16* %d_out to [128 x i16]*
  call void @copy_in([512 x i16]* %0, [256 x i32]* nonnull align 512 %d_in_copy1, [128 x i16]* %1, [128 x i16]* nonnull align 512 %d_out_copy)
  %d_in_copy.gep2 = getelementptr [256 x i32], [256 x i32]* %d_in_copy1, i64 0, i32 0
  %2 = getelementptr inbounds [128 x i16], [128 x i16]* %d_out_copy, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i32* %d_in_copy.gep2, i32 0, i32 1, i32 0) ], !dbg !5
  call void @apatb_lab5_z1_hw([256 x i32]* %d_in_copy1, i16* %2)
  call void @copy_out([512 x i16]* %0, [256 x i32]* nonnull align 512 %d_in_copy1, [128 x i16]* %1, [128 x i16]* nonnull align 512 %d_out_copy)
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

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a512i16.3.4([256 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [512 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [256 x i32]* %0, null
  %3 = icmp eq [512 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = udiv i64 %for.loop.idx1, 256
  %6 = mul i64 16, %5
  %7 = urem i64 %for.loop.idx1, 256
  %dst.addr1 = getelementptr [256 x i32], [256 x i32]* %0, i64 0, i64 %7
  %src.addr = getelementptr [512 x i16], [512 x i16]* %1, i64 0, i64 %for.loop.idx1
  %8 = load i16, i16* %src.addr, align 2
  %9 = add i64 %6, 15
  %10 = load i32, i32* %dst.addr1, align 4
  %11 = trunc i64 %6 to i32
  %12 = zext i16 %8 to i32
  %13 = shl i32 %12, %11
  %14 = trunc i64 %9 to i32
  %15 = add nuw nsw i32 %14, 1
  %16 = shl i32 1, %15
  %17 = icmp uge i32 %15, 32
  %18 = select i1 %17, i32 0, i32 %16
  %19 = shl i32 1, %11
  %20 = sub i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %10, %21
  %23 = or i32 %22, %13
  store i32 %23, i32* %dst.addr1, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([512 x i16]* readonly "orig.arg.no"="0", [256 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [128 x i16]* readonly "orig.arg.no"="2", [128 x i16]* noalias align 512 "orig.arg.no"="3") #3 {
entry:
  call void @onebyonecpy_hls.p0a512i16.3.4([256 x i32]* align 512 %1, [512 x i16]* %0)
  call fastcc void @onebyonecpy_hls.p0a128i16([128 x i16]* align 512 %3, [128 x i16]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a512i16.9.10([512 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [512 x i16]* %0, null
  %3 = icmp eq [256 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x i16], [512 x i16]* %0, i64 0, i64 %for.loop.idx1
  %5 = udiv i64 %for.loop.idx1, 256
  %6 = mul i64 16, %5
  %7 = urem i64 %for.loop.idx1, 256
  %src.addr1 = getelementptr [256 x i32], [256 x i32]* %1, i64 0, i64 %7
  %8 = load i32, i32* %src.addr1, align 4
  %9 = add i64 %6, 15
  %10 = trunc i64 %6 to i32
  %11 = trunc i64 %9 to i32
  %12 = add nuw nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = icmp uge i32 %12, 32
  %15 = select i1 %14, i32 0, i32 %13
  %16 = shl i32 1, %10
  %17 = sub i32 %15, %16
  %18 = and i32 %8, %17
  %19 = lshr i32 %18, %10
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([512 x i16]* "orig.arg.no"="0", [256 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [128 x i16]* "orig.arg.no"="2", [128 x i16]* noalias readonly align 512 "orig.arg.no"="3") #4 {
entry:
  call void @onebyonecpy_hls.p0a512i16.9.10([512 x i16]* %0, [256 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a128i16([128 x i16]* %2, [128 x i16]* align 512 %3)
  ret void
}

declare void @apatb_lab5_z1_hw([256 x i32]*, i16*)

define void @lab5_z1_hw_stub_wrapper([256 x i32]*, i16*) #5 {
entry:
  %2 = alloca [512 x i16]
  %3 = bitcast i16* %1 to [128 x i16]*
  call void @copy_out([512 x i16]* %2, [256 x i32]* %0, [128 x i16]* null, [128 x i16]* %3)
  %4 = bitcast [512 x i16]* %2 to i16*
  %5 = bitcast [128 x i16]* %3 to i16*
  call void @lab5_z1_hw_stub(i16* %4, i16* %5)
  call void @copy_in([512 x i16]* %2, [256 x i32]* %0, [128 x i16]* null, [128 x i16]* %3)
  ret void
}

declare void @lab5_z1_hw_stub(i16*, i16*)

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
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab5_z1/lab5_z1/sol6_1/.autopilot/db\5Clab5_z1.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab5_z1")
