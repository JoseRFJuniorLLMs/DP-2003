---
tags:
  - Databricks
---


- inside cluster - 2 types of nodes
    
    - [[Worker nodes]] - perform the underlying tasks
    - [[Driver node]] - distributes the task to worker nodes
    - [[Types of clusters]]
    
    - [[Interactive clusters]]: interactive notebooks and multiple users can use a cluster for collaboration
    - Job cluster: cluster is started when the job has to run, and will be terminated once the job is completed
-  [[Types of Interactive cluster]]
    
    - [[Standard cluster]]:
        - recommended if you are a single user
        - no fault isolation - if multiple users are using and one user has fault - this might impact workloads of other users
        - resources of a cluster might get allocated to a single workload
        - has support for python, R, SQL and Scala
    - [[High concurrency cluster]]:
        - for multiple users
        - fault isolation
        - resources are shared across different user workloads
        - support for python, R and SQL (no scala)
        - table access control: can grant and revke access to data from python and SQL