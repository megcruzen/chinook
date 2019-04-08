-- Provide a query that shows the # of invoices per country.

SELECT BillingCountry, COUNT(*) AS NumInvoices
FROM Invoice
GROUP BY BillingCountry