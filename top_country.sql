SELECT x.BillingCountry, MAX(x.TotalSales)
FROM (
SELECT BillingCountry,
    SUM(Total) as TotalSales
FROM Invoice
GROUP BY BillingCountry
) x