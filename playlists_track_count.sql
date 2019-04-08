-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT pl.[Name], COUNT(pt.TrackId) AS TrackCount
FROM Playlist pl
LEFT JOIN PlaylistTrack pt ON pt.PlaylistId = pl.PlaylistId
GROUP BY pl.[Name]