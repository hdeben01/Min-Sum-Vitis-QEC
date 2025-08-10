; ModuleID = '/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/krnl_row_operations/krnl_row_operations/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_compute_row_operations_ir([10 x float]* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" "maxi" %L, [10 x %"struct.ap_uint<1>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "maxi" %non_zero, %"struct.ap_uint<1>"* noalias nocapture nonnull readonly "maxi" %syndrome, i32 %size_checks, i32 %size_vnode) local_unnamed_addr #0 {
entry:
  %0 = bitcast [10 x float]* %L to [3 x [10 x float]]*
  %L_copy = alloca [3 x [10 x float]], align 512
  %1 = bitcast [10 x %"struct.ap_uint<1>"]* %non_zero to [3 x [10 x %"struct.ap_uint<1>"]]*
  %non_zero_copy = alloca [3 x [10 x i8]], align 512
  %syndrome_copy = alloca i1, align 512
  call fastcc void @copy_in([3 x [10 x float]]* nonnull %0, [3 x [10 x float]]* nonnull align 512 %L_copy, [3 x [10 x %"struct.ap_uint<1>"]]* nonnull %1, [3 x [10 x i8]]* nonnull align 512 %non_zero_copy, %"struct.ap_uint<1>"* nonnull %syndrome, i1* nonnull align 512 %syndrome_copy)
  call void @apatb_compute_row_operations_hw([3 x [10 x float]]* %L_copy, [3 x [10 x i8]]* %non_zero_copy, i1* %syndrome_copy, i32 %size_checks, i32 %size_vnode)
  call void @copy_back([3 x [10 x float]]* %0, [3 x [10 x float]]* %L_copy, [3 x [10 x %"struct.ap_uint<1>"]]* %1, [3 x [10 x i8]]* %non_zero_copy, %"struct.ap_uint<1>"* %syndrome, i1* %syndrome_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([3 x [10 x float]]* noalias readonly "unpacked"="0", [3 x [10 x float]]* noalias align 512 "unpacked"="1", [3 x [10 x %"struct.ap_uint<1>"]]* noalias readonly "unpacked"="2", [3 x [10 x i8]]* noalias align 512 "unpacked"="3", %"struct.ap_uint<1>"* noalias readonly "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a10f32([3 x [10 x float]]* align 512 %1, [3 x [10 x float]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a3a10struct.ap_uint<1>.42"([3 x [10 x i8]]* align 512 %3, [3 x [10 x %"struct.ap_uint<1>"]]* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* align 512 %5, %"struct.ap_uint<1>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a3a10f32([3 x [10 x float]]* noalias align 512 %dst, [3 x [10 x float]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [10 x float]]* %dst, null
  %1 = icmp eq [3 x [10 x float]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3a10f32([3 x [10 x float]]* nonnull %dst, [3 x [10 x float]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a10f32([3 x [10 x float]]* %dst, [3 x [10 x float]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [10 x float]]* %src, null
  %1 = icmp eq [3 x [10 x float]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [10 x float]], [3 x [10 x float]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [10 x float]], [3 x [10 x float]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a10f32([10 x float]* %dst.addr, [10 x float]* %src.addr, i64 10)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a10f32([10 x float]* %dst, [10 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x float]* %src, null
  %1 = icmp eq [10 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x float], [10 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [10 x float], [10 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0a3a10struct.ap_uint<1>"([3 x [10 x %"struct.ap_uint<1>"]]* noalias %dst, [3 x [10 x i8]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [10 x %"struct.ap_uint<1>"]]* %dst, null
  %1 = icmp eq [3 x [10 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3a10struct.ap_uint<1>"([3 x [10 x %"struct.ap_uint<1>"]]* nonnull %dst, [3 x [10 x i8]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a10struct.ap_uint<1>"([3 x [10 x %"struct.ap_uint<1>"]]* %dst, [3 x [10 x i8]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [10 x i8]]* %src, null
  %1 = icmp eq [3 x [10 x %"struct.ap_uint<1>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [10 x %"struct.ap_uint<1>"]], [3 x [10 x %"struct.ap_uint<1>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [3 x [10 x i8]], [3 x [10 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a10struct.ap_uint<1>"([10 x %"struct.ap_uint<1>"]* %dst.addr, [10 x i8]* %3, i64 10)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_uint<1>"([10 x %"struct.ap_uint<1>"]* %dst, [10 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x i8]* %src, null
  %1 = icmp eq [10 x %"struct.ap_uint<1>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [10 x i8], [10 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [10 x %"struct.ap_uint<1>"], [10 x %"struct.ap_uint<1>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = call i1 @_llvm.fpga.unpack.none.i1.i8(i8 %4)
  store i1 %5, i1* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([3 x [10 x float]]* noalias "unpacked"="0", [3 x [10 x float]]* noalias readonly align 512 "unpacked"="1", [3 x [10 x %"struct.ap_uint<1>"]]* noalias "unpacked"="2", [3 x [10 x i8]]* noalias readonly align 512 "unpacked"="3", %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a10f32([3 x [10 x float]]* %0, [3 x [10 x float]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a3a10struct.ap_uint<1>"([3 x [10 x %"struct.ap_uint<1>"]]* %2, [3 x [10 x i8]]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.33"(%"struct.ap_uint<1>"* %4, i1* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.33"(%"struct.ap_uint<1>"* noalias "unpacked"="0" %dst, i1* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @_llvm.fpga.unpack.none.i1.i8(i8 %A) #5 {
  %A.cast = trunc i8 %A to i1
  ret i1 %A.cast
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3a10struct.ap_uint<1>.42"([3 x [10 x i8]]* noalias align 512 %dst, [3 x [10 x %"struct.ap_uint<1>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [10 x i8]]* %dst, null
  %1 = icmp eq [3 x [10 x %"struct.ap_uint<1>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3a10struct.ap_uint<1>.45"([3 x [10 x i8]]* nonnull %dst, [3 x [10 x %"struct.ap_uint<1>"]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3a10struct.ap_uint<1>.45"([3 x [10 x i8]]* %dst, [3 x [10 x %"struct.ap_uint<1>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [10 x %"struct.ap_uint<1>"]]* %src, null
  %1 = icmp eq [3 x [10 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x [10 x i8]], [3 x [10 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [10 x %"struct.ap_uint<1>"]], [3 x [10 x %"struct.ap_uint<1>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a10struct.ap_uint<1>.48"([10 x i8]* %3, [10 x %"struct.ap_uint<1>"]* %src.addr, i64 10)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_uint<1>.48"([10 x i8]* %dst, [10 x %"struct.ap_uint<1>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x %"struct.ap_uint<1>"]* %src, null
  %1 = icmp eq [10 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [10 x %"struct.ap_uint<1>"], [10 x %"struct.ap_uint<1>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [10 x i8], [10 x i8]* %dst, i64 0, i64 %for.loop.idx8
  %4 = bitcast i1* %src.addr.0.0.05 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %3, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_compute_row_operations_hw([3 x [10 x float]]*, [3 x [10 x i8]]*, i1*, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([3 x [10 x float]]* noalias "unpacked"="0", [3 x [10 x float]]* noalias readonly align 512 "unpacked"="1", [3 x [10 x %"struct.ap_uint<1>"]]* noalias "unpacked"="2", [3 x [10 x i8]]* noalias readonly align 512 "unpacked"="3", %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a10f32([3 x [10 x float]]* %0, [3 x [10 x float]]* align 512 %1)
  ret void
}

declare void @compute_row_operations_hw_stub([10 x float]* noalias nocapture nonnull, [10 x %"struct.ap_uint<1>"]* noalias nocapture nonnull readonly, %"struct.ap_uint<1>"* noalias nocapture nonnull readonly, i32, i32)

define void @compute_row_operations_hw_stub_wrapper([3 x [10 x float]]*, [3 x [10 x i8]]*, i1*, i32, i32) #6 {
entry:
  %5 = call i8* @malloc(i64 30)
  %6 = bitcast i8* %5 to [3 x [10 x %"struct.ap_uint<1>"]]*
  %7 = call i8* @malloc(i64 1)
  %8 = bitcast i8* %7 to %"struct.ap_uint<1>"*
  call void @copy_out([3 x [10 x float]]* null, [3 x [10 x float]]* %0, [3 x [10 x %"struct.ap_uint<1>"]]* %6, [3 x [10 x i8]]* %1, %"struct.ap_uint<1>"* %8, i1* %2)
  %9 = bitcast [3 x [10 x float]]* %0 to [10 x float]*
  %10 = bitcast [3 x [10 x %"struct.ap_uint<1>"]]* %6 to [10 x %"struct.ap_uint<1>"]*
  call void @compute_row_operations_hw_stub([10 x float]* %9, [10 x %"struct.ap_uint<1>"]* %10, %"struct.ap_uint<1>"* %8, i32 %3, i32 %4)
  call void @copy_in([3 x [10 x float]]* null, [3 x [10 x float]]* %0, [3 x [10 x %"struct.ap_uint<1>"]]* %6, [3 x [10 x i8]]* %1, %"struct.ap_uint<1>"* %8, i1* %2)
  call void @free(i8* %5)
  call void @free(i8* %7)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
