; ModuleID = 'C:/Xilinx_trn/HLS2023/lab7_z4/lab7_z4/sol2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<256>" = type { %"struct.ap_int_base<256, true>" }
%"struct.ap_int_base<256, true>" = type { %"struct.ssdm_int<256, true>" }
%"struct.ssdm_int<256, true>" = type { i256 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_lab7_z4_ir(%"struct.ap_int<256>"* %a, %"struct.ap_int<256>"* %b, %"struct.ap_int<256>"* %c) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 1024)
  %a_copy_0 = bitcast i8* %malloccall_0 to [32 x i256]*
  %malloccall_1 = call i8* @malloc(i64 1024)
  %a_copy_1 = bitcast i8* %malloccall_1 to [32 x i256]*
  %malloccall_2 = call i8* @malloc(i64 1024)
  %a_copy_2 = bitcast i8* %malloccall_2 to [32 x i256]*
  %malloccall_3 = call i8* @malloc(i64 1024)
  %a_copy_3 = bitcast i8* %malloccall_3 to [32 x i256]*
  %malloccall1_0 = call i8* @malloc(i64 1024)
  %b_copy_0 = bitcast i8* %malloccall1_0 to [32 x i256]*
  %malloccall1_1 = call i8* @malloc(i64 1024)
  %b_copy_1 = bitcast i8* %malloccall1_1 to [32 x i256]*
  %malloccall1_2 = call i8* @malloc(i64 1024)
  %b_copy_2 = bitcast i8* %malloccall1_2 to [32 x i256]*
  %malloccall1_3 = call i8* @malloc(i64 1024)
  %b_copy_3 = bitcast i8* %malloccall1_3 to [32 x i256]*
  %malloccall2_0 = call i8* @malloc(i64 1024)
  %c_copy_0 = bitcast i8* %malloccall2_0 to [32 x i256]*
  %malloccall2_1 = call i8* @malloc(i64 1024)
  %c_copy_1 = bitcast i8* %malloccall2_1 to [32 x i256]*
  %malloccall2_2 = call i8* @malloc(i64 1024)
  %c_copy_2 = bitcast i8* %malloccall2_2 to [32 x i256]*
  %malloccall2_3 = call i8* @malloc(i64 1024)
  %c_copy_3 = bitcast i8* %malloccall2_3 to [32 x i256]*
  %0 = bitcast %"struct.ap_int<256>"* %a to [128 x %"struct.ap_int<256>"]*
  %1 = bitcast %"struct.ap_int<256>"* %b to [128 x %"struct.ap_int<256>"]*
  %2 = bitcast %"struct.ap_int<256>"* %c to [128 x %"struct.ap_int<256>"]*
  call void @copy_in([128 x %"struct.ap_int<256>"]* %0, [32 x i256]* %a_copy_0, [32 x i256]* %a_copy_1, [32 x i256]* %a_copy_2, [32 x i256]* %a_copy_3, [128 x %"struct.ap_int<256>"]* %1, [32 x i256]* %b_copy_0, [32 x i256]* %b_copy_1, [32 x i256]* %b_copy_2, [32 x i256]* %b_copy_3, [128 x %"struct.ap_int<256>"]* %2, [32 x i256]* %c_copy_0, [32 x i256]* %c_copy_1, [32 x i256]* %c_copy_2, [32 x i256]* %c_copy_3)
  %3 = getelementptr [32 x i256], [32 x i256]* %a_copy_0, i32 0, i32 0
  %4 = getelementptr [32 x i256], [32 x i256]* %a_copy_1, i32 0, i32 0
  %5 = getelementptr [32 x i256], [32 x i256]* %a_copy_2, i32 0, i32 0
  %6 = getelementptr [32 x i256], [32 x i256]* %a_copy_3, i32 0, i32 0
  %7 = getelementptr [32 x i256], [32 x i256]* %b_copy_0, i32 0, i32 0
  %8 = getelementptr [32 x i256], [32 x i256]* %b_copy_1, i32 0, i32 0
  %9 = getelementptr [32 x i256], [32 x i256]* %b_copy_2, i32 0, i32 0
  %10 = getelementptr [32 x i256], [32 x i256]* %b_copy_3, i32 0, i32 0
  %11 = getelementptr [32 x i256], [32 x i256]* %c_copy_0, i32 0, i32 0
  %12 = getelementptr [32 x i256], [32 x i256]* %c_copy_1, i32 0, i32 0
  %13 = getelementptr [32 x i256], [32 x i256]* %c_copy_2, i32 0, i32 0
  %14 = getelementptr [32 x i256], [32 x i256]* %c_copy_3, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %7, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %8, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %9, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %10, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %11, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %12, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %13, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i256* %14, i32 0, i32 1, i32 0, i1 false) ], !dbg !416
  call void @apatb_lab7_z4_hw([32 x i256]* %a_copy_0, [32 x i256]* %a_copy_1, [32 x i256]* %a_copy_2, [32 x i256]* %a_copy_3, [32 x i256]* %b_copy_0, [32 x i256]* %b_copy_1, [32 x i256]* %b_copy_2, [32 x i256]* %b_copy_3, [32 x i256]* %c_copy_0, [32 x i256]* %c_copy_1, [32 x i256]* %c_copy_2, [32 x i256]* %c_copy_3)
  call void @copy_out([128 x %"struct.ap_int<256>"]* %0, [32 x i256]* %a_copy_0, [32 x i256]* %a_copy_1, [32 x i256]* %a_copy_2, [32 x i256]* %a_copy_3, [128 x %"struct.ap_int<256>"]* %1, [32 x i256]* %b_copy_0, [32 x i256]* %b_copy_1, [32 x i256]* %b_copy_2, [32 x i256]* %b_copy_3, [128 x %"struct.ap_int<256>"]* %2, [32 x i256]* %c_copy_0, [32 x i256]* %c_copy_1, [32 x i256]* %c_copy_2, [32 x i256]* %c_copy_3)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall2_0)
  call void @free(i8* %malloccall2_1)
  call void @free(i8* %malloccall2_2)
  call void @free(i8* %malloccall2_3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([128 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="0", [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="2", [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [128 x %"struct.ap_int<256>"]* readonly "orig.arg.no"="4", [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38) #2 {
entry:
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.3.4"([32 x i256]* %_0, [32 x i256]* %_1, [32 x i256]* %_2, [32 x i256]* %_3, [128 x %"struct.ap_int<256>"]* %0)
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.3.4"([32 x i256]* %_01, [32 x i256]* %_12, [32 x i256]* %_23, [32 x i256]* %_34, [128 x %"struct.ap_int<256>"]* %1)
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.3.4"([32 x i256]* %_05, [32 x i256]* %_16, [32 x i256]* %_27, [32 x i256]* %_38, [128 x %"struct.ap_int<256>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([128 x %"struct.ap_int<256>"]* "orig.arg.no"="0", [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [128 x %"struct.ap_int<256>"]* "orig.arg.no"="2", [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [128 x %"struct.ap_int<256>"]* "orig.arg.no"="4", [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38) #3 {
entry:
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.9.10"([128 x %"struct.ap_int<256>"]* %0, [32 x i256]* %_0, [32 x i256]* %_1, [32 x i256]* %_2, [32 x i256]* %_3)
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.9.10"([128 x %"struct.ap_int<256>"]* %1, [32 x i256]* %_01, [32 x i256]* %_12, [32 x i256]* %_23, [32 x i256]* %_34)
  call void @"onebyonecpy_hls.p0a128struct.ap_int<256>.9.10"([128 x %"struct.ap_int<256>"]* %2, [32 x i256]* %_05, [32 x i256]* %_16, [32 x i256]* %_27, [32 x i256]* %_38)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a128struct.ap_int<256>.3.4"([32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [32 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [128 x %"struct.ap_int<256>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #4 {
entry:
  %1 = icmp eq [32 x i256]* %_0, null
  %2 = icmp eq [128 x %"struct.ap_int<256>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_int<256>"], [128 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = urem i64 %for.loop.idx7, 4
  %5 = udiv i64 %for.loop.idx7, 4
  %6 = getelementptr [32 x i256], [32 x i256]* %_0, i64 0, i64 %5
  %7 = getelementptr [32 x i256], [32 x i256]* %_1, i64 0, i64 %5
  %8 = getelementptr [32 x i256], [32 x i256]* %_2, i64 0, i64 %5
  %9 = getelementptr [32 x i256], [32 x i256]* %_3, i64 0, i64 %5
  %10 = load i256, i256* %src.addr.0.0.05, align 32
  %11 = trunc i64 %4 to i2
  switch i2 %11, label %dst.addr.0.0.06.case.3 [
    i2 0, label %dst.addr.0.0.06.case.0
    i2 1, label %dst.addr.0.0.06.case.1
    i2 -2, label %dst.addr.0.0.06.case.2
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i256 %10, i256* %6, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i256 %10, i256* %7, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i256 %10, i256* %8, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i256 %10, i256* %9, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a128struct.ap_int<256>.9.10"([128 x %"struct.ap_int<256>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [32 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #4 {
entry:
  %1 = icmp eq [128 x %"struct.ap_int<256>"]* %0, null
  %2 = icmp eq [32 x i256]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %4 = urem i64 %for.loop.idx7, 4
  %5 = udiv i64 %for.loop.idx7, 4
  %6 = getelementptr [32 x i256], [32 x i256]* %_0, i64 0, i64 %5
  %7 = getelementptr [32 x i256], [32 x i256]* %_1, i64 0, i64 %5
  %8 = getelementptr [32 x i256], [32 x i256]* %_2, i64 0, i64 %5
  %9 = getelementptr [32 x i256], [32 x i256]* %_3, i64 0, i64 %5
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_int<256>"], [128 x %"struct.ap_int<256>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %10 = trunc i64 %4 to i2
  switch i2 %10, label %src.addr.0.0.05.case.3 [
    i2 0, label %src.addr.0.0.05.case.0
    i2 1, label %src.addr.0.0.05.case.1
    i2 -2, label %src.addr.0.0.05.case.2
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %11 = load i256, i256* %6, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %12 = load i256, i256* %7, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %13 = load i256, i256* %8, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %14 = load i256, i256* %9, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %15 = phi i256 [ %11, %src.addr.0.0.05.case.0 ], [ %12, %src.addr.0.0.05.case.1 ], [ %13, %src.addr.0.0.05.case.2 ], [ %14, %src.addr.0.0.05.case.3 ]
  store i256 %15, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

declare void @apatb_lab7_z4_hw([32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*)

define void @lab7_z4_hw_stub_wrapper([32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*, [32 x i256]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %12 = bitcast i8* %malloccall to [128 x %"struct.ap_int<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %13 = bitcast i8* %malloccall1 to [128 x %"struct.ap_int<256>"]*
  %malloccall2 = tail call i8* @malloc(i64 4096)
  %14 = bitcast i8* %malloccall2 to [128 x %"struct.ap_int<256>"]*
  call void @copy_out([128 x %"struct.ap_int<256>"]* %12, [32 x i256]* %0, [32 x i256]* %1, [32 x i256]* %2, [32 x i256]* %3, [128 x %"struct.ap_int<256>"]* %13, [32 x i256]* %4, [32 x i256]* %5, [32 x i256]* %6, [32 x i256]* %7, [128 x %"struct.ap_int<256>"]* %14, [32 x i256]* %8, [32 x i256]* %9, [32 x i256]* %10, [32 x i256]* %11)
  %15 = bitcast [128 x %"struct.ap_int<256>"]* %12 to %"struct.ap_int<256>"*
  %16 = bitcast [128 x %"struct.ap_int<256>"]* %13 to %"struct.ap_int<256>"*
  %17 = bitcast [128 x %"struct.ap_int<256>"]* %14 to %"struct.ap_int<256>"*
  call void @lab7_z4_hw_stub(%"struct.ap_int<256>"* %15, %"struct.ap_int<256>"* %16, %"struct.ap_int<256>"* %17)
  call void @copy_in([128 x %"struct.ap_int<256>"]* %12, [32 x i256]* %0, [32 x i256]* %1, [32 x i256]* %2, [32 x i256]* %3, [128 x %"struct.ap_int<256>"]* %13, [32 x i256]* %4, [32 x i256]* %5, [32 x i256]* %6, [32 x i256]* %7, [128 x %"struct.ap_int<256>"]* %14, [32 x i256]* %8, [32 x i256]* %9, [32 x i256]* %10, [32 x i256]* %11)
  ret void
}

declare void @lab7_z4_hw_stub(%"struct.ap_int<256>"*, %"struct.ap_int<256>"*, %"struct.ap_int<256>"*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
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
!5 = !DILocation(line: 5, column: 64, scope: !6)
!6 = distinct !DISubprogram(name: "lab7_z4", linkageName: "_Z7lab7_z4P6ap_intILi256EES1_S1_", scope: !7, file: !7, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !414, variables: !4)
!7 = !DIFile(filename: "./source/lab7_z4.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !412, !412}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_type", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "./source/lab7_z4.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<256>", file: !14, line: 63, size: 256, flags: DIFlagTypePassByValue, elements: !15, templateParams: !411, identifier: "_ZTS6ap_intILi256EE")
!14 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/common/technology/autopilot\5Cap_int.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!15 = !{!16, !333, !337, !341, !344, !347, !350, !353, !356, !359, !362, !365, !368, !371, !374, !377, !380, !383, !386, !389, !392, !398, !404, !408}
!16 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !13, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<256, true>", file: !18, line: 154, size: 256, flags: DIFlagTypePassByValue, elements: !19, templateParams: !331, identifier: "_ZTS11ap_int_baseILi256ELb1EE")
!18 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/common/technology/autopilot\5Cap_int_base.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!19 = !{!20, !35, !37, !39, !44, !48, !51, !56, !61, !66, !71, !76, !79, !84, !89, !94, !101, !107, !112, !116, !120, !124, !127, !132, !136, !141, !142, !146, !149, !152, !155, !158, !161, !164, !167, !170, !173, !176, !179, !182, !185, !193, !196, !199, !202, !205, !208, !211, !212, !215, !218, !221, !224, !227, !230, !233, !236, !240, !241, !242, !243, !246, !247, !250, !253, !254, !257, !258, !259, !260, !261, !262, !263, !266, !267, !268, !279, !280, !283, !296, !297, !298, !302, !305, !308, !311, !312, !313, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!20 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !17, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<256, true>", file: !22, line: 514, size: 256, flags: DIFlagTypePassByValue, elements: !23, templateParams: !30, identifier: "_ZTS8ssdm_intILi256ELb1EE")
!22 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/common/technology/autopilot\5Cap_common.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !21, file: !22, line: 516, baseType: !25, size: 256, align: 256)
!25 = !DIBasicType(name: "int256", size: 256, encoding: DW_ATE_signed)
!26 = !DISubprogram(name: "ssdm_int", scope: !21, file: !22, line: 517, type: !27, isLocal: false, isDefinition: false, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !{!31, !33}
!31 = !DITemplateValueParameter(name: "_AP_N", type: !32, value: i32 256)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DITemplateValueParameter(name: "_AP_S", type: !34, value: i8 1)
!34 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !17, file: !18, line: 176, baseType: !36, flags: DIFlagStaticMember, extraData: i32 256)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !17, file: !18, line: 177, baseType: !38, flags: DIFlagStaticMember, extraData: i1 true)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!39 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi256ELb1EE16countLeadingOnesEv", scope: !17, file: !18, line: 156, type: !40, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!40 = !DISubroutineType(types: !41)
!41 = !{!32, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!44 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 221, type: !45, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!48 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 254, type: !49, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !47, !38}
!51 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 255, type: !52, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !47, !54}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 256, type: !57, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !47, !59}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 257, type: !62, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !47, !64}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 258, type: !67, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !47, !69}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!71 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 259, type: !72, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !47, !74}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 260, type: !77, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !47, !36}
!79 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 261, type: !80, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !47, !82}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 262, type: !85, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !47, !87}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 263, type: !90, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !47, !92}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 264, type: !95, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !47, !97}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !99, line: 233, baseType: !100)
!99 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/common/technology/autopilot\5Cap_decl.h", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!100 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!101 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 265, type: !102, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !47, !104}
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !99, line: 234, baseType: !106)
!106 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 270, type: !108, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !47, !110}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !22, line: 616, baseType: !111)
!111 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!112 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 276, type: !113, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !47, !115}
!115 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!116 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 335, type: !117, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !47, !119}
!119 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!120 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 431, type: !121, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !47, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!124 = !DISubprogram(name: "ap_int_base", scope: !17, file: !18, line: 437, type: !125, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !47, !123, !60}
!127 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi256ELb1EE4readEv", scope: !17, file: !18, line: 459, type: !128, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DISubroutineType(types: !129)
!129 = !{!17, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!131 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!132 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi256ELb1EE5writeERKS0_", scope: !17, file: !18, line: 466, type: !133, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !130, !135}
!135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !43, size: 64)
!136 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi256ELb1EEaSERVKS0_", scope: !17, file: !18, line: 478, type: !137, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !130, !139}
!139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!141 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi256ELb1EEaSERKS0_", scope: !17, file: !18, line: 488, type: !133, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSERVKS0_", scope: !17, file: !18, line: 505, type: !143, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !47, !139}
!145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!146 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSERKS0_", scope: !17, file: !18, line: 511, type: !147, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubroutineType(types: !148)
!148 = !{!145, !47, !135}
!149 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEb", scope: !17, file: !18, line: 525, type: !150, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!145, !47, !34}
!152 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEc", scope: !17, file: !18, line: 526, type: !153, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!145, !47, !55}
!155 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEa", scope: !17, file: !18, line: 527, type: !156, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubroutineType(types: !157)
!157 = !{!145, !47, !60}
!158 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEh", scope: !17, file: !18, line: 528, type: !159, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!145, !47, !65}
!161 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEs", scope: !17, file: !18, line: 529, type: !162, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!145, !47, !70}
!164 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEt", scope: !17, file: !18, line: 530, type: !165, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{!145, !47, !75}
!167 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEi", scope: !17, file: !18, line: 531, type: !168, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!145, !47, !32}
!170 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEj", scope: !17, file: !18, line: 532, type: !171, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!145, !47, !83}
!173 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEl", scope: !17, file: !18, line: 533, type: !174, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!145, !47, !88}
!176 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEm", scope: !17, file: !18, line: 534, type: !177, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!145, !47, !93}
!179 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEx", scope: !17, file: !18, line: 535, type: !180, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!145, !47, !98}
!182 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb1EEaSEy", scope: !17, file: !18, line: 536, type: !183, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!145, !47, !105}
!185 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi256ELb1EEcvxEv", scope: !17, file: !18, line: 587, type: !186, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !42}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !17, file: !18, line: 174, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !190, file: !18, line: 92, baseType: !98)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<32, true>", file: !18, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !191, identifier: "_ZTS6retvalILi32ELb1EE")
!191 = !{!192, !33}
!192 = !DITemplateValueParameter(name: "_AP_N", type: !32, value: i32 32)
!193 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7to_boolEv", scope: !17, file: !18, line: 592, type: !194, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{!34, !42}
!196 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7to_charEv", scope: !17, file: !18, line: 593, type: !197, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!55, !42}
!199 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_scharEv", scope: !17, file: !18, line: 594, type: !200, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!60, !42}
!202 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_ucharEv", scope: !17, file: !18, line: 595, type: !203, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{!65, !42}
!205 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_shortEv", scope: !17, file: !18, line: 596, type: !206, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!70, !42}
!208 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi256ELb1EE9to_ushortEv", scope: !17, file: !18, line: 597, type: !209, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!75, !42}
!211 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi256ELb1EE6to_intEv", scope: !17, file: !18, line: 598, type: !40, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7to_uintEv", scope: !17, file: !18, line: 599, type: !213, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DISubroutineType(types: !214)
!214 = !{!83, !42}
!215 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7to_longEv", scope: !17, file: !18, line: 600, type: !216, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!88, !42}
!218 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_ulongEv", scope: !17, file: !18, line: 601, type: !219, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!93, !42}
!221 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_int64Ev", scope: !17, file: !18, line: 602, type: !222, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{!98, !42}
!224 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi256ELb1EE9to_uint64Ev", scope: !17, file: !18, line: 603, type: !225, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!105, !42}
!227 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7to_halfEv", scope: !17, file: !18, line: 604, type: !228, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DISubroutineType(types: !229)
!229 = !{!110, !42}
!230 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi256ELb1EE8to_floatEv", scope: !17, file: !18, line: 605, type: !231, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!115, !42}
!233 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi256ELb1EE9to_doubleEv", scope: !17, file: !18, line: 606, type: !234, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{!119, !42}
!236 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi256ELb1EE6lengthEv", scope: !17, file: !18, line: 630, type: !237, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DISubroutineType(types: !238)
!238 = !{!32, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!240 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi256ELb1EE6iszeroEv", scope: !17, file: !18, line: 633, type: !194, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7is_zeroEv", scope: !17, file: !18, line: 636, type: !194, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi256ELb1EE4signEv", scope: !17, file: !18, line: 639, type: !194, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi256ELb1EE5clearEi", scope: !17, file: !18, line: 648, type: !244, isLocal: false, isDefinition: false, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !47, !32}
!246 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi256ELb1EE6invertEi", scope: !17, file: !18, line: 654, type: !244, isLocal: false, isDefinition: false, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi256ELb1EE4testEi", scope: !17, file: !18, line: 663, type: !248, isLocal: false, isDefinition: false, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!34, !42, !32}
!250 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi256ELb1EE3getEv", scope: !17, file: !18, line: 669, type: !251, isLocal: false, isDefinition: false, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!145, !47}
!253 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi256ELb1EE3setEi", scope: !17, file: !18, line: 672, type: !244, isLocal: false, isDefinition: false, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi256ELb1EE3setEib", scope: !17, file: !18, line: 678, type: !255, isLocal: false, isDefinition: false, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !47, !32, !34}
!257 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi256ELb1EE7lrotateEi", scope: !17, file: !18, line: 685, type: !168, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi256ELb1EE7rrotateEi", scope: !17, file: !18, line: 700, type: !168, isLocal: false, isDefinition: false, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi256ELb1EE7reverseEv", scope: !17, file: !18, line: 715, type: !251, isLocal: false, isDefinition: false, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi256ELb1EE7set_bitEib", scope: !17, file: !18, line: 721, type: !255, isLocal: false, isDefinition: false, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi256ELb1EE7get_bitEi", scope: !17, file: !18, line: 726, type: !248, isLocal: false, isDefinition: false, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi256ELb1EE5b_notEv", scope: !17, file: !18, line: 731, type: !45, isLocal: false, isDefinition: false, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi256ELb1EE17checkOverflowCsimEibb", scope: !17, file: !18, line: 805, type: !264, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!34, !42, !32, !34, !34}
!266 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi256ELb1EEppEv", scope: !17, file: !18, line: 910, type: !251, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi256ELb1EEmmEv", scope: !17, file: !18, line: 914, type: !251, isLocal: false, isDefinition: false, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi256ELb1EEppEi", scope: !17, file: !18, line: 922, type: !269, isLocal: false, isDefinition: false, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !47, !32}
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !273, file: !18, line: 213, baseType: !277)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<256, true>", scope: !17, file: !18, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !274, identifier: "_ZTSN11ap_int_baseILi256ELb1EE5RTypeILi256ELb1EEE")
!274 = !{!275, !276}
!275 = !DITemplateValueParameter(name: "_AP_W2", type: !32, value: i32 256)
!276 = !DITemplateValueParameter(name: "_AP_S2", type: !34, value: i8 1)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !278, file: !18, line: 149, baseType: !13)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<256, true>", file: !18, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !274, identifier: "_ZTS15_ap_int_factoryILi256ELb1EE")
!279 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi256ELb1EEmmEi", scope: !17, file: !18, line: 927, type: !269, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi256ELb1EEpsEv", scope: !17, file: !18, line: 936, type: !281, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!272, !42}
!283 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi256ELb1EEngEv", scope: !17, file: !18, line: 939, type: !284, isLocal: false, isDefinition: false, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !42}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !287, file: !18, line: 209, baseType: !291)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !17, file: !18, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !288, identifier: "_ZTSN11ap_int_baseILi256ELb1EE5RTypeILi1ELb0EEE")
!288 = !{!289, !290}
!289 = !DITemplateValueParameter(name: "_AP_W2", type: !32, value: i32 1)
!290 = !DITemplateValueParameter(name: "_AP_S2", type: !34, value: i8 0)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !292, file: !18, line: 149, baseType: !295)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<257, true>", file: !18, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !293, identifier: "_ZTS15_ap_int_factoryILi257ELb1EE")
!293 = !{!294, !276}
!294 = !DITemplateValueParameter(name: "_AP_W2", type: !32, value: i32 257)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<257>", file: !99, line: 183, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi257EE")
!296 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi256ELb1EEntEv", scope: !17, file: !18, line: 946, type: !194, isLocal: false, isDefinition: false, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi256ELb1EEcoEv", scope: !17, file: !18, line: 952, type: !281, isLocal: false, isDefinition: false, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi256ELb1EE5rangeEii", scope: !17, file: !18, line: 1090, type: !299, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !47, !32, !32}
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<256, true>", file: !99, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi256ELb1EE")
!302 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi256ELb1EE5rangeEii", scope: !17, file: !18, line: 1097, type: !303, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!301, !42, !32, !32}
!305 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi256ELb1EE5rangeEv", scope: !17, file: !18, line: 1121, type: !306, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DISubroutineType(types: !307)
!307 = !{!301, !47}
!308 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi256ELb1EE5rangeEv", scope: !17, file: !18, line: 1125, type: !309, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{!301, !42}
!311 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi256ELb1EEclEii", scope: !17, file: !18, line: 1129, type: !299, isLocal: false, isDefinition: false, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi256ELb1EEclEii", scope: !17, file: !18, line: 1133, type: !303, isLocal: false, isDefinition: false, scopeLine: 1133, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi256ELb1EEixEi", scope: !17, file: !18, line: 1171, type: !314, isLocal: false, isDefinition: false, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !47, !32}
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<256, true>", file: !99, line: 192, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi256ELb1EE")
!317 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi256ELb1EEixEi", scope: !17, file: !18, line: 1187, type: !248, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi256ELb1EE3bitEi", scope: !17, file: !18, line: 1200, type: !314, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi256ELb1EE3bitEi", scope: !17, file: !18, line: 1215, type: !248, isLocal: false, isDefinition: false, scopeLine: 1215, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi256ELb1EE17countLeadingZerosEv", scope: !17, file: !18, line: 1238, type: !40, isLocal: false, isDefinition: false, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE10and_reduceEv", scope: !17, file: !18, line: 1458, type: !194, isLocal: false, isDefinition: false, scopeLine: 1458, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE11nand_reduceEv", scope: !17, file: !18, line: 1459, type: !194, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE9or_reduceEv", scope: !17, file: !18, line: 1460, type: !194, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE10nor_reduceEv", scope: !17, file: !18, line: 1461, type: !194, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!325 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE10xor_reduceEv", scope: !17, file: !18, line: 1462, type: !194, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi256ELb1EE11xnor_reduceEv", scope: !17, file: !18, line: 1463, type: !194, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi256ELb1EE9to_stringEab", scope: !17, file: !18, line: 1478, type: !328, isLocal: false, isDefinition: false, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !42, !60, !34}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!331 = !{!332, !33}
!332 = !DITemplateValueParameter(name: "_AP_W", type: !32, value: i32 256)
!333 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 66, type: !334, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!337 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 94, type: !338, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !336, !340, !34}
!340 = !DIBasicType(name: "uint256", size: 256, encoding: DW_ATE_unsigned)
!341 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 162, type: !342, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !336, !34}
!344 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 163, type: !345, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !336, !55}
!347 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 164, type: !348, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !336, !60}
!350 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 165, type: !351, isLocal: false, isDefinition: false, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !336, !65}
!353 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 166, type: !354, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !336, !70}
!356 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 167, type: !357, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !336, !75}
!359 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 168, type: !360, isLocal: false, isDefinition: false, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !336, !32}
!362 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 169, type: !363, isLocal: false, isDefinition: false, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !336, !83}
!365 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 170, type: !366, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !336, !88}
!368 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 171, type: !369, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !336, !93}
!371 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 172, type: !372, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !336, !98}
!374 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 173, type: !375, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !336, !105}
!377 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 175, type: !378, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !336, !119}
!380 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 176, type: !381, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !336, !115}
!383 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 177, type: !384, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !336, !110}
!386 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 180, type: !387, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !336, !123}
!389 = !DISubprogram(name: "ap_int", scope: !13, file: !14, line: 182, type: !390, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !336, !123, !60}
!392 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi256EEaSERKS0_", scope: !13, file: !14, line: 187, type: !393, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !336, !396}
!395 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!398 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi256EEaSERVKS0_", scope: !13, file: !14, line: 196, type: !399, isLocal: false, isDefinition: false, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!395, !336, !401}
!401 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!404 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi256EEaSERKS0_", scope: !13, file: !14, line: 202, type: !405, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407, !396}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi256EEaSERVKS0_", scope: !13, file: !14, line: 206, type: !409, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !407, !401}
!411 = !{!332}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_type", file: !12, line: 3, baseType: !13)
!414 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !415, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!415 = !DIFile(filename: "C:/Xilinx_trn/HLS2023/lab7_z4/lab7_z4/sol2/.autopilot/db\5Clab7_z4.pp.0.cpp", directory: "C:\5CXilinx_trn\5CHLS2023\5Clab7_z4")
!416 = !DILocation(line: 6, column: 9, scope: !6)
