SELECT c.FirstName || ' ' || c.LastName as FullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Invoice i
    JOIN Customer c on i.CustomerId = c.CustomerId 
WHERE c.Country == "Brazil"