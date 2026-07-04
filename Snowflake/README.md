# Snowflake

## Overview

Snowflake was used as the cloud data warehouse for this project. It stores the source data, provides compute for SQL execution, and serves as the execution engine for dbt transformations.

## Database Structure

Database:

- MOVIELENS

Schemas:

- RAW
- DEV
- SNAPSHOTS

### RAW Schema

The RAW schema contains unmodified source tables loaded from the MovieLens CSV files.

Purpose:

- Preserve original source data
- Enable reproducible transformations
- Act as the single source of truth

### DEV Schema

The DEV schema stores dbt-generated models.

It contains:

- Staging models
- Dimension models
- Fact models

### SNAPSHOTS Schema

The SNAPSHOTS schema was created while exploring dbt snapshots to understand how historical changes can be tracked over time.

## Why Snowflake?

This project uses Snowflake to understand modern cloud data warehousing concepts, including:

- Separation of storage and compute
- Schema-based organization
- SQL-based transformations through dbt
- Cloud-native analytics workflows
