SELECT t.Name, MAX(x.Total) as Quantity
FROM 
    (SELECT i.TrackId,
        SUM(i.Quantity) as Total
    FROM InvoiceLine i
        JOIN Invoice ON i.InvoiceId = Invoice.InvoiceId
    WHERE Invoice.InvoiceDate LIKE '2013%'
    GROUP BY i.TrackId) x
JOIN Track t ON t.TrackId = x.TrackId