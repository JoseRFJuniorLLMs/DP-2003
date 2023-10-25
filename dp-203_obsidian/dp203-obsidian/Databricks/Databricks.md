---
tags:
  - Databricks
---
##### [8.1 Databricks](https://github.com/jithendray/dp203-azure-data-engineering/blob/main/README.md#81-databricks)

- makes use of apache spark to provide a unified analytics platform
- creates the underlying compute infra
- has its own underlying file system - abstraction of an underlying storage layer
- will install spark by itself - also has comatibility for other libs - ML libs
- provides workspace - notebooks with collaboration and visualization features

##### [8.2 Azure Databricks](https://github.com/jithendray/dp203-azure-data-engineering/blob/main/README.md#82-azure-databricks)

- completely azure-managed environment
- makes use of underlying compute infrastructure and virtual networks
- makes use of azure security - azure active directory and role-based access control

**[[Clusters in Azure Databricks]]**

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

##### [8.3 Autoscaling a cluster](https://github.com/jithendray/dp203-azure-data-engineering/blob/main/README.md#83-autoscaling-a-cluster)
 [[Autoscaling a cluster]]
 
- When creating an Azure Databricks cluster, you can specify a minimum and maximum number of workers for the cluster.
- Databricks will then choose the ideal number of workers to run the job.
- If a certain phase of your job requires more compute power, the workers will be assigned accordingly.
- There are two types of autoscaling
    - **[[Standard autoscaling]]**
        - Here the cluster starts with 8 nodes
        - Scales down only when the cluster is completely idle and it has been underutilized for the last 10 minute
        - Scales down exponentially, starting with 1 node
    - **[[Optimized autoscaling]]**
        - This is only available for Azure Databricks Premium Plan
        - Can scale down even if the cluster is not idle by looking at shuffle file state
        - Scales down based on a percentage of current nodes
        - On job clusters, scales down if the cluster is underutilized over the last 40 seconds
        - On all-purpose clusters, scales down if the cluster is underutilized over the last 150 seconds

##### [8.4 Azure Databricks Table](https://github.com/jithendray/dp203-azure-data-engineering/blob/main/README.md#84-azure-databricks-table)
[[Databricks Table]]
- In Azure Databricks, you can also create a database and tables
- The table is a collection of structured data
- You can then perform operations on the data that are supported by Apache Spark on DataFrames on Azure Databricks tables
- There are two types of tables – global and local tables.
- A global table is available across all clusters
- A global table is registered in the Azure Databricks Hive metastore or an external metastore
- The local table is not accessible from other clusters and is not registered in the Hive metastore

-  [[What are we going to cover]]
-  [[What is Azure Data bricks]]
-  [[Concepts with Azure Data bricks]]
-  [[Creating a workspace]]
-  [[Creating a cluster]]
-  [[Loading data from a file]]
-  [[Group By and Visualizations]]
-  [[Few functions on dates]]
-  [[Filtering on NULL values ]]
-  [[Saving to a table ]]
-  [[Reading from Azure Data Lake]]
-  [[JSON-based files]]
-  [[Processing JSON-based files - Another example ]] 
-  [[Using the COPY INTO command  ]]
-  [[Streaming data using Azure Data bricks]]
-  [[Removing duplicate rows]]
-  [[Specifying the schema]]
-  [[More on clusters]]
-  [[Versioning of tables]]
-  [[Reading data from Azure Synapse ]] 
-  [[Writing data to Azure Synapse SQL Dedicated Pool]]
-  [[Different modes when writing data ]]
-  [[Merging data]]
-  [[Running an automated job]]
-  [[Azure Data Factory - Running a notebook]]
-  [[Streaming from Azure Event Hub - Setup ]] 
-  [[Streaming from Azure Event Hub - Implementation ]]
-  [[Deleting the workspace]]