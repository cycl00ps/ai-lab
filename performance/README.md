# High Level Perf Numbers

Note the A770 was running on Linux and the 3080Ti on Windows 11.

### llama.cpp command
.\llama-server.exe --host 127.0.0.1 --port 8080 -m MODEL.gguf -n -1 --ignore-eos -e -ngl 80 -sm none -mg 0 --n-gpu-layers 66

### Data

DeepSeek-R1-Distill-Qwen-32B-Q3_K_S
GGUF Size: ~14GB
3080 Ti 12GB:  3.24 t/s
A770 16GB:  4.96 t/s

DeepSeek-R1-Distill-Qwen-14B-Q8_0
GGUF Size: ~15GB
3080 Ti 12GB: 3.86 t/s
A770 16GB: 8.52 t/s

DeepSeek-R1-Distill-Qwen-14B-Q6_K
GGUF Size: ~12GB
3080 Ti 12GB: 7.20 t/s
A770 16GB: 12.71 t/s

Microsoft-phi4-Q6_K.gguf
GGUF Size: ~11GB
3080 Ti 12GB: 12.8 t/s
A770 16GB: 14.66t/s

Qwen2.5-Coder-14B-Instruct-Q6_K
GGUF Size: ~11GB
3080 Ti 12GB: 25.90 t/s
A770 16GB: 13.89 t/s

Qwen2.5-14B-Instruct-1M-Q5_K
GGUF Size: ~10GB
3080 Ti 12GB: 46.1t/s
A770 16GB: 10.1t/s

DeepSeek-R1-Distill-Qwen-14B-Q5_K
GGUF Size: ~10GB
3080 Ti 12GB: 36.29 t/s
A770 16GB: 10.23 t/s

DeepSeek-R1-Distill-Qwen-7B-Q6_K
GGUF Size: ~6GB
3080 Ti 12GB: 95.36 t/s
A770 16GB: 28.06 t/s 
