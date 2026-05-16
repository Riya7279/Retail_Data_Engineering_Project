import pandas as pd

customers = pd.read_csv("data/customers.csv")
products = pd.read_csv("data/products.csv")
orders = pd.read_csv("data/orders.csv")

print("Customers Data")
print(customers.head())

print("\nProducts Data")
print(products.head())

print("\nOrders Data")
print(orders.head())
