-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(CASE WHEN InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31' THEN 1 ELSE NULL END) AS Invoices2009,
	   COUNT(CASE WHEN InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31' THEN 1 ELSE NULL END) AS Invoices2011,
	   COUNT(CASE WHEN InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31' THEN 1 ELSE NULL END) AS Invoices2013
FROM Invoice

SELECT InvoiceId, InvoiceDate
FROM Invoice
WHERE InvoiceDate LIKE '%2009%'

SELECT InvoiceId, InvoiceDate
FROM Invoice
WHERE InvoiceDate LIKE '%2011%'

SELECT InvoiceId, InvoiceDate
FROM Invoice
WHERE InvoiceDate LIKE '%2013%'