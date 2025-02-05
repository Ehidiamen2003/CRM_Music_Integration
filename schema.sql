-- Table to store customer information with their personal details and music preferences
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,  -- Unique identifier for each customer
    name VARCHAR(100),               -- Customer's full name
    email VARCHAR(100) UNIQUE,       -- Customer's email, must be unique
    phone VARCHAR(20),               -- Customer's phone number
    address TEXT,                    -- Customer's address
    favorite_genre VARCHAR(50),      -- Customer's favorite music genre
    preferred_artist VARCHAR(100),   -- Customer's preferred artist
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp of when the record was created
);

-- Table to store product information for music-related purchases
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,  -- Unique identifier for each product
    name VARCHAR(100),              -- Product name (e.g., album, merchandise)
    category VARCHAR(50),           -- Category of the product (e.g., album, t-shirt)
    price DECIMAL(10,2),            -- Price of the product
    stock_quantity INT              -- Number of units available in stock
);

-- Table to store sales transactions, linking customers and products
CREATE TABLE Sales (
    sales_id SERIAL PRIMARY KEY,    -- Unique identifier for each sale
    customer_id INT REFERENCES Customers(customer_id),  -- Reference to the customer who made the purchase
    product_id INT,                 -- Product that was purchased
    quantity INT,                   -- Number of units purchased
    total_price DECIMAL(10,2),      -- Total price of the purchase
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Date and time when the sale was made
    FOREIGN KEY (product_id) REFERENCES Products(product_id)  -- Ensuring that the product exists
);

-- Table to store music purchases, linking customers with the albums they've bought
CREATE TABLE MusicPurchases (
    purchase_id SERIAL PRIMARY KEY, -- Unique identifier for each music purchase
    customer_id INT REFERENCES Customers(customer_id),  -- Reference to the customer who made the purchase
    album_name VARCHAR(100),        -- Name of the album purchased
    artist VARCHAR(100),            -- Artist of the album
    genre VARCHAR(50),              -- Genre of the album
    purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Date of the purchase
);

-- Table to store streaming history, tracking songs streamed by each customer
CREATE TABLE StreamingHistory (
    stream_id SERIAL PRIMARY KEY,   -- Unique identifier for each stream event
    customer_id INT REFERENCES Customers(customer_id),  -- Reference to the customer who streamed the song
    song_name VARCHAR(100),         -- Name of the song streamed
    artist VARCHAR(100),            -- Artist of the song
    genre VARCHAR(50),              -- Genre of the song
    stream_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Date and time of the streaming event
);

-- Table to store information about events such as concerts, albums, or shows
CREATE TABLE Events (
    event_id SERIAL PRIMARY KEY,    -- Unique identifier for each event
    event_name VARCHAR(100),        -- Name of the event (e.g., concert, album launch)
    artist VARCHAR(100),            -- Artist performing at the event
    venue VARCHAR(100),             -- Venue where the event is held
    event_date DATE,                -- Date of the event
    tickets_sold INT DEFAULT 0      -- Number of tickets sold for the event
);

-- Table to track customer attendance at events
CREATE TABLE EventAttendance (
    attendance_id SERIAL PRIMARY KEY,  -- Unique identifier for each event attendance record
    customer_id INT REFERENCES Customers(customer_id),  -- Reference to the customer attending the event
    event_id INT REFERENCES Events(event_id),  -- Reference to the event the customer attended
    ticket_purchased BOOLEAN DEFAULT FALSE  -- Indicates whether the customer purchased a ticket for the event
);
