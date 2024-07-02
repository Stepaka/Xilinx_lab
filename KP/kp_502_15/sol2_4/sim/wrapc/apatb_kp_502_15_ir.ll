; ModuleID = 'C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_15_ir(i32* %r, i32* %a, i32* %b, i32* %c, i32* %x) local_unnamed_addr #1 {
entry:
  %r_copy1 = alloca [2 x i128], align 512
  %a_copy2 = alloca [2 x i128], align 512
  %b_copy3 = alloca [2 x i128], align 512
  %c_copy4 = alloca [2 x i128], align 512
  %x_copy5 = alloca [2 x i128], align 512
  %0 = bitcast i32* %r to [8 x i32]*
  %1 = bitcast i32* %a to [8 x i32]*
  %2 = bitcast i32* %b to [8 x i32]*
  %3 = bitcast i32* %c to [8 x i32]*
  %4 = bitcast i32* %x to [8 x i32]*
  call void @copy_in([8 x i32]* %0, [2 x i128]* nonnull align 512 %r_copy1, [8 x i32]* %1, [2 x i128]* nonnull align 512 %a_copy2, [8 x i32]* %2, [2 x i128]* nonnull align 512 %b_copy3, [8 x i32]* %3, [2 x i128]* nonnull align 512 %c_copy4, [8 x i32]* %4, [2 x i128]* nonnull align 512 %x_copy5)
  %r_copy.gep6 = getelementptr [2 x i128], [2 x i128]* %r_copy1, i64 0, i32 0
  %a_copy.gep7 = getelementptr [2 x i128], [2 x i128]* %a_copy2, i64 0, i32 0
  %b_copy.gep8 = getelementptr [2 x i128], [2 x i128]* %b_copy3, i64 0, i32 0
  %c_copy.gep9 = getelementptr [2 x i128], [2 x i128]* %c_copy4, i64 0, i32 0
  %x_copy.gep10 = getelementptr [2 x i128], [2 x i128]* %x_copy5, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i128* %r_copy.gep6, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i128* %a_copy.gep7, i32 0, i32 1, i32 0) ], !dbg !18
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i128* %b_copy.gep8, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i128* %c_copy.gep9, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i128* %x_copy.gep10, i32 0, i32 1, i32 0) ], !dbg !5
  call void @apatb_kp_502_15_hw([2 x i128]* %r_copy1, [2 x i128]* %a_copy2, [2 x i128]* %b_copy3, [2 x i128]* %c_copy4, [2 x i128]* %x_copy5)
  call void @copy_out([8 x i32]* %0, [2 x i128]* nonnull align 512 %r_copy1, [8 x i32]* %1, [2 x i128]* nonnull align 512 %a_copy2, [8 x i32]* %2, [2 x i128]* nonnull align 512 %b_copy3, [8 x i32]* %3, [2 x i128]* nonnull align 512 %c_copy4, [8 x i32]* %4, [2 x i128]* nonnull align 512 %x_copy5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [2 x i128]* %0, null
  %3 = icmp eq [8 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = urem i64 %for.loop.idx1, 4
  %6 = mul i64 32, %5
  %7 = udiv i64 %for.loop.idx1, 4
  %dst.addr1 = getelementptr [2 x i128], [2 x i128]* %0, i64 0, i64 %7
  %src.addr = getelementptr [8 x i32], [8 x i32]* %1, i64 0, i64 %for.loop.idx1
  %8 = load i32, i32* %src.addr, align 4
  %9 = add i64 %6, 31
  %10 = load i128, i128* %dst.addr1, align 16
  %11 = zext i64 %6 to i128
  %12 = zext i32 %8 to i128
  %13 = shl i128 %12, %11
  %14 = zext i64 %9 to i128
  %15 = add nuw nsw i128 %14, 1
  %16 = shl i128 1, %15
  %17 = icmp uge i128 %15, 128
  %18 = select i1 %17, i128 0, i128 %16
  %19 = shl i128 1, %11
  %20 = sub i128 %18, %19
  %21 = xor i128 %20, -1
  %22 = and i128 %10, %21
  %23 = or i128 %22, %13
  store i128 %23, i128* %dst.addr1, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x i32]* readonly "orig.arg.no"="0", [2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [8 x i32]* readonly "orig.arg.no"="2", [2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [8 x i32]* readonly "orig.arg.no"="4", [2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [8 x i32]* readonly "orig.arg.no"="6", [2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7", [8 x i32]* readonly "orig.arg.no"="8", [2 x i128]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9") #3 {
entry:
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* align 512 %1, [8 x i32]* %0)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* align 512 %3, [8 x i32]* %2)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* align 512 %5, [8 x i32]* %4)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* align 512 %7, [8 x i32]* %6)
  call void @onebyonecpy_hls.p0a8i32.3.4([2 x i128]* align 512 %9, [8 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [8 x i32]* %0, null
  %3 = icmp eq [2 x i128]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %5 = urem i64 %for.loop.idx1, 4
  %6 = mul i64 32, %5
  %7 = udiv i64 %for.loop.idx1, 4
  %src.addr1 = getelementptr [2 x i128], [2 x i128]* %1, i64 0, i64 %7
  %8 = load i128, i128* %src.addr1, align 16
  %9 = add i64 %6, 31
  %10 = zext i64 %6 to i128
  %11 = zext i64 %9 to i128
  %12 = add nuw nsw i128 %11, 1
  %13 = shl i128 1, %12
  %14 = icmp uge i128 %12, 128
  %15 = select i1 %14, i128 0, i128 %13
  %16 = shl i128 1, %10
  %17 = sub i128 %15, %16
  %18 = and i128 %8, %17
  %19 = lshr i128 %18, %10
  %20 = trunc i128 %19 to i32
  store i32 %20, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x i32]* "orig.arg.no"="0", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [8 x i32]* "orig.arg.no"="2", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [8 x i32]* "orig.arg.no"="4", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [8 x i32]* "orig.arg.no"="6", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7", [8 x i32]* "orig.arg.no"="8", [2 x i128]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9") #4 {
