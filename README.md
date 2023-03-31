# Northwind-Analytics

This repository contains the code for my dbt project that I built to analyze the Northwind sample database. The project is based on the Analytics Engineering Bootcamp course on Udemy.

## Overview

The Northwind database is a sample database that simulates the data of a small distribution company. The database contains data about customers, orders, products, suppliers, and employees. In this project, I transformed and modeled the data using dbt and then analyzed it using SQL queries. Instead of using a traditional relational database, I used Google BigQuery, a cloud-based data warehouse, to store the data.

## Prerequisites

To run this project, you need to have the following tools installed on your local machine:

- dbt (version 0.19.2 or higher)
- A Google Cloud Platform account with BigQuery enabled

## Project Structure

The project is organized as follows:

- `analysis/`: This folder contains SQL queries that I wrote for analyzing the transformed data.
- `models/`: This folder contains dbt models that I created for transforming and modeling data. Each model corresponds to a table in the data warehouse and defines how the data should be transformed and structured.
- `snapshots/`: This folder contains dbt snapshots that I created for tracking changes in models over time.
- `tests/`: This folder contains dbt tests that I wrote for validating models and ensuring data quality.
- `dbt_project.yml`: This file is the main configuration file for the dbt project. It defines the project's settings, such as the database connection information, the target schema, and the list of models to build.
- `README.md`: This file contains the project documentation.

## Getting Started

To get started with this project, follow these steps:

1. Clone this repository to your local machine.
2. Set up a BigQuery connection in the `dbt_project.yml` file. You can follow the instructions in the [official dbt documentation](https://docs.getdbt.com/dbt-cli/configure-your-profile/) on how to configure your profile for BigQuery.
3. Install the required dbt packages by running the command `dbt deps`.
4. Build the models by running the command `dbt run`.
5. Test the models by running the command `dbt test`.
6. Analyze the transformed data by running the queries in the `analysis/` folder.

## Conclusion

I hope you find this project useful as a reference for using dbt to transform and model data in Google BigQuery. Please feel free to explore the code, run the queries, and provide feedback on how I can improve the project. For more information on dbt and BigQuery, I highly recommend checking out the [official documentation](https://docs.getdbt.com/) for dbt and the [official documentation](https://cloud.google.com/bigquery/) for BigQuery.
