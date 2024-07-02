; ModuleID = 'G:/Xilinx_lab/lab7_z4/lab7_z4/sol1_1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<256>" = type { %"struct.ap_int_base<256, true>" }
%"struct.ap_int_base<256, true>" = type { %"struct.ssdm_int<256, true>" }
%"struct.ssdm_int<256, true>" = type { i256 }

; Function Attrs: noinline
define void @apatb_lab7_z4_ir(%"struct.ap_int<256>"* %a, %"struct.ap_int<256>"* %b, %"struct.ap_int<256>"* %c) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 4096)
  %a_copy = bitcast i8* %malloccall to [128 x i256]*
  %malloccall1 = call i8* @malloc(i64 4096)
  %b_copy = bitcast i8* %malloccall1 to [128 x i256]*
  %malloccall2 = call i8* @malloc(i64 4096)
  %c_copy = bitcast i8* %malloccall2 to [128 x i256]*
  %0 = bitcast %"struct.ap_int<256>"* %a to [128 x %"struct.ap_int<256>"]*
  %1 = bitcast %"struct.ap_int<256>"* %b to [128 x %"struct.ap_int<256>"]*
  %2 = bitcast %"struct.ap_int<256>"* %c to [128 x %"struct.ap_int<256>"]*
  call fastcc void @copy_in([128 x %"struct.ap_int<256>"]* %0, [128 x i256]* %a_copy, [128 x %"struct.ap_int<256>"]* %1, [128 x i256]* %b_copy, [128 x %"struct.ap_int<256>"]* %2, [128 x i256]* %c_copy)
  %3 = getelementptr [128 x i256], [128 x i256]* %a_copy, i32 0, i32 0
  %4 = getelementptr [128 x i256], [128 x i256]* %b_copy, i32 0, i32 0
  %5 = getelementptr [128 x i256], [128 x i256]* %c_copy, i32 0, i32 0
  call void @apatb_lab7_z4_hw(i256* %3, i256* %4, i256* %5)
  call fastcc void @copy_out([128 x %"struct.ap_int<256>"]* %0, [128 x i256]* %a_copy, [128 x %"struct.ap_int<256>"]* %1, [128 x i256]* %b_copy, [128 x %"struct.ap_int<256>"]* %2, [128 x i256]* %c_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([128 x %"struct.ap_int<256>"]* readonly, [128 x i256]* noalias, [128 x %"struct.ap_int<256>"]* readonly, [128 x i256]* noalias, [128 x %"struct.ap_int<256>"]* readonly, [128 x i256]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>"([128 x i256]* %1, [128 x %"struct.ap_int<256>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>"([128 x i256]* %3, [128 x %"struct.ap_int<256>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>"([128 x i256]* %5, [128 x %"struct.ap_int<256>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([128 x %"struct.ap_int<256>"]*, [128 x i256]* noalias readonly, [128 x %"struct.ap_int<256>"]*, [128 x i256]* noalias readonly, [128 x %"struct.ap_int<256>"]*, [128 x i256]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>.5"([128 x %"struct.ap_int<256>"]* %0, [128 x i256]* %1)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>.5"([128 x %"struct.ap_int<256>"]* %2, [128 x i256]* %3)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>.5"([128 x %"struct.ap_int<256>"]* %4, [128 x i256]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>.5"([128 x %"struct.ap_int<256>"]* noalias, [128 x i256]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [128 x %"struct.ap_int<256>"]* %0, null
  %3 = icmp eq [128 x i256]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [128 x i256], [128 x i256]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_int<256>"], [128 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i256, i256* %5, align 32
  store i256 %6, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<256>"([128 x i256]* noalias, [128 x %"struct.ap_int<256>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [128 x i256]* %0, null
  %3 = icmp eq [128 x %"struct.ap_int<256>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_int<256>"], [128 x %"struct.ap_int<256>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x i256], [128 x i256]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %6, i256* %5, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_lab7_z4_hw(i256*, i256*, i256*)

define void @lab7_z4_hw_stub_wrapper(i256*, i256*, i256*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %3 = bitcast i8* %malloccall to [128 x %"struct.ap_int<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %4 = bitcast i8* %malloccall1 to [128 x %"struct.ap_int<256>"]*
  %malloccall2 = tail call i8* @malloc(i64 4096)
  %5 = bitcast i8* %malloccall2 to [128 x %"struct.ap_int<256>"]*
  %6 = bitcast i256* %0 to [128 x i256]*
  %7 = bitcast i256* %1 to [128 x i256]*
  %8 = bitcast i256* %2 to [128 x i256]*
  call void @copy_out([128 x %"struct.ap_int<256>"]* %3, [128 x i256]* %6, [128 x %"struct.ap_int<256>"]* %4, [128 x i256]* %7, [128 x %"struct.ap_int<256>"]* %5, [128 x i256]* %8)
  %9 = bitcast [128 x %"struct.ap_int<256>"]* %3 to %"struct.ap_int<256>"*
  %10 = bitcast [128 x %"struct.ap_int<256>"]* %4 to %"struct.ap_int<256>"*
  %11 = bitcast [128 x %"struct.ap_int<256>"]* %5 to %"struct.ap_int<256>"*
  call void @lab7_z4_hw_stub(%"struct.ap_int<256>"* %9, %"struct.ap_int<256>"* %10, %"struct.ap_int<256>"* %11)
  call void @copy_in([128 x %"struct.ap_int<256>"]* %3, [128 x i256]* %6, [128 x %"struct.ap_int<256>"]* %4, [128 x i256]* %7, [128 x %"struct.ap_int<256>"]* %5, [128 x i256]* %8)
  ret void
}

declare void @lab7_z4_hw_stub(%"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
