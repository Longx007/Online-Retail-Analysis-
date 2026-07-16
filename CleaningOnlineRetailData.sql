SELECT 
	InvoiceNo, 
	CustomerID, 
	Count(*) AS total,
	SUM(CASE
			WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS Tnull,
	SUM(CASE
			WHEN CustomerID IS NOT NULL THEN 1 ELSE 0 END) AS Tisi
FROM [OnlineRetail].[dbo].[online_retail]
GROUP BY InvoiceNo, CustomerID

UPDATE [online_retail]
SET CustomerID = 'Unknown'
WHERE CustomerID IS NULL

DELETE FROM [online_retail]
WHERE UnitPrice IS NULL

DELETE FROM [online_retail]
WHERE Description IS NULL

SELECT *
FROM [online_retail]
WHERE Description IS NULL

ALTER TABLE [online_retail]
ALTER COLUMN UnitPrice DECIMAL(10,2)

UPDATE [online_retail]
SET UnitPrice = UnitPrice/100


Alter Table [online_retail] ADD purchase_status VARCHAR(10)


DELETE FROM [online_retail]
WHERE Quantity < 1 AND InvoiceNo NOT Like 'C%'

SELECT 
	InvoiceNo,
	Quantity
FROM [online_retail]
WHERE Quantity < 1 AND InvoiceNo Like 'C%'

UPDATE [online_retail]
SET purchase_status =
		CASE
			WHEN InvoiceNo Like 'C%' AND Quantity < 1 THEN 'Return' ELSE 'Normal' END

SELECT * 
FROM [Online_retail]
WHERE purchase_status = 'Return'

ALTER TABLE[online_retail] ADD Sale DECIMAL (10,2)

UPDATE [online_retail]
SET Sale = UnitPrice * Quantity

--Customer Dengan cancel terbanyak
SELECT 
	CustomerID, 
	COUNT(*) AS Total_cancel
FROM [online_retail]
WHERE purchase_status = 'Return'
Group By CustomerID
ORDER BY Total_cancel DESC

--Produk dengan return terbanyak'
SELECT 
	Description,
	COUNT(*) AS Total_return
FROM [online_retail]
WHERE purchase_status = 'Return'
GROUP BY Description
ORDER BY Total_return DESC;

SELECT 
	StockCode,
	COUNT(*) AS Total_return
FROM [online_retail]
WHERE purchase_status = 'Return'
GROUP BY StockCode
ORDER BY Total_return DESC;

USE OnlineRetail

SELECT * 
FROM online_retail

SELECT 
	Country,
	MAX(Sale) AS PenjualanTertinggi,
	MIN(Sale) AS PenjualanTerendah
FROM online_retail
GROUP BY Country 

SELECT
	Distinct Country,
	Sale,
	SUM(Sale) AS PendapatanTertinggi
FROM online_retail
GROUP BY Country,Sale
ORDER BY PendapatanTertinggi DESC

SELECT 
	Country,
	COUNT(*) AS TotalKumcunculan,
	ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM online_retail), 2) AS Persentase
FROM online_retail
Group By Country
ORDER BY Persentase DESC 

SELECT 
	Country,
	COUNT(*) totalKemunculan,
	COUNT(*) * 100 / (SELECT COUNT(*) FROM online_retail) AS Persentase
FROM online_retail
WHERE Country != 'United Kingdom'
Group By Country
ORDER BY Persentase DESC 


-- Negara dengan Penjualan tertinggi--
SELECT TOP 5
	Country,
	SUM(Sale) As TotalSales
FROM online_retail
GROUP BY Country
ORDER BY TotalSales DESC

-- Negara dengan Penjualan terendah--
SELECT TOP 5
	Country,
	SUM(Sale) AS TotalSales
FROM online_retail
GROUP BY Country
ORDER BY TotalSales ASC

--BUAT VIEW--

CREATE VIEW vw_online_retail_clean AS
SELECT
	InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    purchase_status,
    Sale
FROM online_retail
WHERE CustomerID IS NOT NULL;

SELECT TOP 100 *
FROM vw_online_retail_clean
 

 SELECT
	InvoiceNo,
	Description
 FROM online_retail
 WHERE purchase_status = 'Return' AND Description = 

 SELECT
	InvoiceNo,
	Description
 FROM online_retail
 WHERE purchase_status = 'Normal'

 SELECT
	InvoiceNo
FROM online_retail
WHERE InvoiceNo = '536391'




WITH normal_tx AS (
    SELECT
        InvoiceNo AS normal_invoice,
        CustomerID,
        StockCode,
        Quantity AS normal_qty
    FROM online_retail
    WHERE InvoiceNo NOT LIKE 'C%'
      AND Quantity > 0
),
cancel_tx AS (
    SELECT
        InvoiceNo AS cancel_invoice,
        CustomerID,
        StockCode,
        ABS(Quantity) AS cancel_qty,
        InvoiceDate AS cancel_date
    FROM online_retail
    WHERE InvoiceNo LIKE 'C%'
      AND Quantity < 0
)
SELECT
    n.normal_invoice,
    c.cancel_invoice,
    n.CustomerID,
    n.StockCode,
    n.normal_qty,
    c.cancel_qty
FROM normal_tx n
JOIN cancel_tx c
    ON n.CustomerID = c.CustomerID
   AND n.StockCode = c.StockCode
   AND n.normal_qty = c.cancel_qty

   SELECT
    COUNT(DISTINCT cancel_invoice) AS matched_cancel_invoices
FROM (
    SELECT DISTINCT
        c.cancel_invoice
    FROM normal_tx n
    JOIN cancel_tx c
        ON n.CustomerID = c.CustomerID
       AND n.StockCode = c.StockCode
       AND n.normal_qty = c.cancel_qty
) x;

USE OnlineRetail