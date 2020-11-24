SELECT x.Name, MAX(x.Sales) as TotalSales
FROM (SELECT e.FirstName || ' ' || e.LastName as Name,
    SUM(i.Total) as Sales
    FROM Invoice i
        JOIN Employee e ON e.EmployeeId = c.SupportRepId
        JOIN Customer c ON i.CustomerId = c.CustomerId
    WHERE i.InvoiceDate LIKE '2009%'
    GROUP BY Name) x