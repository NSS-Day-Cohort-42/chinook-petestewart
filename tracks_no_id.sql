SELECT t.Name as Track,
    a.Title as Album,
    m.Name as Mediatype,
    g.Name as Genre
FROM Track t
    JOIN Album a ON t.AlbumId = a.AlbumId
    JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
    JOIN Genre g ON t.GenreId = g.GenreId
