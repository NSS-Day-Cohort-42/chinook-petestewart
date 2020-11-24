SELECT p.Name as 'Playlist',
    COUNT(pt.TrackId) as 'Tracks'
FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP BY Playlist