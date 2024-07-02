; ModuleID = 'G:/Xilinx_lab/KP_502_7_v3/kp_502_7/sol3_5_int256_4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<256>" = type { %"struct.ap_int_base<256, true>" }
%"struct.ap_int_base<256, true>" = type { %"struct.ssdm_int<256, true>" }
%"struct.ssdm_int<256, true>" = type { i256 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_7_ir(%"struct.ap_int<256>"* %A, %"struct.ap_int<256>"* %B, %"struct.ap_int<256>"* %C, %"struct.ap_int<256>"* %X1, %"struct.ap_int<256>"* %X2, %"struct.ap_int<256>"* %D) local_unnamed_addr #0 {
entry:
  %A_copy_0 = alloca i256, align 512
  %A_copy_1 = alloca i256, align 512
  %A_copy_2 = alloca i256, align 512
  %A_copy_3 = alloca i256, align 512
  %B_copy_0 = alloca i256, align 512
  %B_copy_1 = alloca i256, align 512
  %B_copy_2 = alloca i256, align 512
  %B_copy_3 = alloca i256, align 512
  %C_copy_0 = alloca i256, align 512
  %C_copy_1 = alloca i256, align 512
  %C_copy_2 = alloca i256, align 512
  %C_copy_3 = alloca i256, align 512
  %X1_copy_0 = alloca i256, align 512
  %X1_copy_1 = alloca i256, align 512
  %X1_copy_2 = alloca i256, align 512
  %X1_copy_3 = alloca i256, align 512
  %X2_copy_0 = alloca i256, align 512
  %X2_copy_1 = alloca i256, align 512
  %X2_copy_2 = alloca i256, align 512
  %X2_copy_3 = alloca i256, align 512
  %D_copy_0 = alloca i256, align 512
  %D_copy_1 = alloca i256, align 512
  %D_copy_2 = alloca i256, align 512
  %D_copy_3 = alloca i256, align 512
  %0 = bitcast %"struct.ap_int<256>"* %A to [4 x %"struct.ap_int<256>"]*
  %1 = bitcast %"struct.ap_int<256>"* %B to [4 x %"struct.ap_int<256>"]*
  %2 = bitcast %"struct.ap_int<256>"* %C to [4 x %"struct.ap_int<256>"]*
  %3 = bitcast %"struct.ap_int<256>"* %X1 to [4 x %"struct.ap_int<256>"]*
  %4 = bitcast %"struct.ap_int<256>"* %X2 to [4 x %"struct.ap_int<256>"]*
  %5 = bitcast %"struct.ap_int<256>"* %D to [4 x %"struct.ap_int<256>"]*
  call void @copy_in([4 x %"struct.ap_int<256>"]* %0, i256* nonnull align 512 %A_copy_0, i256* nonnull align 512 %A_copy_1, i256* nonnull align 512 %A_copy_2, i256* nonnull align 512 %A_copy_3, [4 x %"struct.ap_int<256>"]* %1, i256* nonnull align 512 %B_copy_0, i256* nonnull align 512 %B_copy_1, i256* nonnull align 512 %B_copy_2, i256* nonnull align 512 %B_copy_3, [4 x %"struct.ap_int<256>"]* %2, i256* nonnull align 512 %C_copy_0, i256* nonnull align 512 %C_copy_1, i256* nonnull align 512 %C_copy_2, i256* nonnull align 512 %C_copy_3, [4 x %"struct.ap_int<256>"]* %3, i256* nonnull align 512 %X1_copy_0, i256* nonnull align 512 %X1_copy_1, i256* nonnull align 512 %X1_copy_2, i256* nonnull align 512 %X1_copy_3, [4 x %"struct.ap_int<256>"]* %4, i256* nonnull align 512 %X2_copy_0, i256* nonnull align 512 %X2_copy_1, i256* nonnull align 512 %X2_copy_2, i256* nonnull align 512 %X2_copy_3, [4 x %"struct.ap_int<256>"]* %5, i256* nonnull align 512 %D_copy_0, i256* nonnull align 512 %D_copy_1, i256* nonnull align 512 %D_copy_2, i256* nonnull align 512 %D_copy_3)
  call void @apatb_kp_502_7_hw(i256* %A_copy_0, i256* %A_copy_1, i256* %A_copy_2, i256* %A_copy_3, i256* %B_copy_0, i256* %B_copy_1, i256* %B_copy_2, i256* %B_copy_3, i256* %C_copy_0, i256* %C_copy_1, i256* %C_copy_2, i256* %C_copy_3, i256* %X1_copy_0, i256* %X1_copy_1, i256* %X1_copy_2, i256* %X1_copy_3, i256* %X2_copy_0, i256* %X2_copy_1, i256* %X2_copy_2, i256* %X2_copy_3, i256* %D_copy_0, i256* %D_copy_1, i256* %D_copy_2, i256* %D_copy_3)
  call void @copy_out([4 x %"struct.ap_int<256>"]* %0, i256* nonnull align 512 %A_copy_0, i256* nonnull align 512 %A_copy_1, i256* nonnull align 512 %A_copy_2, i256* nonnull align 512 %A_copy_3, [4 x %"struct.ap_int<256>"]* %1, i256* nonnull align 512 %B_copy_0, i256* nonnull align 512 %B_copy_1, i256* nonnull align 512 %B_copy_2, i256* nonnull align 512 %B_copy_3, [4 x %"struct.ap_int<256>"]* %2, i256* nonnull align 512 %C_copy_0, i256* nonnull align 512 %C_copy_1, i256* nonnull align 512 %C_copy_2, i256* nonnull align 512 %C_copy_3, [4 x %"struct.ap_int<256>"]* %3, i256* nonnull align 512 %X1_copy_0, i256* nonnull align 512 %X1_copy_1, i256* nonnull align 512 %X1_copy_2, i256* nonnull align 512 %X1_copy_3, [4 x %"struct.ap_int<256>"]* %4, i256* nonnull align 512 %X2_copy_0, i256* nonnull align 512 %X2_copy_1, i256* nonnull align 512 %X2_copy_2, i256* nonnull align 512 %X2_copy_3, [4 x %"struct.ap_int<256>"]* %5, i256* nonnull align 512 %D_copy_0, i256* nonnull align 512 %D_copy_1, i256* nonnull align 512 %D_copy_2, i256* nonnull align 512 %D_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="0", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="2", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="4", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="6", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="8", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316, [4 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="10", i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_017, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_118, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_219, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_320) #1 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_0, i256* align 512 %_1, i256* align 512 %_2, i256* align 512 %_3, [4 x %"struct.ap_int<256>"]* %0)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_01, i256* align 512 %_12, i256* align 512 %_23, i256* align 512 %_34, [4 x %"struct.ap_int<256>"]* %1)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_05, i256* align 512 %_16, i256* align 512 %_27, i256* align 512 %_38, [4 x %"struct.ap_int<256>"]* %2)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_09, i256* align 512 %_110, i256* align 512 %_211, i256* align 512 %_312, [4 x %"struct.ap_int<256>"]* %3)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_013, i256* align 512 %_114, i256* align 512 %_215, i256* align 512 %_316, [4 x %"struct.ap_int<256>"]* %4)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* align 512 %_017, i256* align 512 %_118, i256* align 512 %_219, i256* align 512 %_320, [4 x %"struct.ap_int<256>"]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4 x %"struct.ap_int<256>"]* "orig.arg.no"="0", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [4 x %"struct.ap_int<256>"]* "orig.arg.no"="2", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [4 x %"struct.ap_int<256>"]* "orig.arg.no"="4", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [4 x %"struct.ap_int<256>"]* "orig.arg.no"="6", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [4 x %"struct.ap_int<256>"]* "orig.arg.no"="8", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_013, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_114, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_215, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_316, [4 x %"struct.ap_int<256>"]* "orig.arg.no"="10", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_017, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_118, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_219, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_320) #2 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %0, i256* align 512 %_0, i256* align 512 %_1, i256* align 512 %_2, i256* align 512 %_3)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %1, i256* align 512 %_01, i256* align 512 %_12, i256* align 512 %_23, i256* align 512 %_34)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %2, i256* align 512 %_05, i256* align 512 %_16, i256* align 512 %_27, i256* align 512 %_38)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %3, i256* align 512 %_09, i256* align 512 %_110, i256* align 512 %_211, i256* align 512 %_312)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %4, i256* align 512 %_013, i256* align 512 %_114, i256* align 512 %_215, i256* align 512 %_316)
  call void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* %5, i256* align 512 %_017, i256* align 512 %_118, i256* align 512 %_219, i256* align 512 %_320)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4struct.ap_int<256>.21.22"(i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i256* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [4 x %"struct.ap_int<256>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq i256* %_0, null
  %2 = icmp eq [4 x %"struct.ap_int<256>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_int<256>"], [4 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = load i256, i256* %src.addr.0.0.05, align 32
  %5 = trunc i64 %for.loop.idx7 to i2
  switch i2 %5, label %dst.addr.0.0.06.case.3 [
    i2 0, label %dst.addr.0.0.06.case.0
    i2 1, label %dst.addr.0.0.06.case.1
    i2 -2, label %dst.addr.0.0.06.case.2
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i256 %4, i256* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i256 %4, i256* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i256 %4, i256* %_2, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i256 %4, i256* %_3, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a4struct.ap_int<256>.27.28"([4 x %"struct.ap_int<256>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i256* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #3 {
entry:
  %1 = icmp eq [4 x %"struct.ap_int<256>"]* %0, null
  %2 = icmp eq i256* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_int<256>"], [4 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = trunc i64 %for.loop.idx7 to i2
  switch i2 %4, label %src.addr.0.0.05.case.3 [
    i2 0, label %src.addr.0.0.05.case.0
    i2 1, label %src.addr.0.0.05.case.1
    i2 -2, label %src.addr.0.0.05.case.2
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %5 = load i256, i256* %_0, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %6 = load i256, i256* %_1, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %7 = load i256, i256* %_2, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %8 = load i256, i256* %_3, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %9 = phi i256 [ %5, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ], [ %7, %src.addr.0.0.05.case.2 ], [ %8, %src.addr.0.0.05.case.3 ]
  store i256 %9, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

declare void @apatb_kp_502_7_hw(i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*)

define void @kp_502_7_hw_stub_wrapper(i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*, i256*) #4 {
entry:
  %24 = alloca [4 x %"struct.ap_int<256>"]
  %25 = alloca [4 x %"struct.ap_int<256>"]
  %26 = alloca [4 x %"struct.ap_int<256>"]
  %27 = alloca [4 x %"struct.ap_int<256>"]
  %28 = alloca [4 x %"struct.ap_int<256>"]
  %29 = alloca [4 x %"struct.ap_int<256>"]
  call void @copy_out([4 x %"struct.ap_int<256>"]* %24, i256* %0, i256* %1, i256* %2, i256* %3, [4 x %"struct.ap_int<256>"]* %25, i256* %4, i256* %5, i256* %6, i256* %7, [4 x %"struct.ap_int<256>"]* %26, i256* %8, i256* %9, i256* %10, i256* %11, [4 x %"struct.ap_int<256>"]* %27, i256* %12, i256* %13, i256* %14, i256* %15, [4 x %"struct.ap_int<256>"]* %28, i256* %16, i256* %17, i256* %18, i256* %19, [4 x %"struct.ap_int<256>"]* %29, i256* %20, i256* %21, i256* %22, i256* %23)
  %30 = bitcast [4 x %"struct.ap_int<256>"]* %24 to %"struct.ap_int<256>"*
  %31 = bitcast [4 x %"struct.ap_int<256>"]* %25 to %"struct.ap_int<256>"*
  %32 = bitcast [4 x %"struct.ap_int<256>"]* %26 to %"struct.ap_int<256>"*
  %33 = bitcast [4 x %"struct.ap_int<256>"]* %27 to %"struct.ap_int<256>"*
  %34 = bitcast [4 x %"struct.ap_int<256>"]* %28 to %"struct.ap_int<256>"*
  %35 = bitcast [4 x %"struct.ap_int<256>"]* %29 to %"struct.ap_int<256>"*
  call void @kp_502_7_hw_stub(%"struct.ap_int<256>"* %30, %"struct.ap_int<256>"* %31, %"struct.ap_int<256>"* %32, %"struct.ap_int<256>"* %33, %"struct.ap_int<256>"* %34, %"struct.ap_int<256>"* %35)
  call void @copy_in([4 x %"struct.ap_int<256>"]* %24, i256* %0, i256* %1, i256* %2, i256* %3, [4 x %"struct.ap_int<256>"]* %25, i256* %4, i256* %5, i256* %6, i256* %7, [4 x %"struct.ap_int<256>"]* %26, i256* %8, i256* %9, i256* %10, i256* %11, [4 x %"struct.ap_int<256>"]* %27, i256* %12, i256* %13, i256* %14, i256* %15, [4 x %"struct.ap_int<256>"]* %28, i256* %16, i256* %17, i256* %18, i256* %19, [4 x %"struct.ap_int<256>"]* %29, i256* %20, i256* %21, i256* %22, i256* %23)
  ret void
}

declare void @kp_502_7_hw_stub(%"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
