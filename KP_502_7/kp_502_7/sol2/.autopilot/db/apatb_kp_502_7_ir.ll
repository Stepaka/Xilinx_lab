; ModuleID = 'G:/Xilinx_lab/KP_502_7/kp_502_7/sol2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_kp_502_7_ir(double* %A, double* %B, double* %C, double* %X1, double* %X2, double* %D) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [8 x double], align 512
  %B_copy = alloca [8 x double], align 512
  %C_copy = alloca [8 x double], align 512
  %X1_copy = alloca [8 x double], align 512
  %X2_copy = alloca [8 x double], align 512
  %D_copy = alloca [8 x double], align 512
  %0 = bitcast double* %A to [8 x double]*
  %1 = bitcast double* %B to [8 x double]*
  %2 = bitcast double* %C to [8 x double]*
  %3 = bitcast double* %X1 to [8 x double]*
  %4 = bitcast double* %X2 to [8 x double]*
  %5 = bitcast double* %D to [8 x double]*
  call fastcc void @copy_in([8 x double]* %0, [8 x double]* nonnull align 512 %A_copy, [8 x double]* %1, [8 x double]* nonnull align 512 %B_copy, [8 x double]* %2, [8 x double]* nonnull align 512 %C_copy, [8 x double]* %3, [8 x double]* nonnull align 512 %X1_copy, [8 x double]* %4, [8 x double]* nonnull align 512 %X2_copy, [8 x double]* %5, [8 x double]* nonnull align 512 %D_copy)
  %6 = getelementptr inbounds [8 x double], [8 x double]* %A_copy, i32 0, i32 0
  %7 = getelementptr inbounds [8 x double], [8 x double]* %B_copy, i32 0, i32 0
  %8 = getelementptr inbounds [8 x double], [8 x double]* %C_copy, i32 0, i32 0
  %9 = getelementptr inbounds [8 x double], [8 x double]* %X1_copy, i32 0, i32 0
  %10 = getelementptr inbounds [8 x double], [8 x double]* %X2_copy, i32 0, i32 0
  %11 = getelementptr inbounds [8 x double], [8 x double]* %D_copy, i32 0, i32 0
  call void @apatb_kp_502_7_hw(double* %6, double* %7, double* %8, double* %9, double* %10, double* %11)
  call fastcc void @copy_out([8 x double]* %0, [8 x double]* nonnull align 512 %A_copy, [8 x double]* %1, [8 x double]* nonnull align 512 %B_copy, [8 x double]* %2, [8 x double]* nonnull align 512 %C_copy, [8 x double]* %3, [8 x double]* nonnull align 512 %X1_copy, [8 x double]* %4, [8 x double]* nonnull align 512 %X2_copy, [8 x double]* %5, [8 x double]* nonnull align 512 %D_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8 x double]* readonly, [8 x double]* noalias align 512, [8 x double]* readonly, [8 x double]* noalias align 512, [8 x double]* readonly, [8 x double]* noalias align 512, [8 x double]* readonly, [8 x double]* noalias align 512, [8 x double]* readonly, [8 x double]* noalias align 512, [8 x double]* readonly, [8 x double]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %1, [8 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %3, [8 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %5, [8 x double]* %4)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %7, [8 x double]* %6)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %9, [8 x double]* %8)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* align 512 %11, [8 x double]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* noalias align 512, [8 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x double]* %0, null
  %3 = icmp eq [8 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x double], [8 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [8 x double], [8 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8 x double]*, [8 x double]* noalias readonly align 512, [8 x double]*, [8 x double]* noalias readonly align 512, [8 x double]*, [8 x double]* noalias readonly align 512, [8 x double]*, [8 x double]* noalias readonly align 512, [8 x double]*, [8 x double]* noalias readonly align 512, [8 x double]*, [8 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %0, [8 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %2, [8 x double]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %4, [8 x double]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %6, [8 x double]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %8, [8 x double]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a8f64([8 x double]* %10, [8 x double]* align 512 %11)
  ret void
}

declare void @apatb_kp_502_7_hw(double*, double*, double*, double*, double*, double*)

define void @kp_502_7_hw_stub_wrapper(double*, double*, double*, double*, double*, double*) #4 {
entry:
  %6 = bitcast double* %0 to [8 x double]*
  %7 = bitcast double* %1 to [8 x double]*
  %8 = bitcast double* %2 to [8 x double]*
  %9 = bitcast double* %3 to [8 x double]*
  %10 = bitcast double* %4 to [8 x double]*
  %11 = bitcast double* %5 to [8 x double]*
  call void @copy_out([8 x double]* null, [8 x double]* %6, [8 x double]* null, [8 x double]* %7, [8 x double]* null, [8 x double]* %8, [8 x double]* null, [8 x double]* %9, [8 x double]* null, [8 x double]* %10, [8 x double]* null, [8 x double]* %11)
  %12 = bitcast [8 x double]* %6 to double*
  %13 = bitcast [8 x double]* %7 to double*
  %14 = bitcast [8 x double]* %8 to double*
  %15 = bitcast [8 x double]* %9 to double*
  %16 = bitcast [8 x double]* %10 to double*
  %17 = bitcast [8 x double]* %11 to double*
  call void @kp_502_7_hw_stub(double* %12, double* %13, double* %14, double* %15, double* %16, double* %17)
  call void @copy_in([8 x double]* null, [8 x double]* %6, [8 x double]* null, [8 x double]* %7, [8 x double]* null, [8 x double]* %8, [8 x double]* null, [8 x double]* %9, [8 x double]* null, [8 x double]* %10, [8 x double]* null, [8 x double]* %11)
  ret void
}

declare void @kp_502_7_hw_stub(double*, double*, double*, double*, double*, double*)

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
