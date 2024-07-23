#ifndef CUDA_FUNCTIONS_MEASUREMENT_GETMEMINFO_H_
#define CUDA_FUNCTIONS_MEASUREMENT_GETMEMINFO_H_

#include <cuda_runtime.h>

#include <vector>

namespace measurement {

struct GpuMemoryInfo {
  size_t freeMemory;
  size_t totalMemory;
};

void printGpuMemoryInfo();

// NOTE(GideokKim): This function uses the CUDA runtime API.
std::vector<GpuMemoryInfo> getGpuMemoryInfo();

// NOTE(GideokKim): This function uses the CUDA driver API.
// TODO(GideokKim): The current build issue related to the CUDA driver API needs
// to be resolved. Comment out until resolved.
// std::vector<GpuMemoryInfo> getGpuMemoryInfo_v2();

cudaError_t getActivatedGpuMemInfo(size_t* free_mem, size_t* total_mem);

// cudaError_t getMemInfo(size_t* free_mem, size_t* total_mem);
}  // namespace measurement

#endif  // CUDA_FUNCTIONS_MEASUREMENT_GETMEMINFO_H_
