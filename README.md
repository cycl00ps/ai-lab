# Text Model Lab

High level diagram and descriptions below. Config files for ewach component in their respective folders.

## Purpose
Demonstrate quick deployment of AI/LLM frontends and supporting components, allowing you to concentrate on actually using models.
Ensure everything can run on-prem with NO external dependancies when using models. 
Reproducable structure for larger scale deplloymemnts. 

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
  end
    A --> B & F["llama.swap"] & H
    C --> D
    E --> A
    H --> C
    F --> G["llama.cpp"]
    I["User"] --> E
    I["User"] --> H

     I:::Aqua
    classDef Aqua stroke-width:1px, stroke-dasharray:none, stroke:#46EDC8, fill:#DEFFF8, color:#378E7A
    style F stroke:#FFE0B2
    style G stroke:#FFE0B2
    style subGraph2 stroke:#FFE0B2
