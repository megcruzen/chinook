-- What are the respective total sales for each of those years?

SELECT SUM(CASE WHEN Total > 0 AND InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' THEN Total ELSE 0 END) as Totals2009,
	   SUM(CASE WHEN Total > 0 AND InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31' THEN Total ELSE 0 END) as Totals2011
FROM Invoice
