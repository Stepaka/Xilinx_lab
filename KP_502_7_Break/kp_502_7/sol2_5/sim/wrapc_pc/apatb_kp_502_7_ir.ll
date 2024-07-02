; ModuleID = 'G:/Xilinx_lab/KP_502_7/kp_502_7/sol2_5/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_7_ir(i32* %A, i32* %B, i32* %C, i32* %X1, i32* %X2, i32* %D) local_unnamed_addr #0 {
entry:
  %A_copy_0 = alloca i32, align 512
  %A_copy_1 = alloca i32, align 512
  %A_copy_2 = alloca i32, align 512
  %A_copy_3 = alloca i32, align 512
  %A_copy_4 = alloca i32, align 512
  %A_copy_5 = alloca i32, align 512
  %A_copy_6 = alloca i32, align 512
  %A_copy_7 = alloca i32, align 512
  %B_copy_0 = alloca i32, align 512
  %B_copy_1 = alloca i32, align 512
  %B_copy_2 = alloca i32, align 512
  %B_copy_3 = alloca i32, align 512
  %B_copy_4 = alloca i32, align 512
  %B_copy_5 = alloca i32, align 512
  %B_copy_6 = alloca i32, align 512
  %B_copy_7 = alloca i32, align 512
  %C_copy_0 = alloca i32, align 512
  %C_copy_1 = alloca i32, align 512
  %C_copy_2 = alloca i32, align 512
  %C_copy_3 = alloca i32, align 512
  %C_copy_4 = alloca i32, align 512
  %C_copy_5 = alloca i32, align 512
  %C_copy_6 = alloca i32, align 512
  %C_copy_7 = alloca i32, align 512
  %X1_copy_0 = alloca i32, align 512
  %X1_copy_1 = alloca i32, align 512
  %X1_copy_2 = alloca i32, align 512
  %X1_copy_3 = alloca i32, align 512
  %X1_copy_4 = alloca i32, align 512
  %X1_copy_5 = alloca i32, align 512
  %X1_copy_6 = alloca i32, align 512
  %X1_copy_7 = alloca i32, align 512
  %X2_copy_0 = alloca i32, align 512
  %X2_copy_1 = alloca i32, align 512
  %X2_copy_2 = alloca i32, align 512
  %X2_copy_3 = alloca i32, align 512
  %X2_copy_4 = alloca i32, align 512
  %X2_copy_5 = alloca i32, align 512
  %X2_copy_6 = alloca i32, align 512
  %X2_copy_7 = alloca i32, align 512
  %D_copy_0 = alloca i32, align 512
  %D_copy_1 = alloca i32, align 512
  %D_copy_2 = alloca i32, align 512
  %D_copy_3 = alloca i32, align 512
  %D_copy_4 = alloca i32, align 512
  %D_copy_5 = alloca i32, align 512
  %D_copy_6 = alloca i32, align 512
  %D_copy_7 = alloca i32, align 512
  %0 = bitcast i32* %A to [8 x i32]*
  %1 = bitcast i32* %B to [8 x i32]*
  %2 = bitcast i32* %C to [8 x i32]*
  %3 = bitcast i32* %X1 to [8 x i32]*
  %4 = bitcast i32* %X2 to [8 x i32]*
  %5 = bitcast i32* %D to [8 x i32]*
  call void @copy_in([8 x i32]* %0, i32* nonnull align 512 %A_copy_0, i32* nonnull align 512 %A_copy_1, i32* nonnull align 512 %A_copy_2, i32* nonnull align 512 %A_copy_3, i32* nonnull align 512 %A_copy_4, i32* nonnull align 512 %A_copy_5, i32* nonnull align 512 %A_copy_6, i32* nonnull align 512 %A_copy_7, [8 x i32]* %1, i32* nonnull align 512 %B_copy_0, i32* nonnull align 512 %B_copy_1, i32* nonnull align 512 %B_copy_2, i32* nonnull align 512 %B_copy_3, i32* nonnull align 512 %B_copy_4, i32* nonnull align 512 %B_copy_5, i32* nonnull align 512 %B_copy_6, i32* nonnull align 512 %B_copy_7, [8 x i32]* %2, i32* nonnull align 512 %C_copy_0, i32* nonnull align 512 %C_copy_1, i32* nonnull align 512 %C_copy_2, i32* nonnull align 512 %C_copy_3, i32* nonnull align 512 %C_copy_4, i32* nonnull align 512 %C_copy_5, i32* nonnull align 512 %C_copy_6, i32* nonnull align 512 %C_copy_7, [8 x i32]* %3, i32* nonnull align 512 %X1_copy_0, i32* nonnull align 512 %X1_copy_1, i32* nonnull align 512 %X1_copy_2, i32* nonnull align 512 %X1_copy_3, i32* nonnull align 512 %X1_copy_4, i32* nonnull align 512 %X1_copy_5, i32* nonnull align 512 %X1_copy_6, i32* nonnull align 512 %X1_copy_7, [8 x i32]* %4, i32* nonnull align 512 %X2_copy_0, i32* nonnull align 512 %X2_copy_1, i32* nonnull align 512 %X2_copy_2, i32* nonnull align 512 %X2_copy_3, i32* nonnull align 512 %X2_copy_4, i32* nonnull align 512 %X2_copy_5, i32* nonnull align 512 %X2_copy_6, i32* nonnull align 512 %X2_copy_7, [8 x i32]* %5, i32* nonnull align 512 %D_copy_0, i32* nonnull align 512 %D_copy_1, i32* nonnull align 512 %D_copy_2, i32* nonnull align 512 %D_copy_3, i32* nonnull align 512 %D_copy_4, i32* nonnull align 512 %D_copy_5, i32* nonnull align 512 %D_copy_6, i32* nonnull align 512 %D_copy_7)
  call void @apatb_kp_502_7_hw(i32* %A_copy_0, i32* %A_copy_1, i32* %A_copy_2, i32* %A_copy_3, i32* %A_copy_4, i32* %A_copy_5, i32* %A_copy_6, i32* %A_copy_7, i32* %B_copy_0, i32* %B_copy_1, i32* %B_copy_2, i32* %B_copy_3, i32* %B_copy_4, i32* %B_copy_5, i32* %B_copy_6, i32* %B_copy_7, i32* %C_copy_0, i32* %C_copy_1, i32* %C_copy_2, i32* %C_copy_3, i32* %C_copy_4, i32* %C_copy_5, i32* %C_copy_6, i32* %C_copy_7, i32* %X1_copy_0, i32* %X1_copy_1, i32* %X1_copy_2, i32* %X1_copy_3, i32* %X1_copy_4, i32* %X1_copy_5, i32* %X1_copy_6, i32* %X1_copy_7, i32* %X2_copy_0, i32* %X2_copy_1, i32* %X2_copy_2, i32* %X2_copy_3, i32* %X2_copy_4, i32* %X2_copy_5, i32* %X2_copy_6, i32* %X2_copy_7, i32* %D_copy_0, i32* %D_copy_1, i32* %D_copy_2, i32* %D_copy_3, i32* %D_copy_4, i32* %D_copy_5, i32* %D_copy_6, i32* %D_copy_7)
  call void @copy_out([8 x i32]* %0, i32* nonnull align 512 %A_copy_0, i32* nonnull align 512 %A_copy_1, i32* nonnull align 512 %A_copy_2, i32* nonnull align 512 %A_copy_3, i32* nonnull align 512 %A_copy_4, i32* nonnull align 512 %A_copy_5, i32* nonnull align 512 %A_copy_6, i32* nonnull align 512 %A_copy_7, [8 x i32]* %1, i32* nonnull align 512 %B_copy_0, i32* nonnull align 512 %B_copy_1, i32* nonnull align 512 %B_copy_2, i32* nonnull align 512 %B_copy_3, i32* nonnull align 512 %B_copy_4, i32* nonnull align 512 %B_copy_5, i32* nonnull align 512 %B_copy_6, i32* nonnull align 512 %B_copy_7, [8 x i32]* %2, i32* nonnull align 512 %C_copy_0, i32* nonnull align 512 %C_copy_1, i32* nonnull align 512 %C_copy_2, i32* nonnull align 512 %C_copy_3, i32* nonnull align 512 %C_copy_4, i32* nonnull align 512 %C_copy_5, i32* nonnull align 512 %C_copy_6, i32* nonnull align 512 %C_copy_7, [8 x i32]* %3, i32* nonnull align 512 %X1_copy_0, i32* nonnull align 512 %X1_copy_1, i32* nonnull align 512 %X1_copy_2, i32* nonnull align 512 %X1_copy_3, i32* nonnull align 512 %X1_copy_4, i32* nonnull align 512 %X1_copy_5, i32* nonnull align 512 %X1_copy_6, i32* nonnull align 512 %X1_copy_7, [8 x i32]* %4, i32* nonnull align 512 %X2_copy_0, i32* nonnull align 512 %X2_copy_1, i32* nonnull align 512 %X2_copy_2, i32* nonnull align 512 %X2_copy_3, i32* nonnull align 512 %X2_copy_4, i32* nonnull align 512 %X2_copy_5, i32* nonnull align 512 %X2_copy_6, i32* nonnull align 512 %X2_copy_7, [8 x i32]* %5, i32* nonnull align 512 %D_copy_0, i32* nonnull align 512 %D_copy_1, i32* nonnull align 512 %D_copy_2, i32* nonnull align 512 %D_copy_3, i32* nonnull align 512 %D_copy_4, i32* nonnull align 512 %D_copy_5, i32* nonnull align 512 %D_copy_6, i32* nonnull align 512 %D_copy_7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.76.77(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [8 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [8 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i3
  switch i3 %5, label %dst.addr.case.7 [
    i3 0, label %dst.addr.case.0
    i3 1, label %dst.addr.case.1
    i3 2, label %dst.addr.case.2
    i3 3, label %dst.addr.case.3
    i3 -4, label %dst.addr.case.4
    i3 -3, label %dst.addr.case.5
    i3 -2, label %dst.addr.case.6
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %4, i32* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %4, i32* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %4, i32* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i32 %4, i32* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i32 %4, i32* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store i32 %4, i32* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %4, i32* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %4, i32* %_7, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x i32]* readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x i32]* readonly "orig.arg.no"="2", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [8 x i32]* readonly "orig.arg.no"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [8 x i32]* readonly "orig.arg.no"="6", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [8 x i32]* readonly "orig.arg.no"="8", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [8 x i32]* readonly "orig.arg.no"="10", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #2 {
entry:
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, [8 x i32]* %0)
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, [8 x i32]* %1)
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_09, i32* align 512 %_110, i32* align 512 %_211, i32* align 512 %_312, i32* align 512 %_413, i32* align 512 %_514, i32* align 512 %_615, i32* align 512 %_716, [8 x i32]* %2)
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_017, i32* align 512 %_118, i32* align 512 %_219, i32* align 512 %_320, i32* align 512 %_421, i32* align 512 %_522, i32* align 512 %_623, i32* align 512 %_724, [8 x i32]* %3)
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_025, i32* align 512 %_126, i32* align 512 %_227, i32* align 512 %_328, i32* align 512 %_429, i32* align 512 %_530, i32* align 512 %_631, i32* align 512 %_732, [8 x i32]* %4)
  call void @onebyonecpy_hls.p0a8i32.76.77(i32* align 512 %_033, i32* align 512 %_134, i32* align 512 %_235, i32* align 512 %_336, i32* align 512 %_437, i32* align 512 %_538, i32* align 512 %_639, i32* align 512 %_740, [8 x i32]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7) #1 {
