# Text Model Lab

High level diagram and descriptions below. Config files for ewach component in their respective folders.

## Purpose
* Demonstrate quick deployment of AI/LLM frontends and supporting components, allowing you to concentrate on actually using models.
* Ensure everything can run on-prem with NO external dependancies when using models.
* Reproducable structure for larger scale deployments.

## High Level Component Diagram

```mermaid
flowchart TD
 subgraph subGraph0["Docker - localhost:3000"]
        B["Redis"]
        A["OpenwebUI"]
  end
 subgraph subGraph1["Docker - localhost:3001"]
        D["Redis"]
        C["SearXNG"]
  end
 subgraph subGraph2["Caddy - ip:443"]
        E["ai.domain"]
        H["search.domain"]
        J["llama-swap.domain"]
  end
    A --> B & F["llama.swap"] & H & J
    C --> D
    E --> A
    H --> C
    F --> G["llama.cpp"]
    F --> K["vllm Docker"]
    I["User"] --> E
    I["User"] --> H
    I --> J
    J --> F

     I:::Aqua
    classDef Aqua stroke-width:1px, stroke-dasharray:none, stroke:#46EDC8, fill:#DEFFF8, color:#378E7A
    style F stroke:#FFE0B2
    style G stroke:#FFE0B2
    style subGraph2 stroke:#FFE0B2```
```

## External Projects and Components

* https://github.com/ggerganov/llama.cpp/
* https://github.com/mostlygeek/llama-swap


## Hardware
Current lab hardware. 
Note the GPU is adding a difficultly level if I did it again I'd use something better supported (NVIDIA or Apple M-Series), however the cost/RAM/tokens/sec ratio is pretty good.

* Intel(R) Xeon(R) W-1290 CPU @ 3.20GHz
* 128GB RAM
* Intel A770 16GB GPU
