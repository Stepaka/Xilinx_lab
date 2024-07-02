; ModuleID = 'G:/Xilinx_lab/KP_502_7_v2/kp_502_7/sol2_6/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_kp_502_7_ir(double* %A, double* %B, double* %C, double* %X1, double* %X2, double* %D) local_unnamed_addr #0 {
entry:
  %A_copy_0 = alloca double, align 512
  %A_copy_1 = alloca double, align 512
  %A_copy_2 = alloca double, align 512
  %A_copy_3 = alloca double, align 512
  %A_copy_4 = alloca double, align 512
  %A_copy_5 = alloca double, align 512
  %A_copy_6 = alloca double, align 512
  %A_copy_7 = alloca double, align 512
  %B_copy_0 = alloca double, align 512
  %B_copy_1 = alloca double, align 512
  %B_copy_2 = alloca double, align 512
  %B_copy_3 = alloca double, align 512
  %B_copy_4 = alloca double, align 512
  %B_copy_5 = alloca double, align 512
  %B_copy_6 = alloca double, align 512
  %B_copy_7 = alloca double, align 512
  %C_copy_0 = alloca double, align 512
  %C_copy_1 = alloca double, align 512
  %C_copy_2 = alloca double, align 512
  %C_copy_3 = alloca double, align 512
  %C_copy_4 = alloca double, align 512
  %C_copy_5 = alloca double, align 512
  %C_copy_6 = alloca double, align 512
  %C_copy_7 = alloca double, align 512
  %X1_copy_0 = alloca double, align 512
  %X1_copy_1 = alloca double, align 512
  %X1_copy_2 = alloca double, align 512
  %X1_copy_3 = alloca double, align 512
  %X1_copy_4 = alloca double, align 512
  %X1_copy_5 = alloca double, align 512
  %X1_copy_6 = alloca double, align 512
  %X1_copy_7 = alloca double, align 512
  %X2_copy_0 = alloca double, align 512
  %X2_copy_1 = alloca double, align 512
  %X2_copy_2 = alloca double, align 512
  %X2_copy_3 = alloca double, align 512
  %X2_copy_4 = alloca double, align 512
  %X2_copy_5 = alloca double, align 512
  %X2_copy_6 = alloca double, align 512
  %X2_copy_7 = alloca double, align 512
  %D_copy_0 = alloca double, align 512
  %D_copy_1 = alloca double, align 512
  %D_copy_2 = alloca double, align 512
  %D_copy_3 = alloca double, align 512
  %D_copy_4 = alloca double, align 512
  %D_copy_5 = alloca double, align 512
  %D_copy_6 = alloca double, align 512
  %D_copy_7 = alloca double, align 512
  %0 = bitcast double* %A to [8 x double]*
  %1 = bitcast double* %B to [8 x double]*
  %2 = bitcast double* %C to [8 x double]*
  %3 = bitcast double* %X1 to [8 x double]*
  %4 = bitcast double* %X2 to [8 x double]*
  %5 = bitcast double* %D to [8 x double]*
  call void @copy_in([8 x double]* %0, double* nonnull align 512 %A_copy_0, double* nonnull align 512 %A_copy_1, double* nonnull align 512 %A_copy_2, double* nonnull align 512 %A_copy_3, double* nonnull align 512 %A_copy_4, double* nonnull align 512 %A_copy_5, double* nonnull align 512 %A_copy_6, double* nonnull align 512 %A_copy_7, [8 x double]* %1, double* nonnull align 512 %B_copy_0, double* nonnull align 512 %B_copy_1, double* nonnull align 512 %B_copy_2, double* nonnull align 512 %B_copy_3, double* nonnull align 512 %B_copy_4, double* nonnull align 512 %B_copy_5, double* nonnull align 512 %B_copy_6, double* nonnull align 512 %B_copy_7, [8 x double]* %2, double* nonnull align 512 %C_copy_0, double* nonnull align 512 %C_copy_1, double* nonnull align 512 %C_copy_2, double* nonnull align 512 %C_copy_3, double* nonnull align 512 %C_copy_4, double* nonnull align 512 %C_copy_5, double* nonnull align 512 %C_copy_6, double* nonnull align 512 %C_copy_7, [8 x double]* %3, double* nonnull align 512 %X1_copy_0, double* nonnull align 512 %X1_copy_1, double* nonnull align 512 %X1_copy_2, double* nonnull align 512 %X1_copy_3, double* nonnull align 512 %X1_copy_4, double* nonnull align 512 %X1_copy_5, double* nonnull align 512 %X1_copy_6, double* nonnull align 512 %X1_copy_7, [8 x double]* %4, double* nonnull align 512 %X2_copy_0, double* nonnull align 512 %X2_copy_1, double* nonnull align 512 %X2_copy_2, double* nonnull align 512 %X2_copy_3, double* nonnull align 512 %X2_copy_4, double* nonnull align 512 %X2_copy_5, double* nonnull align 512 %X2_copy_6, double* nonnull align 512 %X2_copy_7, [8 x double]* %5, double* nonnull align 512 %D_copy_0, double* nonnull align 512 %D_copy_1, double* nonnull align 512 %D_copy_2, double* nonnull align 512 %D_copy_3, double* nonnull align 512 %D_copy_4, double* nonnull align 512 %D_copy_5, double* nonnull align 512 %D_copy_6, double* nonnull align 512 %D_copy_7)
  call void @apatb_kp_502_7_hw(double* %A_copy_0, double* %A_copy_1, double* %A_copy_2, double* %A_copy_3, double* %A_copy_4, double* %A_copy_5, double* %A_copy_6, double* %A_copy_7, double* %B_copy_0, double* %B_copy_1, double* %B_copy_2, double* %B_copy_3, double* %B_copy_4, double* %B_copy_5, double* %B_copy_6, double* %B_copy_7, double* %C_copy_0, double* %C_copy_1, double* %C_copy_2, double* %C_copy_3, double* %C_copy_4, double* %C_copy_5, double* %C_copy_6, double* %C_copy_7, double* %X1_copy_0, double* %X1_copy_1, double* %X1_copy_2, double* %X1_copy_3, double* %X1_copy_4, double* %X1_copy_5, double* %X1_copy_6, double* %X1_copy_7, double* %X2_copy_0, double* %X2_copy_1, double* %X2_copy_2, double* %X2_copy_3, double* %X2_copy_4, double* %X2_copy_5, double* %X2_copy_6, double* %X2_copy_7, double* %D_copy_0, double* %D_copy_1, double* %D_copy_2, double* %D_copy_3, double* %D_copy_4, double* %D_copy_5, double* %D_copy_6, double* %D_copy_7)
  call void @copy_out([8 x double]* %0, double* nonnull align 512 %A_copy_0, double* nonnull align 512 %A_copy_1, double* nonnull align 512 %A_copy_2, double* nonnull align 512 %A_copy_3, double* nonnull align 512 %A_copy_4, double* nonnull align 512 %A_copy_5, double* nonnull align 512 %A_copy_6, double* nonnull align 512 %A_copy_7, [8 x double]* %1, double* nonnull align 512 %B_copy_0, double* nonnull align 512 %B_copy_1, double* nonnull align 512 %B_copy_2, double* nonnull align 512 %B_copy_3, double* nonnull align 512 %B_copy_4, double* nonnull align 512 %B_copy_5, double* nonnull align 512 %B_copy_6, double* nonnull align 512 %B_copy_7, [8 x double]* %2, double* nonnull align 512 %C_copy_0, double* nonnull align 512 %C_copy_1, double* nonnull align 512 %C_copy_2, double* nonnull align 512 %C_copy_3, double* nonnull align 512 %C_copy_4, double* nonnull align 512 %C_copy_5, double* nonnull align 512 %C_copy_6, double* nonnull align 512 %C_copy_7, [8 x double]* %3, double* nonnull align 512 %X1_copy_0, double* nonnull align 512 %X1_copy_1, double* nonnull align 512 %X1_copy_2, double* nonnull align 512 %X1_copy_3, double* nonnull align 512 %X1_copy_4, double* nonnull align 512 %X1_copy_5, double* nonnull align 512 %X1_copy_6, double* nonnull align 512 %X1_copy_7, [8 x double]* %4, double* nonnull align 512 %X2_copy_0, double* nonnull align 512 %X2_copy_1, double* nonnull align 512 %X2_copy_2, double* nonnull align 512 %X2_copy_3, double* nonnull align 512 %X2_copy_4, double* nonnull align 512 %X2_copy_5, double* nonnull align 512 %X2_copy_6, double* nonnull align 512 %X2_copy_7, [8 x double]* %5, double* nonnull align 512 %D_copy_0, double* nonnull align 512 %D_copy_1, double* nonnull align 512 %D_copy_2, double* nonnull align 512 %D_copy_3, double* nonnull align 512 %D_copy_4, double* nonnull align 512 %D_copy_5, double* nonnull align 512 %D_copy_6, double* nonnull align 512 %D_copy_7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8f64.3.4(double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [8 x double]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq double* %_0, null
  %2 = icmp eq [8 x double]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [8 x double], [8 x double]* %0, i64 0, i64 %for.loop.idx1
  %4 = load double, double* %src.addr, align 8
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
  store double %4, double* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store double %4, double* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store double %4, double* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store double %4, double* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store double %4, double* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store double %4, double* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store double %4, double* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store double %4, double* %_7, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x double]* readonly "orig.arg.no"="0", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x double]* readonly "orig.arg.no"="2", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [8 x double]* readonly "orig.arg.no"="4", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [8 x double]* readonly "orig.arg.no"="6", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [8 x double]* readonly "orig.arg.no"="8", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [8 x double]* readonly "orig.arg.no"="10", double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, double* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #2 {
