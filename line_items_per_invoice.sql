SELECT InvoiceId,
    COUNT(InvoiceLineId) as 'Lines'
FROM InvoiceLine
GROUP BY InvoiceId