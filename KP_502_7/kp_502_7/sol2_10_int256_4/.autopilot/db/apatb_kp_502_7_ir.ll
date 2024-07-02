; ModuleID = 'G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_10_int256/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<256>" = type { %"struct.ap_int_base<256, true>" }
%"struct.ap_int_base<256, true>" = type { %"struct.ssdm_int<256, true>" }
%"struct.ssdm_int<256, true>" = type { i256 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_7_ir(%"struct.ap_int<256>"* %A, %"struct.ap_int<256>"* %B, %"struct.ap_int<256>"* %C, %"struct.ap_int<256>"* %X1, %"struct.ap_int<256>"* %X2, %"struct.ap_int<256>"* %D) local_unnamed_addr #0 {
entry:
  %A_copy7 = alloca i1024, align 512
  %B_copy8 = alloca i1024, align 512
  %C_copy9 = alloca i1024, align 512
  %X1_copy10 = alloca i1024, align 512
  %X2_copy11 = alloca i1024, align 512
  %D_copy12 = alloca i1024, align 512
  %0 = bitcast %"struct.ap_int<256>"* %A to [4 x %"struct.ap_int<256>"]*
  %1 = bitcast %"struct.ap_int<256>"* %B to [4 x %"struct.ap_int<256>"]*
  %2 = bitcast %"struct.ap_int<256>"* %C to [4 x %"struct.ap_int<256>"]*
  %3 = bitcast %"struct.ap_int<256>"* %X1 to [4 x %"struct.ap_int<256>"]*
  %4 = bitcast %"struct.ap_int<256>"* %X2 to [4 x %"struct.ap_int<256>"]*
  %5 = bitcast %"struct.ap_int<256>"* %D to [4 x %"struct.ap_int<256>"]*
  call void @copy_in([4 x %"struct.ap_int<256>"]* %0, i1024* nonnull align 512 %A_copy7, [4 x %"struct.ap_int<256>"]* %1, i1024* nonnull align 512 %B_copy8, [4 x %"struct.ap_int<256>"]* %2, i1024* nonnull align 512 %C_copy9, [4 x %"struct.ap_int<256>"]* %3, i1024* nonnull align 512 %X1_copy10, [4 x %"struct.ap_int<256>"]* %4, i1024* nonnull align 512 %X2_copy11, [4 x %"struct.ap_int<256>"]* %5, i1024* nonnull align 512 %D_copy12)
  call void @apatb_kp_502_7_hw(i1024* %A_copy7, i1024* %B_copy8, i1024* %C_copy9, i1024* %X1_copy10, i1024* %X2_copy11, i1024* %D_copy12)
  call void @copy_out([4 x %"struct.ap_int<256>"]* %0, i1024* nonnull align 512 %A_copy7, [4 x %"struct.ap_int<256>"]* %1, i1024* nonnull align 512 %B_copy8, [4 x %"struct.ap_int<256>"]* %2, i1024* nonnull align 512 %C_copy9, [4 x %"struct.ap_int<256>"]* %3, i1024* nonnull align 512 %X1_copy10, [4 x %"struct.ap_int<256>"]* %4, i1024* nonnull align 512 %X2_copy11, [4 x %"struct.ap_int<256>"]* %5, i1024* nonnull align 512 %D_copy12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [4 x %"struct.ap_int<256>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq i1024* %0, null
  %3 = icmp eq [4 x %"struct.ap_int<256>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted = load i1024, i1024* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %5 = phi i1024 [ %.promoted, %copy ], [ %21, %for.loop ]
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_int<256>"], [4 x %"struct.ap_int<256>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 256, %for.loop.idx7
  %7 = load i256, i256* %src.addr.0.0.05, align 32
  %8 = add i64 %6, 255
  %9 = zext i64 %6 to i1024
  %10 = zext i256 %7 to i1024
  %11 = shl i1024 %10, %9
  %12 = zext i64 %8 to i1024
  %13 = add nuw nsw i1024 %12, 1
  %14 = shl i1024 1, %13
  %15 = icmp uge i1024 %13, 1024
  %16 = select i1 %15, i1024 0, i1024 %14
  %17 = shl i1024 1, %9
  %18 = sub i1024 %16, %17
  %19 = xor i1024 %18, -1
  %20 = and i1024 %5, %19
  %21 = or i1024 %20, %11
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop
  store i1024 %21, i1024* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="0", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="2", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="4", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="6", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7", [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="8", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9", [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="10", i1024* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11") #2 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %1, [4 x %"struct.ap_int<256>"]* %0)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %3, [4 x %"struct.ap_int<256>"]* %2)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %5, [4 x %"struct.ap_int<256>"]* %4)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %7, [4 x %"struct.ap_int<256>"]* %6)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %9, [4 x %"struct.ap_int<256>"]* %8)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.28"(i1024* align 512 %11, [4 x %"struct.ap_int<256>"]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq [4 x %"struct.ap_int<256>"]* %0, null
  %3 = icmp eq i1024* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i1024, i1024* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %6 = mul nuw nsw i64 256, %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_int<256>"], [4 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %7 = add i64 %6, 255
  %8 = zext i64 %6 to i1024
  %9 = zext i64 %7 to i1024
  %10 = add nuw nsw i1024 %9, 1
  %11 = shl i1024 1, %10
  %12 = icmp uge i1024 %10, 1024
  %13 = select i1 %12, i1024 0, i1024 %11
  %14 = shl i1024 1, %8
  %15 = sub i1024 %13, %14
  %16 = and i1024 %5, %15
  %17 = lshr i1024 %16, %8
  %18 = trunc i1024 %17 to i256
  store i256 %18, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4 x %"struct.ap_int<256>"]* "orig.arg.no"="0", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [4 x %"struct.ap_int<256>"]* "orig.arg.no"="2", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [4 x %"struct.ap_int<256>"]* "orig.arg.no"="4", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [4 x %"struct.ap_int<256>"]* "orig.arg.no"="6", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7", [4 x %"struct.ap_int<256>"]* "orig.arg.no"="8", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9", [4 x %"struct.ap_int<256>"]* "orig.arg.no"="10", i1024* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11") #3 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %0, i1024* align 512 %1)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %2, i1024* align 512 %3)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %4, i1024* align 512 %5)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %6, i1024* align 512 %7)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %8, i1024* align 512 %9)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>"([4 x %"struct.ap_int<256>"]* %10, i1024* align 512 %11)
  ret void
}

declare void @apatb_kp_502_7_hw(i1024*, i1024*, i1024*, i1024*, i1024*, i1024*)

define void @kp_502_7_hw_stub_wrapper(i1024*, i1024*, i1024*, i1024*, i1024*, i1024*) #4 {
entry:
  %6 = alloca [4 x %"struct.ap_int<256>"]
  %7 = alloca [4 x %"struct.ap_int<256>"]
  %8 = alloca [4 x %"struct.ap_int<256>"]
  %9 = alloca [4 x %"struct.ap_int<256>"]
  %10 = alloca [4 x %"struct.ap_int<256>"]
  %11 = alloca [4 x %"struct.ap_int<256>"]
  call void @copy_out([4 x %"struct.ap_int<256>"]* %6, i1024* %0, [4 x %"struct.ap_int<256>"]* %7, i1024* %1, [4 x %"struct.ap_int<256>"]* %8, i1024* %2, [4 x %"struct.ap_int<256>"]* %9, i1024* %3, [4 x %"struct.ap_int<256>"]* %10, i1024* %4, [4 x %"struct.ap_int<256>"]* %11, i1024* %5)
  %12 = bitcast [4 x %"struct.ap_int<256>"]* %6 to %"struct.ap_int<256>"*
  %13 = bitcast [4 x %"struct.ap_int<256>"]* %7 to %"struct.ap_int<256>"*
  %14 = bitcast [4 x %"struct.ap_int<256>"]* %8 to %"struct.ap_int<256>"*
  %15 = bitcast [4 x %"struct.ap_int<256>"]* %9 to %"struct.ap_int<256>"*
  %16 = bitcast [4 x %"struct.ap_int<256>"]* %10 to %"struct.ap_int<256>"*
  %17 = bitcast [4 x %"struct.ap_int<256>"]* %11 to %"struct.ap_int<256>"*
  call void @kp_502_7_hw_stub(%"struct.ap_int<256>"* %12, %"struct.ap_int<256>"* %13, %"struct.ap_int<256>"* %14, %"struct.ap_int<256>"* %15, %"struct.ap_int<256>"* %16, %"struct.ap_int<256>"* %17)
  call void @copy_in([4 x %"struct.ap_int<256>"]* %6, i1024* %0, [4 x %"struct.ap_int<256>"]* %7, i1024* %1, [4 x %"struct.ap_int<256>"]* %8, i1024* %2, [4 x %"struct.ap_int<256>"]* %9, i1024* %3, [4 x %"struct.ap_int<256>"]* %10, i1024* %4, [4 x %"struct.ap_int<256>"]* %11, i1024* %5)
  ret void
}

declare void @kp_502_7_hw_stub(%"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
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
