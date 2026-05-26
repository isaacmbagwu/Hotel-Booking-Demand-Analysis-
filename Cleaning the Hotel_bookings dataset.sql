SET SQL_SAFE_UPDATES = 0;

# 1. CREATING A WORKING TABLE
-- To avoid modifying the raw dataset directly
CREATE TABLE hotel_booking_cleaned AS
SELECT *
FROM hotel_bookings;


# 2. PREVIEW THE DATA
-- Inspecting dataset structure and and records
SELECT * 
FROM hotel_booking_cleaned 
LIMIT 10; 

# 3. CHECK FOR MISSING VALUES
-- Identifying important columsa with NULL values

SELECT 
	SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS missing_country,
    SUM(CASE WHEN children IS NULL THEN 1 ELSE 0 END) AS missing_children,
    SUM(CASE WHEN agent IS NULL THEN 1 ELSE 0 END) AS missing_agents,
    SUM(CASE WHEN company IS NULL THEN 1 ELSE 0 END) AS missing_company
FROM hotel_booking_cleaned;

# 4. HANDLING THE MISSING VALUES
-- Replacing the NULL values with the appropriate defaults

-- Replacing missing countries with 'Unknown'
UPDATE hotel_booking_cleaned
SET country = 'Unknown'
WHERE country IS NULL;

-- Replacing missing children with 0
UPDATE hotel_booking_cleaned
SET children = 0
WHERE children IS NULL;

-- Replacing missing agents with 0
UPDATE hotel_booking_cleaned
SET agent = 0
WHERE agent IS NULL;

-- Replacing missing companies with 0
UPDATE hotel_booking_cleaned
SET company = 0
WHERE company IS NULL;


# 5. CHECK FOR DATA TYPES
-- Validating the column data types before analysis
DESCRIBE hotel_booking_cleaned;

-- Convert ADR to decimal for pricing precision
ALTER TABLE hotel_booking_cleaned
MODIFY adr DECIMAL(10,2);

-- Convert agent to integer
ALTER TABLE hotel_booking_cleaned
MODIFY agent INT NOT NULL;

-- Convert company to integer
ALTER TABLE hotel_booking_cleaned
MODIFY company INT NOT NULL;

-- Convert reservation_status_date to date
ALTER TABLE hotel_booking_cleaned
MODIFY reservation_status_date DATE;

# 6. DENTIFY INVALID VALUES
-- Detect unrealistic ADR (Average Daily Rate) values
SELECT *
FROM hotel_booking_cleaned
WHERE adr < 0;

# 7. REMOVE INVALID ADR VALUES
-- Ensure pricing values are realistic

DELETE FROM hotel_booking_cleaned
WHERE adr < 0;

# 8. CREATING TOTAL GUESTS COLUMN
-- Generating a useful analytical metric

ALTER TABLE hotel_booking_cleaned
ADD total_guests INT NOT NULL;

UPDATE hotel_booking_cleaned
SET total_guests = adults + children + babies;

# 9. CREATING ARRIVAL DATE COLUMN
-- Genrating a useful analytical metric for the date of arrival of guests

ALTER TABLE  hotel_booking_cleaned
ADD arrival_date DATE;

UPDATE hotel_booking_cleaned
SET arrival_date = STR_TO_DATE(
	CONCAT(
		arrival_date_day_of_month, '-',
        arrival_date_month, '-',
        arrival_date_year
	),
    '%d-%M-%Y'
    );
    