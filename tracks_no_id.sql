-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.[Name], a.Title AS Album, mt.[Name] AS MediaType, g.[Name] AS Genre
FROM Track t
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre g ON g.GenreId = t.GenreId