entry:
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_0, double* align 512 %_1, double* align 512 %_2, double* align 512 %_3, double* align 512 %_4, double* align 512 %_5, double* align 512 %_6, double* align 512 %_7, [8 x double]* %0)
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_01, double* align 512 %_12, double* align 512 %_23, double* align 512 %_34, double* align 512 %_45, double* align 512 %_56, double* align 512 %_67, double* align 512 %_78, [8 x double]* %1)
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_09, double* align 512 %_110, double* align 512 %_211, double* align 512 %_312, double* align 512 %_413, double* align 512 %_514, double* align 512 %_615, double* align 512 %_716, [8 x double]* %2)
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_017, double* align 512 %_118, double* align 512 %_219, double* align 512 %_320, double* align 512 %_421, double* align 512 %_522, double* align 512 %_623, double* align 512 %_724, [8 x double]* %3)
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_025, double* align 512 %_126, double* align 512 %_227, double* align 512 %_328, double* align 512 %_429, double* align 512 %_530, double* align 512 %_631, double* align 512 %_732, [8 x double]* %4)
  call void @onebyonecpy_hls.p0a8f64.3.4(double* align 512 %_033, double* align 512 %_134, double* align 512 %_235, double* align 512 %_336, double* align 512 %_437, double* align 512 %_538, double* align 512 %_639, double* align 512 %_740, [8 x double]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7) #1 {
