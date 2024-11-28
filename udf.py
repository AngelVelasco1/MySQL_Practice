import pymysql
import pandas as pd
import matplotlib.pyplot as grafic

conx = pymysql.connect(
    host="127.0.0.1",
    user="root",
    database="northwaight"
)
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

engine = create_engine('mysql+pymysql://root:@127.0.0.1/northwaight')
Session = sessionmaker(bind=engine)
session = Session()

# Your existing code using the SQLAlchemy session

""" Conexion a traves de un with """
""" try:
    with conx.cursor() as cursor:
        cursor.execute("SELECT Price, NumberSquare(Price) FROM Products WHERE Price > 0")
    result = cursor.fetchall()
    resultData = pd.DataFrame(result)

    print(resultData)
finally:
    conx.close() """

""" UDF """
""" square = lambda n : n*n*n
print(square(10)) """

""" Conexion a mysql a traves de un cursor (Transaccion) """
""" cursor = conx.cursor()

cursor.execute("SELECT * FROM Products")

results = cursor.fetchall();
results_df = pd.DataFrame(results)

conx.commit()

cursor.close()
conx.close()

print(results_df) """

""" Graficos """
query =  '''
        SELECT CONCAT(e.FirstName, ' ', e.LastName) AS Employee, SUM(od.Quantity * p.Price) AS Earns
        FROM Orders o
        JOIN orderdetails od ON od.OrderID = o.OrderID
        JOIN products p ON od.ProductID = p.ProductID
        JOIN employees e ON e.EmployeeID = o.EmployeeID
        GROUP BY o.EmployeeID, e.FirstName, e.LastName
        ORDER BY Earns DESC
        LIMIT 5
 '''

top_employees = pd.read_sql_query(query, session.connection());
top_employees.plot(x = "Employee", y= "Earns", kind="bar", figsize=(10, 5), legend=False)

grafic.title("5 Employees with most earns")
grafic.xlabel("Employees")
grafic.ylabel("Earns")
grafic.xticks(rotation = 45)

grafic.show()