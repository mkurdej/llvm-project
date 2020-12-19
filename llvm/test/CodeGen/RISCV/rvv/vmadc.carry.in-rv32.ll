; RUN: llc -mtriple=riscv32 -mattr=+experimental-v -verify-machineinstrs \
; RUN:   --riscv-no-aliases < %s | FileCheck %s
declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i8(
  <vscale x 1 x i8>,
  <vscale x 1 x i8>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i8_nxv1i8(<vscale x 1 x i8> %0, <vscale x 1 x i8> %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i8_nxv1i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf8,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i8(
    <vscale x 1 x i8> %0,
    <vscale x 1 x i8> %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i8(
  <vscale x 2 x i8>,
  <vscale x 2 x i8>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i8_nxv2i8(<vscale x 2 x i8> %0, <vscale x 2 x i8> %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i8_nxv2i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf4,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i8(
    <vscale x 2 x i8> %0,
    <vscale x 2 x i8> %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i8(
  <vscale x 4 x i8>,
  <vscale x 4 x i8>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i8_nxv4i8(<vscale x 4 x i8> %0, <vscale x 4 x i8> %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i8_nxv4i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i8(
    <vscale x 4 x i8> %0,
    <vscale x 4 x i8> %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i8(
  <vscale x 8 x i8>,
  <vscale x 8 x i8>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i8_nxv8i8(<vscale x 8 x i8> %0, <vscale x 8 x i8> %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i8_nxv8i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m1,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i8(
    <vscale x 8 x i8> %0,
    <vscale x 8 x i8> %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i8(
  <vscale x 16 x i8>,
  <vscale x 16 x i8>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i8_nxv16i8(<vscale x 16 x i8> %0, <vscale x 16 x i8> %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i8_nxv16i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i8(
    <vscale x 16 x i8> %0,
    <vscale x 16 x i8> %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.nxv32i8(
  <vscale x 32 x i8>,
  <vscale x 32 x i8>,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vvm_nxv32i1_nxv32i8_nxv32i8(<vscale x 32 x i8> %0, <vscale x 32 x i8> %1, <vscale x 32 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv32i1_nxv32i8_nxv32i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m4,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.nxv32i8(
    <vscale x 32 x i8> %0,
    <vscale x 32 x i8> %1,
    <vscale x 32 x i1> %2,
    i32 %3)

  ret <vscale x 32 x i1> %a
}

declare <vscale x 64 x i1> @llvm.riscv.vmadc.carry.in.nxv64i1.nxv64i8(
  <vscale x 64 x i8>,
  <vscale x 64 x i8>,
  <vscale x 64 x i1>,
  i32);

define <vscale x 64 x i1> @intrinsic_vmadc.carry.in_vvm_nxv64i1_nxv64i8_nxv64i8(<vscale x 64 x i8> %0, <vscale x 64 x i8> %1, <vscale x 64 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv64i1_nxv64i8_nxv64i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m8,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 64 x i1> @llvm.riscv.vmadc.carry.in.nxv64i1.nxv64i8(
    <vscale x 64 x i8> %0,
    <vscale x 64 x i8> %1,
    <vscale x 64 x i1> %2,
    i32 %3)

  ret <vscale x 64 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i16(
  <vscale x 1 x i16>,
  <vscale x 1 x i16>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i16_nxv1i16(<vscale x 1 x i16> %0, <vscale x 1 x i16> %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i16_nxv1i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf4,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i16(
    <vscale x 1 x i16> %0,
    <vscale x 1 x i16> %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i16(
  <vscale x 2 x i16>,
  <vscale x 2 x i16>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i16_nxv2i16(<vscale x 2 x i16> %0, <vscale x 2 x i16> %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i16_nxv2i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i16(
    <vscale x 2 x i16> %0,
    <vscale x 2 x i16> %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i16(
  <vscale x 4 x i16>,
  <vscale x 4 x i16>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i16_nxv4i16(<vscale x 4 x i16> %0, <vscale x 4 x i16> %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i16_nxv4i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m1,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i16(
    <vscale x 4 x i16> %0,
    <vscale x 4 x i16> %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i16(
  <vscale x 8 x i16>,
  <vscale x 8 x i16>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i16_nxv8i16(<vscale x 8 x i16> %0, <vscale x 8 x i16> %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i16_nxv8i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i16(
    <vscale x 8 x i16> %0,
    <vscale x 8 x i16> %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i16(
  <vscale x 16 x i16>,
  <vscale x 16 x i16>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i16_nxv16i16(<vscale x 16 x i16> %0, <vscale x 16 x i16> %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i16_nxv16i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m4,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i16(
    <vscale x 16 x i16> %0,
    <vscale x 16 x i16> %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.nxv32i16(
  <vscale x 32 x i16>,
  <vscale x 32 x i16>,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vvm_nxv32i1_nxv32i16_nxv32i16(<vscale x 32 x i16> %0, <vscale x 32 x i16> %1, <vscale x 32 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv32i1_nxv32i16_nxv32i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m8,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.nxv32i16(
    <vscale x 32 x i16> %0,
    <vscale x 32 x i16> %1,
    <vscale x 32 x i1> %2,
    i32 %3)

  ret <vscale x 32 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i32(
  <vscale x 1 x i32>,
  <vscale x 1 x i32>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i32_nxv1i32(<vscale x 1 x i32> %0, <vscale x 1 x i32> %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv1i1_nxv1i32_nxv1i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,mf2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.nxv1i32(
    <vscale x 1 x i32> %0,
    <vscale x 1 x i32> %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i32(
  <vscale x 2 x i32>,
  <vscale x 2 x i32>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i32_nxv2i32(<vscale x 2 x i32> %0, <vscale x 2 x i32> %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv2i1_nxv2i32_nxv2i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m1,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.nxv2i32(
    <vscale x 2 x i32> %0,
    <vscale x 2 x i32> %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i32(
  <vscale x 4 x i32>,
  <vscale x 4 x i32>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i32_nxv4i32(<vscale x 4 x i32> %0, <vscale x 4 x i32> %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv4i1_nxv4i32_nxv4i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m2,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.nxv4i32(
    <vscale x 4 x i32> %0,
    <vscale x 4 x i32> %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i32(
  <vscale x 8 x i32>,
  <vscale x 8 x i32>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i32_nxv8i32(<vscale x 8 x i32> %0, <vscale x 8 x i32> %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv8i1_nxv8i32_nxv8i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m4,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.nxv8i32(
    <vscale x 8 x i32> %0,
    <vscale x 8 x i32> %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i32(
  <vscale x 16 x i32>,
  <vscale x 16 x i32>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i32_nxv16i32(<vscale x 16 x i32> %0, <vscale x 16 x i32> %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vvm_nxv16i1_nxv16i32_nxv16i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m8,ta,mu
; CHECK:       vmadc.vvm {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.nxv16i32(
    <vscale x 16 x i32> %0,
    <vscale x 16 x i32> %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i8(
  <vscale x 1 x i8>,
  i8,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i8_i8(<vscale x 1 x i8> %0, i8 %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf8,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i8(
    <vscale x 1 x i8> %0,
    i8 %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i8(
  <vscale x 2 x i8>,
  i8,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i8_i8(<vscale x 2 x i8> %0, i8 %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf4,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i8(
    <vscale x 2 x i8> %0,
    i8 %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i8(
  <vscale x 4 x i8>,
  i8,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i8_i8(<vscale x 4 x i8> %0, i8 %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i8(
    <vscale x 4 x i8> %0,
    i8 %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i8(
  <vscale x 8 x i8>,
  i8,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i8_i8(<vscale x 8 x i8> %0, i8 %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m1,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i8(
    <vscale x 8 x i8> %0,
    i8 %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i8(
  <vscale x 16 x i8>,
  i8,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i8_i8(<vscale x 16 x i8> %0, i8 %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i8(
    <vscale x 16 x i8> %0,
    i8 %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i8(
  <vscale x 32 x i8>,
  i8,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vxm_nxv32i1_nxv32i8_i8(<vscale x 32 x i8> %0, i8 %1, <vscale x 32 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv32i1_nxv32i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m4,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i8(
    <vscale x 32 x i8> %0,
    i8 %1,
    <vscale x 32 x i1> %2,
    i32 %3)

  ret <vscale x 32 x i1> %a
}

declare <vscale x 64 x i1> @llvm.riscv.vmadc.carry.in.nxv64i1.i8(
  <vscale x 64 x i8>,
  i8,
  <vscale x 64 x i1>,
  i32);

define <vscale x 64 x i1> @intrinsic_vmadc.carry.in_vxm_nxv64i1_nxv64i8_i8(<vscale x 64 x i8> %0, i8 %1, <vscale x 64 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv64i1_nxv64i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m8,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 64 x i1> @llvm.riscv.vmadc.carry.in.nxv64i1.i8(
    <vscale x 64 x i8> %0,
    i8 %1,
    <vscale x 64 x i1> %2,
    i32 %3)

  ret <vscale x 64 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i16(
  <vscale x 1 x i16>,
  i16,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i16_i16(<vscale x 1 x i16> %0, i16 %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf4,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i16(
    <vscale x 1 x i16> %0,
    i16 %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i16(
  <vscale x 2 x i16>,
  i16,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i16_i16(<vscale x 2 x i16> %0, i16 %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i16(
    <vscale x 2 x i16> %0,
    i16 %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i16(
  <vscale x 4 x i16>,
  i16,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i16_i16(<vscale x 4 x i16> %0, i16 %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m1,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i16(
    <vscale x 4 x i16> %0,
    i16 %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i16(
  <vscale x 8 x i16>,
  i16,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i16_i16(<vscale x 8 x i16> %0, i16 %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i16(
    <vscale x 8 x i16> %0,
    i16 %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i16(
  <vscale x 16 x i16>,
  i16,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i16_i16(<vscale x 16 x i16> %0, i16 %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m4,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i16(
    <vscale x 16 x i16> %0,
    i16 %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i16(
  <vscale x 32 x i16>,
  i16,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vxm_nxv32i1_nxv32i16_i16(<vscale x 32 x i16> %0, i16 %1, <vscale x 32 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv32i1_nxv32i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m8,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i16(
    <vscale x 32 x i16> %0,
    i16 %1,
    <vscale x 32 x i1> %2,
    i32 %3)

  ret <vscale x 32 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i32(
  <vscale x 1 x i32>,
  i32,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i32_i32(<vscale x 1 x i32> %0, i32 %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv1i1_nxv1i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,mf2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i32(
    <vscale x 1 x i32> %0,
    i32 %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i32(
  <vscale x 2 x i32>,
  i32,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i32_i32(<vscale x 2 x i32> %0, i32 %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv2i1_nxv2i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m1,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i32(
    <vscale x 2 x i32> %0,
    i32 %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i32(
  <vscale x 4 x i32>,
  i32,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i32_i32(<vscale x 4 x i32> %0, i32 %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv4i1_nxv4i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m2,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i32(
    <vscale x 4 x i32> %0,
    i32 %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i32(
  <vscale x 8 x i32>,
  i32,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i32_i32(<vscale x 8 x i32> %0, i32 %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv8i1_nxv8i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m4,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i32(
    <vscale x 8 x i32> %0,
    i32 %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i32(
  <vscale x 16 x i32>,
  i32,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i32_i32(<vscale x 16 x i32> %0, i32 %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vxm_nxv16i1_nxv16i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m8,ta,mu
; CHECK:       vmadc.vxm {{v[0-9]+}}, {{v[0-9]+}}, {{a[0-9]+}}, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i32(
    <vscale x 16 x i32> %0,
    i32 %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x i1> %a
}

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i8_i8(<vscale x 1 x i8> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf8,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i8(
    <vscale x 1 x i8> %0,
    i8 9,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i1> %a
}

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i8_i8(<vscale x 2 x i8> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf4,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i8(
    <vscale x 2 x i8> %0,
    i8 -9,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i1> %a
}

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i8_i8(<vscale x 4 x i8> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,mf2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i8(
    <vscale x 4 x i8> %0,
    i8 9,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i1> %a
}

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i8_i8(<vscale x 8 x i8> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m1,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i8(
    <vscale x 8 x i8> %0,
    i8 -9,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i1> %a
}

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i8_i8(<vscale x 16 x i8> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i8(
    <vscale x 16 x i8> %0,
    i8 9,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i1> %a
}

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vim_nxv32i1_nxv32i8_i8(<vscale x 32 x i8> %0, <vscale x 32 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv32i1_nxv32i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m4,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i8(
    <vscale x 32 x i8> %0,
    i8 -9,
    <vscale x 32 x i1> %1,
    i32 %2)

  ret <vscale x 32 x i1> %a
}

define <vscale x 64 x i1> @intrinsic_vmadc.carry.in_vim_nxv64i1_nxv64i8_i8(<vscale x 64 x i8> %0, <vscale x 64 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv64i1_nxv64i8_i8
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e8,m8,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 64 x i1> @llvm.riscv.vmadc.carry.in.nxv64i1.i8(
    <vscale x 64 x i8> %0,
    i8 9,
    <vscale x 64 x i1> %1,
    i32 %2)

  ret <vscale x 64 x i1> %a
}

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i16_i16(<vscale x 1 x i16> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf4,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i16(
    <vscale x 1 x i16> %0,
    i16 -9,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i1> %a
}

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i16_i16(<vscale x 2 x i16> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,mf2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i16(
    <vscale x 2 x i16> %0,
    i16 9,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i1> %a
}

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i16_i16(<vscale x 4 x i16> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m1,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i16(
    <vscale x 4 x i16> %0,
    i16 -9,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i1> %a
}

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i16_i16(<vscale x 8 x i16> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i16(
    <vscale x 8 x i16> %0,
    i16 9,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i1> %a
}

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i16_i16(<vscale x 16 x i16> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m4,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i16(
    <vscale x 16 x i16> %0,
    i16 -9,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i1> %a
}

define <vscale x 32 x i1> @intrinsic_vmadc.carry.in_vim_nxv32i1_nxv32i16_i16(<vscale x 32 x i16> %0, <vscale x 32 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv32i1_nxv32i16_i16
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e16,m8,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 32 x i1> @llvm.riscv.vmadc.carry.in.nxv32i1.i16(
    <vscale x 32 x i16> %0,
    i16 9,
    <vscale x 32 x i1> %1,
    i32 %2)

  ret <vscale x 32 x i1> %a
}

define <vscale x 1 x i1> @intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i32_i32(<vscale x 1 x i32> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv1i1_nxv1i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,mf2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 1 x i1> @llvm.riscv.vmadc.carry.in.nxv1i1.i32(
    <vscale x 1 x i32> %0,
    i32 -9,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i1> %a
}

define <vscale x 2 x i1> @intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i32_i32(<vscale x 2 x i32> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv2i1_nxv2i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m1,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 2 x i1> @llvm.riscv.vmadc.carry.in.nxv2i1.i32(
    <vscale x 2 x i32> %0,
    i32 9,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i1> %a
}

define <vscale x 4 x i1> @intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i32_i32(<vscale x 4 x i32> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv4i1_nxv4i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m2,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 4 x i1> @llvm.riscv.vmadc.carry.in.nxv4i1.i32(
    <vscale x 4 x i32> %0,
    i32 -9,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i1> %a
}

define <vscale x 8 x i1> @intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i32_i32(<vscale x 8 x i32> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv8i1_nxv8i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m4,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, 9, v0
  %a = call <vscale x 8 x i1> @llvm.riscv.vmadc.carry.in.nxv8i1.i32(
    <vscale x 8 x i32> %0,
    i32 9,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i1> %a
}

define <vscale x 16 x i1> @intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i32_i32(<vscale x 16 x i32> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmadc.carry.in_vim_nxv16i1_nxv16i32_i32
; CHECK:       vsetvli {{.*}}, {{a[0-9]+}}, e32,m8,ta,mu
; CHECK:       vmadc.vim {{v[0-9]+}}, {{v[0-9]+}}, -9, v0
  %a = call <vscale x 16 x i1> @llvm.riscv.vmadc.carry.in.nxv16i1.i32(
    <vscale x 16 x i32> %0,
    i32 -9,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i1> %a
}
