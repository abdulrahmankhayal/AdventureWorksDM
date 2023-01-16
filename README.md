# AdventureWorksDM
dimensional modeling of [AdventureWorks2017](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16) for sales, creating a DataMart. It includes an ETL pipeline that loads the data from AdventureWorks2017 to AdventureWorksDM using SQL Server Integration Services (SSIS) and implements Slowly Changing Dimension (SCD) handling using the SCD wizard and Merge statement. 

## DataMart Schema
![](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/StarSchema.png)

## SSIS Packages

1. DimCustomer_TSQL: This package loads data into the DimCustomer dimension table using a Merge statement for handling Slowly Changing Dimension (SCD).

&emsp;![](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/DimCustomer.png)<br>
2. DimProduct_Wizard: This package loads data into the DimProduct dimension table using the SCD Wizard to handle SCD.

&emsp;![](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/DimProduct.png)<br>
3. DimSalesPerson_Wizard: This package loads data into the DimSalesPerson dimension table using the SCD Wizard to handle SCD.

&emsp;![](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/DimSalesPerson.png)<br>
4. FactSalesOrder: This package loads data into the FactSalesOrder fact table.

&emsp;![](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/FactSalesOrder.png)

## Analysis
Multidimensional OLAP CUBE Project See [AdvenutreWorksDM_SSAS](./AdvenutreWorksDM_SSAS)

## Reporting
Overview Dashboard for sales and sales quantity using Tableau could be found [here](https://public.tableau.com/app/profile/abdulrahman.khayyal/viz/AdventureWorksDashboard_16724781747890/AdventureWorksOverview)
![AdventureWorksDashboard](https://github.com/abdulrahmankhayal/AdventureWorksDM/blob/main/Imgs/AdventureWorksDashboard.png)
