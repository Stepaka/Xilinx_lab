; ModuleID = 'C:/Xilinx_trn/HLS2023/lab6_z1/lab6_z1/sol3_3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_lab6_z1_ir(i16* %a, i16* %b, i16* %c) local_unnamed_addr #1 {
entry:
  %a_copy1 = alloca [8 x i64], align 512
  %b_copy2 = alloca [8 x i64], align 512
  %c_copy3 = alloca [8 x i64], align 512
  %0 = bitcast i16* %a to [32 x i16]*
  %1 = bitcast i16* %b to [32 x i16]*
  %2 = bitcast i16* %c to [32 x i16]*
  call void @copy_in([32 x i16]* %0, [8 x i64]* nonnull align 512 %a_copy1, [32 x i16]* %1, [8 x i64]* nonnull align 512 %b_copy2, [32 x i16]* %2, [8 x i64]* nonnull align 512 %c_copy3)
  %a_copy.gep4 = getelementptr [8 x i64], [8 x i64]* %a_copy1, i64 0, i32 0
  %b_copy.gep5 = getelementptr [8 x i64], [8 x i64]* %b_copy2, i64 0, i32 0
  %c_copy.gep6 = getelementptr [8 x i64], [8 x i64]* %c_copy3, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i64* %a_copy.gep4, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i64* %b_copy.gep5, i32 0, i32 1, i32 0) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i64* %c_copy.gep6, i32 0, i32 1, i32 0) ], !dbg !18
  call void @apatb_lab6_z1_hw([8 x i64]* %a_copy1, [8 x i64]* %b_copy2, [8 x i64]* %c_copy3)
  call void @copy_out([32 x i16]* %0, [8 x i64]* nonnull align 512 %a_copy1, [32 x i16]* %1, [8 x i64]* nonnull align 512 %b_copy2, [32 x i16]* %2, [8 x i64]* nonnull align 512 %c_copy3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4([8 x i64]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [8 x i64]* %0, null
  %3 = icmp eq [32 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = urem i64 %for.loop.idx1, 4
  %6 = mul i64 16, %5
  %7 = udiv i64 %for.loop.idx1, 4
  %dst.addr1 = getelementptr [8 x i64], [8 x i64]* %0, i64 0, i64 %7
  %src.addr = getelementptr [32 x i16], [32 x i16]* %1, i64 0, i64 %for.loop.idx1
  %8 = load i16, i16* %src.addr, align 2
  %9 = load i64, i64* %dst.addr1, align 8
  %10 = zext i16 %8 to i64
  %11 = shl i64 %10, %6
  %12 = add i64 %6, 16
  %13 = shl i64 1, %12
  %14 = icmp uge i64 %12, 64
  %15 = select i1 %14, i64 0, i64 %13
  %16 = shl i64 1, %6
  %17 = sub i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = and i64 %9, %18
  %20 = or i64 %19, %11
  store i64 %20, i64* %dst.addr1, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* readonly "orig.arg.no"="0", [8 x i64]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [32 x i16]* readonly "orig.arg.no"="2", [8 x i64]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [32 x i16]* readonly "orig.arg.no"="4", [8 x i64]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i64]* align 512 %1, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i64]* align 512 %3, [32 x i16]* %2)
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i64]* align 512 %5, [32 x i16]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x i64]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [32 x i16]* %0, null
  %3 = icmp eq [8 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %5 = urem i64 %for.loop.idx1, 4
  %6 = mul i64 16, %5
  %7 = udiv i64 %for.loop.idx1, 4
  %src.addr1 = getelementptr [8 x i64], [8 x i64]* %1, i64 0, i64 %7
  %8 = load i64, i64* %src.addr1, align 8
  %9 = add i64 %6, 16
  %10 = shl i64 1, %9
  %11 = icmp uge i64 %9, 64
  %12 = select i1 %11, i64 0, i64 %10
  %13 = shl i64 1, %6
  %14 = sub i64 %12, %13
  %15 = and i64 %8, %14
  %16 = lshr i64 %15, %6
  %17 = trunc i64 %16 to i16
  store i16 %17, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* "orig.arg.no"="0", [8 x i64]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [32 x i16]* "orig.arg.no"="2", [8 x i64]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [32 x i16]* "orig.arg.no"="4", [8 x i64]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, [8 x i64]* align 512 %1)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %2, [8 x i64]* align 512 %3)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %4, [8 x i64]* align 512 %5)
  ret void
}

declare void @apatb_lab6_z1_hw([8 x i64]*, [8 x i64]*, [8 x i64]*)

define void @lab6_z1_hw_stub_wrapper([8 x i64]*, [8 x i64]*, [8 x i64]*) #5 {
entry:
  %3 = alloca [32 x i16]
  %4 = alloca [32 x i16]
  %5 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %3, [8 x i64]* %0, [32 x i16]* %4, [8 x i64]* %1, [32 x i16]* %5, [8 x i64]* %2)
  %6 = bitcast [32 x i16]* %3 to i16*
  %7 = bitcast [32 x i16]* %4 to i16*
  %8 = bitcast [32 x i16]* %5 to i16*
  call void @lab6_z1_hw_stub(i16* %6, i16* %7, i16* %8)
  call void @copy_in([32 x i16]* %3, [8 x i64]* %0, [32 x i16]* %4, [8 x i64]* %1, [32 x i16]* %5, [8 x i64]* %2)
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
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab6_z1/lab6_z1/sol3_3/.autopilot/db\5Clab6_z1.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab6_z1")
!18 = !DILocation(line: 4, column: 9, scope: !6)