entry:
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %0, [2 x i128]* align 512 %1)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %2, [2 x i128]* align 512 %3)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %4, [2 x i128]* align 512 %5)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %6, [2 x i128]* align 512 %7)
  call void @onebyonecpy_hls.p0a8i32.9.10([8 x i32]* %8, [2 x i128]* align 512 %9)
  ret void
}

declare void @apatb_kp_502_15_hw([2 x i128]*, [2 x i128]*, [2 x i128]*, [2 x i128]*, [2 x i128]*)

define void @kp_502_15_hw_stub_wrapper([2 x i128]*, [2 x i128]*, [2 x i128]*, [2 x i128]*, [2 x i128]*) #5 {
entry:
  %5 = alloca [8 x i32]
  %6 = alloca [8 x i32]
  %7 = alloca [8 x i32]
  %8 = alloca [8 x i32]
  %9 = alloca [8 x i32]
  call void @copy_out([8 x i32]* %5, [2 x i128]* %0, [8 x i32]* %6, [2 x i128]* %1, [8 x i32]* %7, [2 x i128]* %2, [8 x i32]* %8, [2 x i128]* %3, [8 x i32]* %9, [2 x i128]* %4)
  %10 = bitcast [8 x i32]* %5 to i32*
  %11 = bitcast [8 x i32]* %6 to i32*
  %12 = bitcast [8 x i32]* %7 to i32*
  %13 = bitcast [8 x i32]* %8 to i32*
  %14 = bitcast [8 x i32]* %9 to i32*
  call void @kp_502_15_hw_stub(i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  call void @copy_in([8 x i32]* %5, [2 x i128]* %0, [8 x i32]* %6, [2 x i128]* %1, [8 x i32]* %7, [2 x i128]* %2, [8 x i32]* %8, [2 x i128]* %3, [8 x i32]* %9, [2 x i128]* %4)
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
!17 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol2_4/.autopilot/db\5Ckp_502_15.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5CKP_502_15")
!18 = !DILocation(line: 5, column: 118, scope: !6)
