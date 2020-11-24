SELECT i.InvoiceLineId,
    t.Name    
FROM Track t
    JOIN InvoiceLine i ON i.TrackId = t.TrackId
ORDER BY i.InvoiceLineId