#!/bin/sh

export CUDA_VISIBLE_DEVICES=""    # 全程 CPU，禁用 MPS/GPU
export PYTORCH_ENABLE_MPS_FALLBACK=1    # 让 PyTorch 在使用 MPS 时自动 fallback 到 CPU。这行其实不会生效，但以防万一
export MPLBACKEND=Agg    # 强制 matplotlib 使用 Agg 后端
export OMP_NUM_THREADS=1    # 限制 OpenMP 只开 1 个线程
export MKL_NUM_THREADS=1    # 限制 Intel MKL 只开 1 个线程

python infer-web.py
