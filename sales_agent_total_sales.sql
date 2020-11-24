SELECT e.FirstName || ' ' || e.LastName as Name,
    SUM(i.Total)
FROM Invoice i
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
    JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY Name