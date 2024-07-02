; ModuleID = 'C:/Xilinx_trn/HLS2023/KP_502_15/kp_502_15/sol1_2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_kp_502_15_ir(i32* %r, i32* %a, i32* %b, i32* %c, i32* %x) local_unnamed_addr #0 {
entry:
  %r_copy = alloca [8 x i32], align 512
  %a_copy = alloca [8 x i32], align 512
  %b_copy = alloca [8 x i32], align 512
  %c_copy = alloca [8 x i32], align 512
  %x_copy = alloca [8 x i32], align 512
  %0 = bitcast i32* %r to [8 x i32]*
  %1 = bitcast i32* %a to [8 x i32]*
  %2 = bitcast i32* %b to [8 x i32]*
  %3 = bitcast i32* %c to [8 x i32]*
  %4 = bitcast i32* %x to [8 x i32]*
  call fastcc void @copy_in([8 x i32]* %0, [8 x i32]* nonnull align 512 %r_copy, [8 x i32]* %1, [8 x i32]* nonnull align 512 %a_copy, [8 x i32]* %2, [8 x i32]* nonnull align 512 %b_copy, [8 x i32]* %3, [8 x i32]* nonnull align 512 %c_copy, [8 x i32]* %4, [8 x i32]* nonnull align 512 %x_copy)
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %r_copy, i32 0, i32 0
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %a_copy, i32 0, i32 0
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %b_copy, i32 0, i32 0
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %c_copy, i32 0, i32 0
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %x_copy, i32 0, i32 0
  call void @apatb_kp_502_15_hw(i32* %5, i32* %6, i32* %7, i32* %8, i32* %9)
  call fastcc void @copy_out([8 x i32]* %0, [8 x i32]* nonnull align 512 %r_copy, [8 x i32]* %1, [8 x i32]* nonnull align 512 %a_copy, [8 x i32]* %2, [8 x i32]* nonnull align 512 %b_copy, [8 x i32]* %3, [8 x i32]* nonnull align 512 %c_copy, [8 x i32]* %4, [8 x i32]* nonnull align 512 %x_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8 x i32]* readonly, [8 x i32]* noalias align 512, [8 x i32]* readonly, [8 x i32]* noalias align 512, [8 x i32]* readonly, [8 x i32]* noalias align 512, [8 x i32]* readonly, [8 x i32]* noalias align 512, [8 x i32]* readonly, [8 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %1, [8 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %3, [8 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %5, [8 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %7, [8 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %9, [8 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* noalias align 512, [8 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x i32]* %0, null
  %3 = icmp eq [8 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [8 x i32], [8 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8 x i32]*, [8 x i32]* noalias readonly align 512, [8 x i32]*, [8 x i32]* noalias readonly align 512, [8 x i32]*, [8 x i32]* noalias readonly align 512, [8 x i32]*, [8 x i32]* noalias readonly align 512, [8 x i32]*, [8 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %0, [8 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %2, [8 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %4, [8 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %6, [8 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %8, [8 x i32]* align 512 %9)
  ret void
}

declare void @apatb_kp_502_15_hw(i32*, i32*, i32*, i32*, i32*)

define void @kp_502_15_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*) #4 {
entry:
  %5 = bitcast i32* %0 to [8 x i32]*
  %6 = bitcast i32* %1 to [8 x i32]*
  %7 = bitcast i32* %2 to [8 x i32]*
  %8 = bitcast i32* %3 to [8 x i32]*
  %9 = bitcast i32* %4 to [8 x i32]*
  call void @copy_out([8 x i32]* null, [8 x i32]* %5, [8 x i32]* null, [8 x i32]* %6, [8 x i32]* null, [8 x i32]* %7, [8 x i32]* null, [8 x i32]* %8, [8 x i32]* null, [8 x i32]* %9)
  %10 = bitcast [8 x i32]* %5 to i32*
  %11 = bitcast [8 x i32]* %6 to i32*
  %12 = bitcast [8 x i32]* %7 to i32*
  %13 = bitcast [8 x i32]* %8 to i32*
  %14 = bitcast [8 x i32]* %9 to i32*
  call void @kp_502_15_hw_stub(i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  call void @copy_in([8 x i32]* null, [8 x i32]* %5, [8 x i32]* null, [8 x i32]* %6, [8 x i32]* null, [8 x i32]* %7, [8 x i32]* null, [8 x i32]* %8, [8 x i32]* null, [8 x i32]* %9)
  ret void
}

declare void @kp_502_15_hw_stub(i32*, i32*, i32*, i32*, i32*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
