import pandas as pd
from sqlalchemy import create_engine

#MySQL Connection
engine = create_engine(
    "mysql+pymysql://riya:Riya1234%40@localhost/retail_etl"
)

#Read CSV files
customers = pd.read_csv("data/customers.csv")
products = pd.read_csv("data/products.csv")
orders = pd.read_csv("output/cleaned_orders.csv")

orders = pd.read_csv("output/cleaned_orders.csv")

# Keep only required columns
orders = orders[
    [
        "order_id",
        "customer_id",
        "product_id",
        "quantity",
        "total_price"
    ]
]

#Load data into files
customers.to_sql("customers", con=engine, if_exists="append", index=False)
products.to_sql("products", con=engine, if_exists="append", index=False)
orders.to_sql("orders", con=engine, if_exists="append", index=False)

print("Data Loaded Successfully")