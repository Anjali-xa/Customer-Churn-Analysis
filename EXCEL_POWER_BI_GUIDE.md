# Customer Churn: Excel & Power BI Guide

This guide complements the CSV dataset and Python starter script in this repository.

## Excel workflow
Add `Churn Flag = IF([@churn]="Yes",1,0)`. Pivot by contract and internet service; calculate churn rate as churned customers / total customers.

## Power BI dashboard
 Measures:
```DAX
Customers = DISTINCTCOUNT(customers[customer_id])
Churned Customers = CALCULATE([Customers],customers[churn]="Yes")
Churn Rate = DIVIDE([Churned Customers],[Customers])
Average Monthly Charges = AVERAGE(customers[monthly_charges])
```
Dashboard: customers, churned customers and churn rate cards; churn by contract; churn by internet service; tenure distribution; slicers for contract and service.

## Import and modelling notes
1. In Power BI Desktop choose **Get Data → Text/CSV** and select `data/dataset.csv`.
2. Rename the imported table to the name used in the DAX measures in this guide.
3. Check data types (dates as Date, counts and amounts as Whole/Decimal Number).
4. Create the measures from **Modeling → New measure**.
5. Add the suggested visuals and slicers; save your work as `dashboard.pbix` in this repository when finished.

**Important:** The supplied datasets are small synthetic practice samples. Validate field names and data types after import. The PBIX dashboard must be created and saved in Power BI Desktop; this guide does not claim a PBIX file is already included.
