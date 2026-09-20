# Resultado de la ejecución

## Medición

| Métrica | Resultado |
| --- | ---: |
| Tokens generados | 7461 |
| Tiempo total | 52 segundos |
| Velocidad final | 141.96 tokens por segundo |
| Final estructural | `</html>` |
| Validación | Archivo abierto en navegador |

## Condiciones

- NVIDIA GeForce RTX 5070 de 12 GB.
- llama.cpp b11053 mediante llama-server y Llama UI.
- Qwen 3.6 35B-A3B GGUF IQ2_XXS.
- Contexto 16384, Flash Attention activado y cachés K y V en q8_0.
- Batch 256, uBatch 128, parallel 1 y Fit activado.
- Temperatura 0.6, top k 20, top p 0.95 y n-predict 8192.

## Interpretación

La medición procede de una generación real de código en Llama UI. No corresponde a llama-bench ni a un benchmark sintético.

El resultado no debe generalizarse a otras GPU, versiones del runtime, modelos, cuantizaciones o configuraciones.

La salida original terminó el archivo HTML y pudo abrirse en el navegador. Para la versión funcional mostrada se corrigieron artefactos menores y un contador JavaScript que volvía a cero.
