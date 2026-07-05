# dbt Project

## Overview

dbt (Data Build Tool) was used to transform raw data stored in Snowflake into analytics-ready models using SQL.

Instead of writing and maintaining SQL transformations directly inside the data warehouse, dbt organizes transformations into modular, reusable models while managing dependencies between them.

## Project Structure

```
models/
├── staging/
├── dim/
└── fact/

snapshots/
seeds/
tests/
```

## What I Explored

- Layered data modeling
- SQL transformations
- Model dependencies using `ref()`
- View and table materializations
- Seeds
- Snapshots
- Data testing

This folder documents the dbt project structure and the transformation layers used in this learning project.
