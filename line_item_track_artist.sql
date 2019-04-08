-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceId, il.InvoiceLineId, t.[Name], ar.[Name]
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN Artist ar ON ar.ArtistId = a.ArtistId
ORDER BY i.InvoiceId