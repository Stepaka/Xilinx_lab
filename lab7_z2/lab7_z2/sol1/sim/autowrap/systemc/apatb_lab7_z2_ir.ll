; ModuleID = 'C:/Xilinx_trn/HLS2023/lab7_z2/lab7_z2/sol1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_lab7_z2_ir(double* %a, double* %b, double* %c) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [128 x double], align 512
  %b_copy = alloca [128 x double], align 512
  %c_copy = alloca [128 x double], align 512
  %0 = bitcast double* %a to [128 x double]*
  %1 = bitcast double* %b to [128 x double]*
  %2 = bitcast double* %c to [128 x double]*
  call fastcc void @copy_in([128 x double]* %0, [128 x double]* nonnull align 512 %a_copy, [128 x double]* %1, [128 x double]* nonnull align 512 %b_copy, [128 x double]* %2, [128 x double]* nonnull align 512 %c_copy)
  %3 = getelementptr inbounds [128 x double], [128 x double]* %a_copy, i32 0, i32 0
  %4 = getelementptr inbounds [128 x double], [128 x double]* %b_copy, i32 0, i32 0
  %5 = getelementptr inbounds [128 x double], [128 x double]* %c_copy, i32 0, i32 0
  call void @apatb_lab7_z2_hw(double* %3, double* %4, double* %5)
  call fastcc void @copy_out([128 x double]* %0, [128 x double]* nonnull align 512 %a_copy, [128 x double]* %1, [128 x double]* nonnull align 512 %b_copy, [128 x double]* %2, [128 x double]* nonnull align 512 %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([128 x double]* readonly, [128 x double]* noalias align 512, [128 x double]* readonly, [128 x double]* noalias align 512, [128 x double]* readonly, [128 x double]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* align 512 %1, [128 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* align 512 %3, [128 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* align 512 %5, [128 x double]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* noalias align 512, [128 x double]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x double]* %0, null
  %3 = icmp eq [128 x double]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x double], [128 x double]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [128 x double], [128 x double]* %1, i64 0, i64 %for.loop.idx1
  %5 = load double, double* %src.addr, align 8
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([128 x double]*, [128 x double]* noalias readonly align 512, [128 x double]*, [128 x double]* noalias readonly align 512, [128 x double]*, [128 x double]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* %0, [128 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* %2, [128 x double]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a128f64([128 x double]* %4, [128 x double]* align 512 %5)
  ret void
}

declare void @apatb_lab7_z2_hw(double*, double*, double*)

define void @lab7_z2_hw_stub_wrapper(double*, double*, double*) #4 {
entry:
  %3 = bitcast double* %0 to [128 x double]*
  %4 = bitcast double* %1 to [128 x double]*
  %5 = bitcast double* %2 to [128 x double]*
  call void @copy_out([128 x double]* null, [128 x double]* %3, [128 x double]* null, [128 x double]* %4, [128 x double]* null, [128 x double]* %5)
  %6 = bitcast [128 x double]* %3 to double*
  %7 = bitcast [128 x double]* %4 to double*
  %8 = bitcast [128 x double]* %5 to double*
  call void @lab7_z2_hw_stub(double* %6, double* %7, double* %8)
  call void @copy_in([128 x double]* null, [128 x double]* %3, [128 x double]* null, [128 x double]* %4, [128 x double]* null, [128 x double]* %5)
  ret void
}

declare void @lab7_z2_hw_stub(double*, double*, double*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
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
