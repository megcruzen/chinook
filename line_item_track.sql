-- Provide a query that includes the purchased track name with each invoice line item.

SELECT i.InvoiceId, il.InvoiceLineId, t.[Name]
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
LEFT JOIN Track t ON t.TrackId = il.TrackId
ORDER BY i.InvoiceId