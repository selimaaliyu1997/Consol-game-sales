# Consol-game-sales
# 🎮 Video Game Sales SQL Analysis

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)
![Data Analysis](https://img.shields.io/badge/Focus-Data%20Analysis-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 📌 Project Overview

This project explores a **video game sales dataset** using SQL to uncover insights about regional sales performance, platform trends, and data quality challenges.

It demonstrates practical SQL skills including:

* Aggregations
* Sorting & filtering
* String manipulation
* Data cleaning
* Data type conversion

---


---



## 🗂️ Dataset Features

* 🎮 Game Titles
* 🕹️ Platforms (Console Types)
* 🏢 Publishers
* 📅 Release Year
* 🌍 Regional Sales (NA, Global, etc.)

---

## 🎯 Business Questions Solved

| # | Question                                       |
| - | ---------------------------------------------- |
| 1 | % of Global Sales from North America           |
| 2 | Game titles sorted by platform & release year  |
| 3 | Extract publisher name prefixes                |
| 4 | Platforms released near major shopping seasons |
| 5 | Platform longevity ranking                     |
| 6 | Data type conversion for Year column           |
| 7 | Handling missing data                          |

---

## 🧮 SQL Queries & Solutions

### 1. North America Sales Percentage

```sql
SELECT 
    ROUND(SUM(NA_Sales) / SUM(Global_Sales) * 100, 2) AS NA_Sales_Percentage
FROM video_game_sales;
```

---

###  2. Games Ordered by Platform & Year

```sql
SELECT Name, Platform, Year
FROM video_game_sales
ORDER BY Platform ASC, Year DESC;
```

---

### 3. Publisher Name Prefix

```sql
SELECT Name, LEFT(Publisher, 4) AS Publisher_Code
FROM video_game_sales;
```

---

### 4. Platforms Released Before Holiday Seasons

```sql
SELECT DISTINCT Platform, Year
FROM video_game_sales
WHERE MONTH(Release_Date) IN (10, 11, 12);
```

---

### 5. Platform Longevity

```sql
SELECT 
    Platform,
    MIN(Year) AS First_Release,
    MAX(Year) AS Last_Release,
    (MAX(Year) - MIN(Year)) AS Longevity
FROM video_game_sales
GROUP BY Platform
ORDER BY Longevity ASC;
```

---

###  6. Convert Year Data Type

```sql
SELECT CAST(Year AS INT) AS Converted_Year
FROM video_game_sales;
```

---

### 7. Handling Missing Data

**Remove null values**

```sql
DELETE FROM video_game_sales
WHERE Year IS NULL;
```

**Replace null values**

```sql
UPDATE video_game_sales
SET Year = 0
WHERE Year IS NULL;
```

**Use COALESCE**

```sql
SELECT COALESCE(Year, 0) AS Year
FROM video_game_sales;
```

---

## 📈 Key Insights

*  North America contributes a large portion of global sales
*  Some platforms dominate the market for longer periods
*  Data cleaning is critical for accurate reporting

---

## 🛠️ Tech Stack

* **SQL (MySQL Workbench)**
* Data Cleaning Techniques
* Analytical Querying

---




---

## 📸 Project view

<img width="393" height="457" alt="Capture SQL" src="https://github.com/user-attachments/assets/ccf6081b-bdb5-418e-9d32-517a5b7d991a" />
<img width="319" height="464" alt="Capture SQL2" src="https://github.com/user-attachments/assets/3eff16c8-efed-4efe-b46b-f2ddc6b85766" />
<img width="407" height="433" alt="Capture SQL3" src="https://github.com/user-attachments/assets/a2291311-a31d-428e-8a0e-e53da6e17ae1" />




---

## 👤 Author

**Aliyu Salamatu Ibrahim**

📧 Email: [selimaaliyu1997@gmail.com](mailto:your-email@example.com)
🔗 GitHub: https://github.com/selimaaliyu1997

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!

---



---



