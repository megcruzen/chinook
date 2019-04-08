 -- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.InvoiceId, i.InvoiceDate, i.Total, 
		CONCAT(c.FirstName, ' ' , c.LastName) AS Customer,
		i.BillingCountry, 
		CONCAT(e.FirstName, ' ', e.LastName) AS Agent
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'