entry:
  %1 = icmp eq [8 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i3
  switch i3 %4, label %src.addr.case.7 [
    i3 0, label %src.addr.case.0
    i3 1, label %src.addr.case.1
    i3 2, label %src.addr.case.2
    i3 3, label %src.addr.case.3
    i3 -4, label %src.addr.case.4
    i3 -3, label %src.addr.case.5
    i3 -2, label %src.addr.case.6
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i32, i32* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load i32, i32* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load i32, i32* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_45 = load i32, i32* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_56 = load i32, i32* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_67 = load i32, i32* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_78 = load i32, i32* %_7, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %5 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ], [ %_67, %src.addr.case.6 ], [ %_78, %src.addr.case.7 ]
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x i32]* "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x i32]* "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [8 x i32]* "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [8 x i32]* "orig.arg.no"="6", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [8 x i32]* "orig.arg.no"="8", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [8 x i32]* "orig.arg.no"="10", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #3 {
entry:
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %2, i32* align 512 %_09, i32* align 512 %_110, i32* align 512 %_211, i32* align 512 %_312, i32* align 512 %_413, i32* align 512 %_514, i32* align 512 %_615, i32* align 512 %_716)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %3, i32* align 512 %_017, i32* align 512 %_118, i32* align 512 %_219, i32* align 512 %_320, i32* align 512 %_421, i32* align 512 %_522, i32* align 512 %_623, i32* align 512 %_724)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %4, i32* align 512 %_025, i32* align 512 %_126, i32* align 512 %_227, i32* align 512 %_328, i32* align 512 %_429, i32* align 512 %_530, i32* align 512 %_631, i32* align 512 %_732)
  call void @onebyonecpy_hls.p0a8i32.82.83([8 x i32]* %5, i32* align 512 %_033, i32* align 512 %_134, i32* align 512 %_235, i32* align 512 %_336, i32* align 512 %_437, i32* align 512 %_538, i32* align 512 %_639, i32* align 512 %_740)
  ret void
}

