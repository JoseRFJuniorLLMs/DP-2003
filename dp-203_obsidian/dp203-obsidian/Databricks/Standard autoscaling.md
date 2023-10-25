---
tags:
  - Databricks
---
    - Here the cluster starts with 8 nodes
        - Scales down only when the cluster is completely idle and it has been underutilized for the last 10 minute
        - Scales down exponentially, starting with 1 node