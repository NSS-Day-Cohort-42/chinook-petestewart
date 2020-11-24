SELECT a.Name as Artist,
    SUM(il.UnitPrice * Quantity) as TotalSales
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY Artist
ORDER BY TotalSales DESC
LIMIT 3