entry:
  %1 = icmp eq [8 x double]* %0, null
  %2 = icmp eq double* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [8 x double], [8 x double]* %0, i64 0, i64 %for.loop.idx1
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
  %_01 = load double, double* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load double, double* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load double, double* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load double, double* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_45 = load double, double* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_56 = load double, double* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_67 = load double, double* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_78 = load double, double* %_7, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %5 = phi double [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ], [ %_67, %src.addr.case.6 ], [ %_78, %src.addr.case.7 ]
  store double %5, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x double]* "orig.arg.no"="0", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [8 x double]* "orig.arg.no"="2", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_45, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_56, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_67, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_78, [8 x double]* "orig.arg.no"="4", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_09, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_110, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_211, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_312, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_413, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_514, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_615, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_716, [8 x double]* "orig.arg.no"="6", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_017, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_118, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_219, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_320, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_421, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_522, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_623, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_724, [8 x double]* "orig.arg.no"="8", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_025, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_126, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_227, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_328, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_429, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_530, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_631, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_732, [8 x double]* "orig.arg.no"="10", double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_033, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_134, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_235, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_336, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_437, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_538, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_639, double* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_740) #3 {
entry:
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %0, double* align 512 %_0, double* align 512 %_1, double* align 512 %_2, double* align 512 %_3, double* align 512 %_4, double* align 512 %_5, double* align 512 %_6, double* align 512 %_7)
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %1, double* align 512 %_01, double* align 512 %_12, double* align 512 %_23, double* align 512 %_34, double* align 512 %_45, double* align 512 %_56, double* align 512 %_67, double* align 512 %_78)
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %2, double* align 512 %_09, double* align 512 %_110, double* align 512 %_211, double* align 512 %_312, double* align 512 %_413, double* align 512 %_514, double* align 512 %_615, double* align 512 %_716)
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %3, double* align 512 %_017, double* align 512 %_118, double* align 512 %_219, double* align 512 %_320, double* align 512 %_421, double* align 512 %_522, double* align 512 %_623, double* align 512 %_724)
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %4, double* align 512 %_025, double* align 512 %_126, double* align 512 %_227, double* align 512 %_328, double* align 512 %_429, double* align 512 %_530, double* align 512 %_631, double* align 512 %_732)
  call void @onebyonecpy_hls.p0a8f64.9.10([8 x double]* %5, double* align 512 %_033, double* align 512 %_134, double* align 512 %_235, double* align 512 %_336, double* align 512 %_437, double* align 512 %_538, double* align 512 %_639, double* align 512 %_740)
  ret void
}

