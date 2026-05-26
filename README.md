# Hotel Booking Demand Analysis | SQL + Power BI
## 📌 Overview

This project explores hotel booking demand patterns using SQL and Power BI. The main goal was to understand how customer behavior, cancellations, pricing and booking trends affect hotel operations and revenue performance.

I used MySQL for data cleaning and transformation, then built an interactive Power BI dashboard to uncover insights and present the findings visually. The project gave me hands-on experience working through a complete analytics workflow — from raw data to dashboard storytelling.

## 🎯 Project Objectives

The analysis was focused on answering business questions such as:

. Which hotel type receives the most bookings?

. What factors contribute to booking cancellations?

. Which customer segments generate the most revenue?

. How do bookings change across months and seasons?

. Which countries contribute the highest number of guests?

. How does ADR (Average Daily Rate) vary across hotel types?

# 🗂️ Dataset Information

The dataset contains hotel booking records for both Resort Hotels and City Hotels. It includes information related to booking dates, customer types, stay duration, ADR, market segments, cancellations, distribution channels, and guest details.

# 🛠️ Tools Used
MySQL for data cleaning and transformation
SQL for querying and feature engineering
Power BI for dashboard creation and visualization

# 🧹 Data Cleaning Process

The dataset was cleaned in MySQL before being imported into Power BI.

Some of the cleaning steps included:

. handling missing values,
. checking and removing duplicates,
. correcting inconsistent data types,
. creating a unique identifier (booking_id),
. validating ADR anomalies,
. preparing the dataset for visualization.

# ⚙️ Feature Engineering

Additional columns were created to improve the analysis and dashboard experience, including:

. booking_id
. total_guests
. total_nights
. arrival_date
. estimated_revenue
. cancellation_status

These transformations made the dataset more suitable for trend analysis and business reporting.

# 📊 Dashboard Overview

The Power BI dashboard was divided into multiple sections to make the analysis easier to understand.

Executive Overview

This section provides a high-level summary of:

total bookings,
total revenue,
average ADR,
cancellation rate,
booking trends,
and customer distribution.
Cancellation Analysis

Focused on understanding:

cancellation behavior,
risky booking channels,
customer trends,
and the impact of deposit types.
Revenue & Pricing Analysis

This section explored:

ADR trends,
revenue contribution,
pricing behavior,
and hotel performance.
Customer Insights

Focused on:

customer types,
repeated guests,
stay duration,
and geographic customer distribution.

# 📈 Key Insights

Some interesting findings from the analysis include:

City Hotels recorded the highest booking volume.
City Hotels also experienced higher cancellation rates.
Booking demand peaked during high holiday/summer periods.
Online travel agencies contributed heavily to both bookings and cancellations.
Portugal recorded the highest customer concentration in the dataset.
Resort Hotels generally recorded longer guest stays than City Hotels.

# 📷 Dashboard Preview
Executive Overview Dashboard

(Insert dashboard screenshot here)


# 🚀 How to Use
Clone the repository
Run the SQL cleaning scripts
Open the Power BI .pbix file
Explore the interactive dashboard

# 📌 What I Learned

This project helped me improve my skills in:

SQL data cleaning,
data transformation,
Power BI dashboarding,
data storytelling,
and business-focused analysis.

It also gave me practical experience working on an end-to-end analytics project from raw data to dashboard insights.

# 👤 Author

Isaac Mbagwu

Mechatronics Engineering Graduate passionate about Data Analytics, Business Intelligence, Industrial Automation and Smart Manufacturing.

# ⭐ Acknowledgement

Dataset used: Hotel Booking Demand Dataset (publicly available for educational and analytical purposes).
