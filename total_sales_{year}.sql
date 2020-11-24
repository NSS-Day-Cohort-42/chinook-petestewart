SELECT SUM(i.Total) as Sales,
    strftime('%Y', InvoiceDate) as Year
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%'
GROUP BY Year