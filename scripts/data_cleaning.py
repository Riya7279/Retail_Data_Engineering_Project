import pandas as pd

#Read CSV files
customers = pd.read_csv("data/customers.csv")
products = pd.read_csv("data/products.csv")
orders = pd.read_csv("data/orders.csv")

#Remove duplicates
customers.drop_duplicates(inplace = True)
products.drop_duplicates(inplace = True)
orders.drop_duplicates(inplace = True)

#Remove missing values
customers.dropna(inplace = True)
products.dropna(inplace = True)
orders.dropna(inplace = True)

# Create total_price column
orders = orders.merge(products,on="product_id")
orders["total_price"] = orders["quantity"] * orders["price"]

#Save cleaned data
orders.to_csv("output/cleaned_orders.csv",index=False)

print("Data cleaned Successfully")
print(orders.head())
