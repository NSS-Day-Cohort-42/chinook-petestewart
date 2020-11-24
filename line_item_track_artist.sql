SELECT i.InvoiceLineId,
    t.Name as Track,
    a.Name as Artist
FROM Track t
    JOIN InvoiceLine i ON i.TrackId = t.TrackId
    JOIN Album al ON al.AlbumId = t.AlbumId
    JOIN Artist a ON al.ArtistId = a.ArtistId
ORDER BY i.InvoiceLineId