; ModuleID = '/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/hls_krnl_compute_check_to_value_msg/compute_check_to_value/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_compute_check_to_value_ir([40 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="20" "maxi" %L, i32* noalias nocapture nonnull readonly "fpga.vla" "maxi" %syndrome, [40 x float]* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" "maxi" %out, i32 %size_checks, i32 %size_vnode) local_unnamed_addr #0 {
entry:
  %0 = bitcast [40 x float]* %L to [20 x [40 x float]]*
  %L_copy = alloca [20 x [40 x float]], align 512
  %1 = zext i32 %size_vnode to i64
  %2 = mul i64 4, %1
  %3 = call i8* @malloc(i64 %2)
  %syndrome_copy = bitcast i8* %3 to i32*
  %4 = bitcast [40 x float]* %out to [20 x [40 x float]]*
  %out_copy = alloca [20 x [40 x float]], align 512
  call fastcc void @copy_in([20 x [40 x float]]* nonnull %0, [20 x [40 x float]]* nonnull align 512 %L_copy, i32* nonnull %syndrome, i32* %syndrome_copy, i64 %1, [20 x [40 x float]]* nonnull %4, [20 x [40 x float]]* nonnull align 512 %out_copy)
  call void @apatb_compute_check_to_value_hw([20 x [40 x float]]* %L_copy, i32* %syndrome_copy, [20 x [40 x float]]* %out_copy, i32 %size_checks, i32 %size_vnode, i64 %2, i64 %1)
  call void @copy_back([20 x [40 x float]]* %0, [20 x [40 x float]]* %L_copy, i32* %syndrome, i32* %syndrome_copy, i64 %1, [20 x [40 x float]]* %4, [20 x [40 x float]]* %out_copy)
  tail call void @free(i8* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([20 x [40 x float]]* readonly, [20 x [40 x float]]* align 512, i32* readonly "fpga.vla", i32* "fpga.vla", i64, [20 x [40 x float]]* readonly, [20 x [40 x float]]* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* align 512 %1, [20 x [40 x float]]* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %3, i32* %2, i64 %4)
  call fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* align 512 %6, [20 x [40 x float]]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* align 512 %dst, [20 x [40 x float]]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [20 x [40 x float]]* %dst, null
  %1 = icmp eq [20 x [40 x float]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a20a40f32([20 x [40 x float]]* nonnull %dst, [20 x [40 x float]]* nonnull %src, i64 20)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a20a40f32([20 x [40 x float]]* %dst, [20 x [40 x float]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [20 x [40 x float]]* %src, null
  %1 = icmp eq [20 x [40 x float]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [20 x [40 x float]], [20 x [40 x float]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [20 x [40 x float]], [20 x [40 x float]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a40f32([40 x float]* %dst.addr, [40 x float]* %src.addr, i64 40)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a40f32([40 x float]* %dst, [40 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [40 x float]* %src, null
  %1 = icmp eq [40 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [40 x float], [40 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [40 x float], [40 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* %dst, i32* readonly %src, i64 %depth) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = bitcast i32* %dst to [1 x i32]*
  %4 = bitcast i32* %src to [1 x i32]*
  call void @arraycpy_hls.p0a1i32([1 x i32]* %3, [1 x i32]* %4, i64 %depth)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1i32([1 x i32]* %dst, [1 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x i32]* %src, null
  %1 = icmp eq [1 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x i32], [1 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x i32], [1 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([20 x [40 x float]]*, [20 x [40 x float]]* readonly align 512, i32* "fpga.vla", i32* readonly "fpga.vla", i64, [20 x [40 x float]]*, [20 x [40 x float]]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* %0, [20 x [40 x float]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* %3, i64 %4)
  call fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* %5, [20 x [40 x float]]* align 512 %6)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_compute_check_to_value_hw([20 x [40 x float]]*, i32* "fpga.vla", [20 x [40 x float]]*, i32, i32, i64, i64)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([20 x [40 x float]]*, [20 x [40 x float]]* readonly align 512, i32* "fpga.vla", i32* readonly "fpga.vla", i64, [20 x [40 x float]]*, [20 x [40 x float]]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a40f32([20 x [40 x float]]* %5, [20 x [40 x float]]* align 512 %6)
  ret void
}

declare void @compute_check_to_value_hw_stub([40 x float]* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, [40 x float]* noalias nocapture nonnull, i32, i32)

define void @compute_check_to_value_hw_stub_wrapper([20 x [40 x float]]*, i32*, [20 x [40 x float]]*, i32, i32, i64, i64) #5 {
entry:
  call void @copy_out([20 x [40 x float]]* null, [20 x [40 x float]]* %0, i32* null, i32* %1, i64 %6, [20 x [40 x float]]* null, [20 x [40 x float]]* %2)
  %7 = bitcast [20 x [40 x float]]* %0 to [40 x float]*
  %8 = bitcast [20 x [40 x float]]* %2 to [40 x float]*
  call void @compute_check_to_value_hw_stub([40 x float]* %7, i32* %1, [40 x float]* %8, i32 %3, i32 %4)
  call void @copy_in([20 x [40 x float]]* null, [20 x [40 x float]]* %0, i32* null, i32* %1, i64 %6, [20 x [40 x float]]* null, [20 x [40 x float]]* %2)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
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
