---
tags:
  - Databricks
---
    - This is only available for Azure Databricks Premium Plan
        - Can scale down even if the cluster is not idle by looking at shuffle file state
        - Scales down based on a percentage of current nodes
        - On job clusters, scales down if the cluster is underutilized over the last 40 seconds
        - On all-purpose clusters, scales down if the cluster is underutilized over the last 150 seconds