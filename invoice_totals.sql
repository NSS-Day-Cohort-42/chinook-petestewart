SELECT i.Total,
    c.FirstName || ' ' || c.LastName as CustomerName,
    i.BillingCountry,
    e.FirstName || ' ' || e.LastName as AgentName
FROM Invoice i
    JOIN Customer c on i.CustomerId = c.CustomerId 
    JOIN Employee e on c.SupportRepId = e.EmployeeId
ORDER BY CustomerName