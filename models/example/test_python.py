import pandas as pd
from pyspark.sql.functions import col

def model(dbt, session):
    dbt.config(materialized = "table")
    df = dbt.ref("customer_sales")

    # Split the column by ',' and expand into separate columns
    df_split = df['full_name'].str.split(',', expand=True)

    # Add the split columns back to the DataFrame
    df[['first_name', 'last_name']] = df_split

    # Remove the original column
    df = df.drop(columns=['full_name'])

    return df