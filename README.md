# SQL Mandatory Assignment 2 – Restaurant Data Analysis

## 📌 Project Overview

This project is part of the **Intellipaat SQL Mandatory Assignment 2**, focused on analyzing restaurant data using SQL. The assignment uses the Jomato dataset, which contains information about restaurants in a city.

The objective is to apply SQL functions, conditional logic, date functions, and aggregation techniques to extract meaningful insights from restaurant data and generate useful reports.

## 🎯 Objectives

- Create and use a user-defined function to modify cuisine-related text.
- Identify restaurants and cuisine types associated with the maximum ratings.
- Categorize restaurant ratings using conditional logic.
- Apply mathematical functions to restaurant ratings.
- Extract date components using SQL date functions.
- Calculate average restaurant costs using `ROLLUP`.

## 🛠️ Tools & Technologies

- **SQL** – Data querying and analysis
- **SQL Server** – Database management and query execution
- **SQL Server Management Studio (SSMS)** – SQL development and testing

## 📂 Assignment Tasks

### 1. User-Defined Function

Create a user-defined function to insert the word `Chicken` into `Quick Bites`.

**Example output:** `Quick Chicken Bites`

### 2. Maximum Restaurant Rating

Use the created function and display the restaurant name and cuisine type associated with the maximum rating.

### 3. Rating Status Classification

Create a `Rating Status` column to categorize restaurants based on their ratings:

| Rating Condition | Rating Status |
|---|---|
| Above 4 | Excellent |
| Above 3.5 and below 4 | Good |
| Above 3 and below 3.5 | Average |
| Below 3 | Bad |

*Note: The assignment does not explicitly specify classifications for ratings equal to 3, 3.5, or 4. These boundary cases should be handled according to the final SQL implementation.*

### 4. Mathematical and Date Functions

Apply the following functions to the rating column:

- `CEILING()` – Returns the smallest integer greater than or equal to the rating.
- `FLOOR()` – Returns the largest integer less than or equal to the rating.
- `ABS()` – Returns the absolute value of the rating.

Also, display the current date and extract the year, month name, and day separately.

### 5. Average Cost Using ROLLUP

Display restaurant type and total average cost using the `ROLLUP` operator to generate grouped results and summary rows.

## 📊 Key SQL Concepts Practiced

- User-defined functions (UDFs)
- String manipulation
- Aggregate functions
- Maximum value analysis
- `CASE` expressions
- Mathematical functions
- Date and time functions
- `GROUP BY`
- `ROLLUP`
- Data reporting and analysis

## 💡 Learning Outcomes

Through this assignment, I practiced applying SQL functions to real-world-style restaurant data, classifying ratings into meaningful categories, extracting date-based information, and generating summary reports using grouping and aggregation techniques.

This assignment strengthened my understanding of SQL querying and analytical techniques useful for data analyst roles.

## 👩‍💻 Author

**Pournami Manthodi**

- GitHub: [PournamiManthodi](https://github.com/PournamiManthodi)
- LinkedIn: [Connect with me](https://www.linkedin.com/in/pournamimanthodi/)

---

*Project completed as part of the Intellipaat SQL training program.*
