# Anxiety & Mental Health Analytics

## Project Overview

This project analyzes factors associated with anxiety levels using Databricks, SQL, and Power BI.

The project follows the Medallion Architecture:

Raw Data → Bronze → Silver → Gold → Power BI

## Technologies

- Databricks
- Databricks SQL
- Delta Lake
- Medallion Architecture
- Power BI
- DAX
- GitHub

## Data Pipeline

Raw Data
↓
Bronze Layer
↓
Data Exploration
↓
Silver Layer
↓
Data Validation
↓
Gold Layer
↓
Power BI

## Bronze Layer

The Bronze layer stores the raw source data with minimal transformations.

## Silver Layer

The Silver layer contains cleaned and standardized data.

Main transformations:

- Data type conversion
- Column renaming
- Removing duplicate records
- Trimming text values
- Data validation

## Gold Layer

The Gold layer contains analytics-ready data for Power BI.

Derived columns include:

- Age Group
- Anxiety Category
- Stress Category

## Power BI Dashboard

The dashboard analyzes:

- Average Anxiety Level
- Average Stress Level
- High Anxiety %
- Anxiety by Gender
- Anxiety by Age Group
- Anxiety by Occupation
- Anxiety vs Stress
- Anxiety vs Sleep Hours
- Family History vs Anxiety
- Lifestyle Factors vs Anxiety

## Project Architecture

Databricks
│
├── Bronze
│   └── anxiety_raw
│
├── Silver
│   └── anxiety_clean
│
└── Gold
    └── anxiety_analytics
            │
            ▼
        Power BI
