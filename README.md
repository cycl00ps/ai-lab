# AI Model Lab

High level diagram and descriptions below. Config files for ewach component in their respective folders.

## Purpose
* Demonstrate quick deployment of AI/LLM frontends and supporting components, allowing you to concentrate on actually using models.
* Ensure everything can run on-prem with NO external dependancies when using models.
* Allow for "boost" capacity in the cloud allowing interaction with larger models.
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
        Y["bedrock.domain"]
  end
 subgraph subGraph3["Docker - localhost:3003"]
        K["vllm"]
  end
 subgraph subGraph4["Docker - localhost:3002"]
        L["AWS bedrock-access-gateway"]
  end

    A --> B & H & J & L
    C --> D
    E --> A
    H --> C
    F["llama-swap"] --> G["llama.cpp"]
    F["llama-swap"] --> Z["whisper.cpp"]
    J --> K
    I["User"] --> E
    I["User"] --> H
    I --> J
    J --> F

I:::Aqua
    classDef Aqua stroke-width:1px, stroke-dasharray:none, stroke:#46EDC8, fill:#DEFFF8, color:#378E7A
    style F stroke:#FFE0B2
    style G stroke:#FFE0B2
    style subGraph2 stroke:#FFE0B2
```

## External Projects and Components

* https://github.com/ggerganov/llama.cpp/
* https://github.com/mostlygeek/llama-swap
* https://github.com/aws-samples/bedrock-access-gateway
* https://testbigdldocshane.readthedocs.io/en/perf-docs/index.html


## Hardware
Current lab hardware. 
The original lab ujsed a Intel A770 16GB GPU,  this added a difficultly level that was not wroth the time invested in getting thing working (thought it did work for basic tasts). Hence the move to Nvidia 3090s.

* Intel(R) Xeon(R) W-1290 CPU @ 3.20GHz
* 128GB RAM
* ~~Intel A770 16GB GPU~~
* 2 x Nvidia 3090 24GB GPU
