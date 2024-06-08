# ETL_Pipeline
Step 1: Create tables in SQL server and take data related to customer,product,order,inventory such that :
1.Customer table: Stores customer information such as customer ID, name, address, email, and phone number.
2.Product table: Stores product information such as product ID, name, description, price, and category.
3.Order table: Stores order information such as order ID, customer ID, product ID, quantity, order date, and total amount.
4.Inventory table: Stores information about the available inventory for each product, such as product ID, quantity, and location.
Step 2:Make connection between SQL server tables and ADF.
Step 3: Develop Pipeline to execute Change Data Capture in Databricks.


Note :
You can make use of JDBC Connector. Also need to choose correct Integration Runtime for connecting to ADF.


Step 4: Schedule the Databricks notebook to run the ETL pipeline every 1 hour which capture and process the changes in the source data.
Step5: Send notification via email when pipeline if successful along with the updated table in file format.
