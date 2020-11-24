SELECT SupportRepId AS Agent,
    SUM(CustomerId) AS Customers
FROM Customer
GROUP BY Agent