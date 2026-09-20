# Parámetros de la ejecución

## Entorno

| Parámetro | Valor |
| --- | --- |
| Hardware | NVIDIA GeForce RTX 5070 de 12 GB VRAM |
| Runtime | llama.cpp b11053 |
| Servidor | llama-server |
| Interfaz | Llama UI |
| Modelo | Qwen 3.6 35B-A3B |
| Formato | GGUF |
| Cuantización | IQ2_XXS |
| Archivo usado | `E:\models\Qwen_Qwen3.6-35B-A3B-IQ2_XXS.gguf` |

## Inferencia

| Parámetro | Valor | Opción |
| --- | ---: | --- |
| Contexto | 16384 | `-c 16384` |
| Flash Attention | ON | `-fa on` |
| Caché K | q8_0 | `-ctk q8_0` |
| Caché V | q8_0 | `-ctv q8_0` |
| Batch | 256 | `-b 256` |
| uBatch | 128 | `-ub 128` |
| Parallel | 1 | `-np 1` |
| Ajuste de capas | Automático | `--fit on` |
| Temperatura | 0.6 | `--temp 0.6` |
| Top k | 20 | `--top-k 20` |
| Top p | 0.95 | `--top-p 0.95` |
| Predicción máxima | 8192 | `-n 8192` |
| Host | 127.0.0.1 | `--host 127.0.0.1` |
| Puerto | 8080 | `--port 8080` |

## Comando original de referencia

```powershell
& "E:\llama-b11053-bin-win-cuda-13.4-x64\llama-server.exe" `
  -m "E:\models\Qwen_Qwen3.6-35B-A3B-IQ2_XXS.gguf" `
  -c 16384 `
  -fa on `
  -ctk q8_0 `
  -ctv q8_0 `
  -b 256 `
  -ub 128 `
  -np 1 `
  --fit on `
  --temp 0.6 `
  --top-k 20 `
  --top-p 0.95 `
  -n 8192 `
  --host 127.0.0.1 `
  --port 8080
```

Las rutas son específicas del equipo utilizado. El script de `scripts` permite sustituirlas sin modificar los parámetros de inferencia.
