SELECT BillingCountry,
    SUM(Total) as TotalSales
FROM Invoice
GROUP BY BillingCountry