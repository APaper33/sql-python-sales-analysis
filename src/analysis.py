import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

print("=== SCRIPT STARTED ===")

# Connessione al database
conn = sqlite3.connect("data/sales.db")

# Query: ricavo per prodotto
query = """
SELECT
  product,
  SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;
"""

df = pd.read_sql_query(query, conn)

print(df)

plt.figure()
plt.bar(df["product"], df["revenue"])
plt.xticks(rotation=45, ha="right")
plt.ylabel("Revenue")
plt.title("Revenue by Product")
plt.tight_layout()
plt.savefig("output/revenue_by_product.png")



conn.close()
