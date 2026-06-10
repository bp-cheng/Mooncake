// Device-side memory ordering primitives: platform-portable selector.
//
// Keep low-level device memory-ordering differences behind mc_* primitives.
// EP kernels should use these helpers instead of open-coding CUDA/MUSA
// load/store/fence details.
#pragma once

#ifdef MOONCAKE_EP_USE_MUSA
#include "transport/device/musa/musa_ops.cuh"
#else
#include "transport/device/cuda/cuda_ops.cuh"
#endif
