; ModuleID = 'C:/Xilinx_trn/HLS2023/lab6_z1/lab6_z1/sol4_1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_lab6_z1_ir(i16* %a, i16* %b, i16* %c) local_unnamed_addr #0 {
entry:
  %a_copy1 = alloca i512, align 512
  %b_copy2 = alloca i512, align 512
  %c_copy3 = alloca i512, align 512
  %0 = bitcast i16* %a to [32 x i16]*
  %1 = bitcast i16* %b to [32 x i16]*
  %2 = bitcast i16* %c to [32 x i16]*
  call void @copy_in([32 x i16]* %0, i512* nonnull align 512 %a_copy1, [32 x i16]* %1, i512* nonnull align 512 %b_copy2, [32 x i16]* %2, i512* nonnull align 512 %c_copy3)
  call void @apatb_lab6_z1_hw(i512* %a_copy1, i512* %b_copy2, i512* %c_copy3)
  call void @copy_out([32 x i16]* %0, i512* nonnull align 512 %a_copy1, [32 x i16]* %1, i512* nonnull align 512 %b_copy2, [32 x i16]* %2, i512* nonnull align 512 %c_copy3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4(i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq [32 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted = load i512, i512* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %5 = phi i512 [ %.promoted, %copy ], [ %21, %for.loop ]
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %6 = mul nuw nsw i64 16, %for.loop.idx1
  %src.addr = getelementptr [32 x i16], [32 x i16]* %1, i64 0, i64 %for.loop.idx1
  %7 = load i16, i16* %src.addr, align 2
  %8 = add i64 %6, 15
  %9 = zext i64 %6 to i512
  %10 = zext i16 %7 to i512
  %11 = shl i512 %10, %9
  %12 = zext i64 %8 to i512
  %13 = add nuw nsw i512 %12, 1
  %14 = shl i512 1, %13
  %15 = icmp uge i512 %13, 512
  %16 = select i1 %15, i512 0, i512 %14
  %17 = shl i512 1, %9
  %18 = sub i512 %16, %17
  %19 = xor i512 %18, -1
  %20 = and i512 %5, %19
  %21 = or i512 %20, %11
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop
  store i512 %21, i512* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* readonly "orig.arg.no"="0", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [32 x i16]* readonly "orig.arg.no"="2", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [32 x i16]* readonly "orig.arg.no"="4", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #2 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4(i512* align 512 %1, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.3.4(i512* align 512 %3, [32 x i16]* %2)
  call void @onebyonecpy_hls.p0a32i16.3.4(i512* align 512 %5, [32 x i16]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i512* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq [32 x i16]* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i512, i512* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = mul nuw nsw i64 16, %for.loop.idx1
  %7 = add i64 %6, 15
  %8 = zext i64 %6 to i512
  %9 = zext i64 %7 to i512
  %10 = add nuw nsw i512 %9, 1
  %11 = shl i512 1, %10
  %12 = icmp uge i512 %10, 512
  %13 = select i1 %12, i512 0, i512 %11
  %14 = shl i512 1, %8
  %15 = sub i512 %13, %14
  %16 = and i512 %5, %15
  %17 = lshr i512 %16, %8
  %18 = trunc i512 %17 to i16
  store i16 %18, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* "orig.arg.no"="0", i512* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [32 x i16]* "orig.arg.no"="2", i512* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [32 x i16]* "orig.arg.no"="4", i512* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, i512* align 512 %1)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %2, i512* align 512 %3)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %4, i512* align 512 %5)
  ret void
}

declare void @apatb_lab6_z1_hw(i512*, i512*, i512*)

define void @lab6_z1_hw_stub_wrapper(i512*, i512*, i512*) #4 {
entry:
  %3 = alloca [32 x i16]
  %4 = alloca [32 x i16]
  %5 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %3, i512* %0, [32 x i16]* %4, i512* %1, [32 x i16]* %5, i512* %2)
  %6 = bitcast [32 x i16]* %3 to i16*
  %7 = bitcast [32 x i16]* %4 to i16*
  %8 = bitcast [32 x i16]* %5 to i16*
  call void @lab6_z1_hw_stub(i16* %6, i16* %7, i16* %8)
  call void @copy_in([32 x i16]* %3, i512* %0, [32 x i16]* %4, i512* %1, [32 x i16]* %5, i512* %2)
  ret void
}

declare void @lab6_z1_hw_stub(i16*, i16*, i16*)

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
