# Qwen 3.6 35B-A3B 144 T/S

Configuración reproducible utilizada para generar una landing completa con Qwen 3.6 35B-A3B GGUF IQ2_XXS mediante `llama.cpp` en una NVIDIA GeForce RTX 5070 de 12 GB.

En la ejecución documentada se generaron **7461 tokens en 52 segundos**, con una velocidad final de **141.96 tokens por segundo**. La salida terminó con `</html>` y se abrió en el navegador.

Este resultado corresponde a una ejecución concreta. No debe interpretarse como una garantía de rendimiento para todas las GPU de 12 GB.

## Configuración probada

| Componente | Valor |
| --- | --- |
| GPU | NVIDIA GeForce RTX 5070 de 12 GB |
| Runtime | llama.cpp b11053 |
| Interfaz | llama-server y Llama UI |
| Modelo | Qwen 3.6 35B-A3B |
| Cuantización | GGUF IQ2_XXS |
| Contexto | 16384 |
| Flash Attention | Activado |
| Caché K | q8_0 |
| Caché V | q8_0 |
| Batch | 256 |
| uBatch | 128 |
| Parallel | 1 |
| Capas de GPU | Automático con Fit |
| Temperatura | 0.6 |
| Top k | 20 |
| Top p | 0.95 |
| Predicción máxima | 8192 |

## Requisitos

- Windows y PowerShell.
- Una compilación compatible de `llama.cpp` con `llama-server`.
- El archivo `Qwen_Qwen3.6-35B-A3B-IQ2_XXS.gguf` obtenido por separado.
- Memoria y controladores suficientes para ejecutar la configuración. La prueba documentada se realizó en una RTX 5070 de 12 GB.

El modelo no se distribuye en este repositorio.

## Uso rápido

1. Descarga o compila `llama.cpp`.
2. Obtén el archivo GGUF del modelo.
3. Ejecuta el script indicando ambas rutas:

```powershell
.\scripts\start-server.ps1 `
  -LlamaServerPath "E:\llama-b11053-bin-win-cuda-13.4-x64\llama-server.exe" `
  -ModelPath "E:\models\Qwen_Qwen3.6-35B-A3B-IQ2_XXS.gguf"
```

4. Abre `http://127.0.0.1:8080`.
5. Copia el contenido de [`prompts/landing.md`](prompts/landing.md) en Llama UI.
6. Guarda la respuesta completa como archivo `.html` y ábrela en el navegador.

## Estructura

```text
config/parameters.md        Parámetros completos y comando de referencia
docs/production-report.docx Informe de producción y precisión editorial
evidence/run-result.md      Resultado medido y alcance de la prueba
output/README.md            Estado de los HTML original y corregido
prompts/landing.md          Prompt reproducible de la landing
scripts/start-server.ps1    Lanzador parametrizado para Windows
```

## Qué valida esta prueba

- La ejecución documentada generó código para una landing real en Llama UI.
- Produjo 7461 tokens en 52 segundos a 141.96 t/s.
- La salida llegó a la etiqueta `</html>` y pudo abrirse en el navegador.

## Límites

- IQ2_XXS es una cuantización agresiva.
- La velocidad corresponde exclusivamente al hardware, runtime, modelo y parámetros documentados.
- El rendimiento no debe generalizarse a todas las GPU NVIDIA de 12 GB.
- La versión funcional mostrada en el vídeo corrigió artefactos menores y un contador JavaScript que volvía a cero.

## Licencia

Este repositorio no incluye todavía una licencia. Hasta que se añada una, se mantienen los derechos de autor predeterminados.
