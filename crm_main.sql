-- Queries for Insights:

-- Get customer music preferences
-- Retrieves customer name, favorite genre, and preferred artist
SELECT name, favorite_genre, preferred_artist FROM Customers;

-- Get top-selling music products
-- Retrieves the top albums purchased based on sales count
SELECT album_name, artist, COUNT(*) AS sales_count 
FROM MusicPurchases 
GROUP BY album_name, artist 
ORDER BY sales_count DESC;

-- Find customers who attended music events
-- Retrieves customer names along with the events they attended
SELECT c.name, e.event_name, e.artist, e.venue, e.event_date 
FROM EventAttendance ea
JOIN Customers c ON ea.customer_id = c.customer_id
JOIN Events e ON ea.event_id = e.event_id
WHERE ea.ticket_purchased = TRUE;

-- Get most streamed artists by customers
-- Retrieves the most streamed artists based on streaming history
SELECT artist, COUNT(*) AS stream_count 
FROM StreamingHistory 
GROUP BY artist 
ORDER BY stream_count DESC;

-- Sales report including music-related purchases
-- Retrieves all sales, including music-related purchases, sorted by date
SELECT s.sales_id, c.name, p.name AS product_name, s.total_price, s.sale_date 
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
UNION ALL
SELECT mp.purchase_id, c.name, mp.album_name, 0 AS total_price, mp.purchase_date 
FROM MusicPurchases mp
JOIN Customers c ON mp.customer_id = c.customer_id
ORDER BY sale_date DESC;