declare void @apatb_kp_502_7_hw(double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*)

define void @kp_502_7_hw_stub_wrapper(double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*) #4 {
entry:
  %48 = alloca [8 x double]
  %49 = alloca [8 x double]
  %50 = alloca [8 x double]
  %51 = alloca [8 x double]
  %52 = alloca [8 x double]
  %53 = alloca [8 x double]
  call void @copy_out([8 x double]* %48, double* %0, double* %1, double* %2, double* %3, double* %4, double* %5, double* %6, double* %7, [8 x double]* %49, double* %8, double* %9, double* %10, double* %11, double* %12, double* %13, double* %14, double* %15, [8 x double]* %50, double* %16, double* %17, double* %18, double* %19, double* %20, double* %21, double* %22, double* %23, [8 x double]* %51, double* %24, double* %25, double* %26, double* %27, double* %28, double* %29, double* %30, double* %31, [8 x double]* %52, double* %32, double* %33, double* %34, double* %35, double* %36, double* %37, double* %38, double* %39, [8 x double]* %53, double* %40, double* %41, double* %42, double* %43, double* %44, double* %45, double* %46, double* %47)
  %54 = bitcast [8 x double]* %48 to double*
  %55 = bitcast [8 x double]* %49 to double*
  %56 = bitcast [8 x double]* %50 to double*
  %57 = bitcast [8 x double]* %51 to double*
  %58 = bitcast [8 x double]* %52 to double*
  %59 = bitcast [8 x double]* %53 to double*
  call void @kp_502_7_hw_stub(double* %54, double* %55, double* %56, double* %57, double* %58, double* %59)
  call void @copy_in([8 x double]* %48, double* %0, double* %1, double* %2, double* %3, double* %4, double* %5, double* %6, double* %7, [8 x double]* %49, double* %8, double* %9, double* %10, double* %11, double* %12, double* %13, double* %14, double* %15, [8 x double]* %50, double* %16, double* %17, double* %18, double* %19, double* %20, double* %21, double* %22, double* %23, [8 x double]* %51, double* %24, double* %25, double* %26, double* %27, double* %28, double* %29, double* %30, double* %31, [8 x double]* %52, double* %32, double* %33, double* %34, double* %35, double* %36, double* %37, double* %38, double* %39, [8 x double]* %53, double* %40, double* %41, double* %42, double* %43, double* %44, double* %45, double* %46, double* %47)
  ret void
}

declare void @kp_502_7_hw_stub(double*, double*, double*, double*, double*, double*)

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
