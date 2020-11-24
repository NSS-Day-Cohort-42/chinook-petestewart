SELECT t.Name, x.Total as Quantity
FROM (
    (SELECT i.TrackId,
        SUM(i.Quantity) as Total
    FROM InvoiceLine i
        JOIN Invoice ON i.InvoiceId = Invoice.InvoiceId
    GROUP BY i.TrackId) x
)
JOIN Track t ON t.TrackId = x.TrackId
ORDER BY Quantity DESC
LIMIT 5