
# Architecture

## Objective

This project was built to understand how a modern ELT (Extract, Load, Transform) pipeline works using Amazon S3, Snowflake, and dbt.

## Pipeline Overview

```
MovieLens CSV Files
        │
        ▼
Amazon S3
        │
        ▼
Snowflake (RAW Schema)
        │
        ▼
dbt Staging Models
        │
        ▼
Dimension Models
        │
        ▼
Fact Models
```

## Architecture Overview

This project follows an ELT (Extract, Load, Transform) approach.

- Source data is first uploaded to Amazon S3.
- The raw files are loaded into Snowflake without modification.
- dbt performs SQL-based transformations inside Snowflake.
- The transformed data is organized into staging, dimension and fact layers using a modular analytics engineering workflow.

The objective of this project was to learn how modern cloud data warehouses leverage their own compute engine to perform scalable, in-warehouse data transformations.
