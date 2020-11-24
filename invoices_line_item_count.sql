SELECT i.*,
    COUNT(il.InvoiceLineId)
FROM Invoice i
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId