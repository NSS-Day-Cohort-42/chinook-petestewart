SELECT e.FirstName || ' ' || e.LastName as FullName,
    i.* 
FROM Invoice i
    JOIN Customer c on i.CustomerId = c.CustomerId 
    JOIN Employee e on c.SupportRepId = e.EmployeeId
ORDER BY FullName asc