declare void @apatb_kp_502_7_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

define void @kp_502_7_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #4 {
entry:
  %48 = alloca [8 x i32]
  %49 = alloca [8 x i32]
  %50 = alloca [8 x i32]
  %51 = alloca [8 x i32]
  %52 = alloca [8 x i32]
  %53 = alloca [8 x i32]
  call void @copy_out([8 x i32]* %48, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, [8 x i32]* %49, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [8 x i32]* %50, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, [8 x i32]* %51, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [8 x i32]* %52, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, [8 x i32]* %53, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47)
  %54 = bitcast [8 x i32]* %48 to i32*
  %55 = bitcast [8 x i32]* %49 to i32*
  %56 = bitcast [8 x i32]* %50 to i32*
  %57 = bitcast [8 x i32]* %51 to i32*
  %58 = bitcast [8 x i32]* %52 to i32*
  %59 = bitcast [8 x i32]* %53 to i32*
  call void @kp_502_7_hw_stub(i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59)
  call void @copy_in([8 x i32]* %48, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, [8 x i32]* %49, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [8 x i32]* %50, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, [8 x i32]* %51, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [8 x i32]* %52, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, [8 x i32]* %53, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47)
  ret void
}

declare void @kp_502_7_hw_stub(i32*, i32*, i32*, i32*, i32*, i32*)

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
