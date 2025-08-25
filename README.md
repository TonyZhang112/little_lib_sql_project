# Small Library Database Project

## Overview
This project is a simple SQLite database designed to simulate basic library management operations. It demonstrates fundamental database concepts including table relationships, foreign keys, and practical SQL queries for data analysis.

## Database Structure
The database consists of three interconnected tables:

### **books** table
- `id` (INTEGER, Primary Key): Unique book identifier
- `title` (TEXT): Book title  
- `author` (TEXT): Author name
- `category` (TEXT): Book genre/category
- `availability` (BOOLEAN): 1 = available, 0 = checked out

### **patrons** table  
- `id` (INTEGER, Primary Key): Unique patron identifier
- `name` (TEXT): Patron full name
- `contact_info` (TEXT): Email address

### **checkout** table
- `id` (INTEGER, Primary Key): Unique checkout record ID
- `book_id` (INTEGER, Foreign Key): References books.id
- `patron_id` (INTEGER, Foreign Key): References patrons.id  
- `checkout_date` (DATE): When book was checked out
- `return_date` (DATE): When book was returned (NULL if still checked out)

## Sample Data
The database includes:
- **5 books** spanning fiction, sci-fi, and biography genres
- **5 patrons** with Pratt Institute email addresses
- **5 checkout records** demonstrating various checkout/return scenarios

## Key SQL Queries Demonstrated

1. **Popular Books Analysis**: Count checkouts per book to identify most borrowed titles
2. **Active Patrons Report**: Rank patrons by checkout frequency  
3. **Current Checkouts**: List all unreturned books with patron details
4. **Available Books**: Show all books currently available for checkout
5. **Inventory Management**: Update book availability based on checkout status

## Files Included

- `Small-library-project.db` - Main SQLite database file
- `Small-library-project.db.sql` - Complete database schema and data export
- `library_sql_queries.sql` - Sample analytical queries
- `books.csv`, `patrons.csv`, `checkout.csv` - Individual table exports
- `README.md` - This documentation

## How to Use

### Option 1: SQLite GUI Tools
1. Download [DB Browser for SQLite](https://sqlitebrowser.org/) or similar tool
2. Open `Small-library-project.db` 
3. Run queries from `library_sql_queries.sql` in the Execute SQL tab

### Option 2: Online Viewers (No Installation)
1. Visit [SQLite Viewer](https://sqliteviewer.app/) or [SQLiteOnline](https://sqliteonline.com/)
2. Upload `Small-library-project.db`
3. Explore tables and run custom queries

### Option 3: CSV Files
- Open individual CSV files in Excel/Google Sheets for quick data review

## Learning Outcomes
This project demonstrates:
- **Database Design**: Normalized table structure with appropriate relationships
- **SQL Fundamentals**: CREATE, INSERT, UPDATE, SELECT operations
- **Join Operations**: Connecting related data across multiple tables  
- **Data Analysis**: Using GROUP BY, COUNT, ORDER BY for insights
- **Real-world Application**: Practical library management scenarios

## Technical Notes
- Uses SQLite 3 format for maximum compatibility
- Foreign key constraints ensure data integrity
- Manual availability updates simulate real checkout/return processes
- Designed for educational/demonstration purposes

## Connection to IoT/Library Research
This database structure could easily accommodate data from IoT sensors in library settings:
- **Occupancy sensors** → patron activity tracking
- **RFID systems** → automated checkout logging  
- **Environmental monitors** → usage pattern analysis
- **Digital signage feedback** → patron engagement metrics

---

**Created by:** Tony Zhang  
**Course:** Information Experience Design, Pratt Institute  
**Date:** August 2025

*This project was developed to demonstrate SQL database skills and understanding of library management systems for academic purposes.*
