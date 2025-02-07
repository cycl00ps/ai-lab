# High Level Performance Numbers

**Note:** The A770 was running on Linux, while the 3080 Ti was running on Windows 11.

## llama.cpp Command

```bash
.\llama-server.exe --host 127.0.0.1 --port 8080 -m MODEL.gguf -n -1 --ignore-eos -e -ngl 80 -sm none -mg 0 --n-gpu-layers 66
```

## Data

| Model Name                              |Quantized| GGUF Size | 3080 Ti 12GB (t/s) | A770 16GB (t/s) |
|-----------------------------------------|----------|-----------|-------------------|-----------------|
| DeepSeek-R1-Distill-Qwen-32B-Q3_K_S     |3-bit     | ~14GB     | 3.24              | 4.96            |
| DeepSeek-R1-Distill-Qwen-14B-Q8_0       |8-bit     | ~15GB     | 3.86              | 8.52            |
| DeepSeek-R1-Distill-Qwen-14B-Q6_K       |6-bit     | ~12GB     | 7.20              | 12.71           |
| Microsoft-phi4-Q6_K                     |6-bit     | ~11GB     | 12.8              | 14.66           |
| Qwen2.5-Coder-14B-Instruct-Q6_K         |6-bit     | ~11GB     | 25.90             | 13.89           |
| Qwen2.5-14B-Instruct-1M-Q5_K            |5-bit     | ~10GB     | 46.1              | 10.10           |
| DeepSeek-R1-Distill-Qwen-14B-Q5_K       |5-bit     | ~10GB     | 36.29             | 10.23           |
| DeepSeek-R1-Distill-Qwen-7B-Q6_K        |6-bit     | ~6GB      | 95.36             | 28.06           |
