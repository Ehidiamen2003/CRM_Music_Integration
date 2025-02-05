# CRM Music Integration

This project is a SQL-based Customer Relationship Management (CRM) system designed to analyze customer data, track sales, and gain insights into music preferences and streaming habits.

## Features
- **Customer Management**: Manage customer details including name, contact information, favorite genres, and preferred artists.
- **Sales Analysis**: Track product purchases and identify top-selling items.
- **Music Purchases**: Record customer music purchases and identify popular albums.
- **Streaming Insights**: Analyze the most-streamed artists and songs by customers.
- **Event Tracking**: Monitor customer attendance at music events and ticket purchases.

## Requirements
- PostgreSQL (for database management)
- SQL Client (e.g., pgAdmin)

## Setup
### Clone the repository:
git clone https://github.com/Ehidiamen2003/CRM_Music_Integration.git

### Import the schema:
psql -U Ehidiamen2003 -d your_database -f [schema.sql](schema.sql)

### Insert sample data:
psql -U Ehidiamen2003 -d your_database -f [data_insert.sql](data_insert.sql)

### Run the queries for insights:
You can run the queries provided in the [crm_main.sql](crm_main.sql) file to analyze customer data, streaming history, and sales.
psql -U Ehidiamen2003 -d your_database -f [crm_main.sql](crm_main.sql)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
