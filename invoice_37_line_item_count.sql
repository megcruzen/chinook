-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(InvoiceLineId) AS NumLineItems
FROM InvoiceLine
WHERE InvoiceId = 37

--SELECT InvoiceLineId
--FROM InvoiceLine
--WHERE InvoiceId = 37