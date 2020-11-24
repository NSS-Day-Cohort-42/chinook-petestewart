SELECT M.Name as MediaType,
    SUM(Quantity) as Total
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
GROUP BY MediaType
ORDER BY Total DESC
LIMIT 1