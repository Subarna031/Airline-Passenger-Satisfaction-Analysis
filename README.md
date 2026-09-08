# ✈️ Airline Passenger Satisfaction Analysis

An end-to-end data analysis project using **Python, PostgreSQL, SQL, and Power BI** to investigate passenger satisfaction, service quality, customer segments, and flight delays.

The project focuses on transforming raw airline passenger data into meaningful business insights that can help airlines improve customer experience and operational performance.

## 📌 Project Overview

Customer satisfaction is an important measure of airline performance. Passengers evaluate different aspects of their journey, including inflight services, online booking, seat comfort, cleanliness, baggage handling, and flight delays.

This project analyzes passenger feedback and flight information to identify:

* Overall passenger satisfaction
* Differences in satisfaction across customer segments
* Service areas that require improvement
* The relationship between flight delays and satisfaction
* Differences in satisfaction across travel classes
* Passenger characteristics associated with different satisfaction levels

The analysis combines **data cleaning, exploratory data analysis, SQL business analysis, and interactive dashboard development**.


## 🎯 Business Objective

> **Analyze airline passenger feedback and flight information to identify the major factors influencing customer satisfaction and provide data-driven recommendations for improving the passenger experience.**

### Key business questions

1. What percentage of passengers are satisfied?
2. Which travel class has the highest satisfaction?
3. Are business travelers more satisfied than personal travelers?
4. Are loyal customers more satisfied than disloyal customers?
5. Which airline services receive the highest and lowest ratings?
6. Which services have the largest rating gap between satisfied and dissatisfied passengers?
7. How do departure and arrival delays affect satisfaction?
8. Which age groups have the highest satisfaction?
9. Is flight distance associated with passenger satisfaction?
10. Which areas should the airline prioritize for customer-experience improvements?

## 📊 Dataset Summary

The dataset contains passenger demographic information, travel details, service ratings, flight delays, and an overall satisfaction outcome.

### Dataset information

| Attribute               | Description                             |
| ----------------------- | --------------------------------------- |
| Dataset                 | Airline Passenger Satisfaction          |
| Number of rows          | *Add verified row count*                |
| Number of columns       | *Add verified column count*             |
| Target variable         | `Satisfaction`                          |
| Satisfaction categories | Satisfied, Neutral or Dissatisfied      |
| Data type               | Passenger survey and flight information |

### Dataset features

#### 👤 Passenger information

| Column         | Description                        |
| -------------- | ---------------------------------- |
| Gender         | Gender of the passenger            |
| Customer Type  | Loyal or disloyal customer         |
| Age            | Age of the passenger               |
| Type of Travel | Business Travel or Personal Travel |
| Class          | Business, Eco, or Eco Plus         |

#### ✈️ Flight information

| Column                     | Description                      |
| -------------------------- | -------------------------------- |
| Flight Distance            | Distance of the flight journey   |
| Departure Delay in Minutes | Minutes delayed during departure |
| Arrival Delay in Minutes   | Minutes delayed during arrival   |

#### ⭐ Passenger service ratings

The service-rating columns contain satisfaction scores from **0 to 5**, where the meaning of `0` is **Not Applicable**.

| Column                            | Description                                              |
| --------------------------------- | -------------------------------------------------------- |
| Inflight wifi service             | Satisfaction with inflight Wi-Fi                         |
| Departure/Arrival time convenient | Satisfaction with departure and arrival time convenience |
| Ease of Online booking            | Satisfaction with online booking                         |
| Gate location                     | Satisfaction with gate location                          |
| Food and drink                    | Satisfaction with food and drinks                        |
| Online boarding                   | Satisfaction with online boarding                        |
| Seat comfort                      | Satisfaction with seat comfort                           |
| Inflight entertainment            | Satisfaction with inflight entertainment                 |
| On-board service                  | Satisfaction with onboard service                        |
| Leg room service                  | Satisfaction with legroom                                |
| Baggage handling                  | Satisfaction with baggage handling                       |
| Check-in service                  | Satisfaction with check-in service                       |
| Inflight service                  | Satisfaction with inflight service                       |
| Cleanliness                       | Satisfaction with cleanliness                            |

#### 🎯 Target variable

| Column       | Description                        |
| ------------ | ---------------------------------- |
| Satisfaction | Overall airline satisfaction level |

Possible values:

```text
Satisfied
Neutral or Dissatisfied
```

---

## 🛠️ Tech Stack

* **Python** — Data cleaning, feature engineering, and exploratory data analysis
* **Pandas** — Data manipulation and transformation
* **NumPy** — Numerical operations
* **Matplotlib** — Data visualization
* **Seaborn** — Statistical visualization
* **PostgreSQL** — Database storage and SQL analysis
* **SQL** — Business-question analysis
* **Power BI** — Interactive dashboard and data storytelling
* **Git & GitHub** — Version control and project documentation

---

# 🧹 Data Preparation & Cleaning

The dataset was prepared using Python and Pandas before performing SQL analysis and dashboard development.

### 1. Data loading

Imported the dataset using Pandas.

```python
import pandas as pd

df = pd.read_csv("airline_passenger_satisfaction.csv")
```

### 2. Initial exploration

Inspected the dataset structure, data types, and statistical summary.

```python
df.info()
df.describe()
df.head()
```

### 3. Missing-value analysis

Checked missing values in each column.

```python
df.isnull().sum()
```

Missing values were investigated and handled according to the data type and analytical requirements.

### 4. Duplicate checking

```python
df.duplicated().sum()
```

### 5. Column standardization

Column names were standardized for easier use in Python, SQL, and Power BI.

### 6. Feature engineering

Created additional analytical columns:

#### Total Delay

```python
df["Total_Delay"] = (
    df["Departure_Delay"] +
    df["Arrival_Delay"]
)
```

#### Delay Category

```text
On Time
Minor Delay
Moderate Delay
Major Delay
```

#### Age Group

```text
Under 18
18-30
31-45
46-60
60+
```

### 7. Data consistency checks

Checked for:

* Missing values
* Duplicate records
* Invalid age values
* Invalid satisfaction ratings
* Unexpected categorical values
* Incorrect delay values
* Data-type inconsistencies

### 8. Database integration

The cleaned dataset was loaded into PostgreSQL for SQL-based business analysis.

---

# 🔍 Exploratory Data Analysis

The exploratory analysis was performed using Python, Pandas, Matplotlib, and Seaborn.

### Analysis areas

#### 👥 Customer analysis

* Satisfaction distribution
* Satisfaction by gender
* Satisfaction by customer type
* Satisfaction by travel class
* Satisfaction by type of travel
* Satisfaction by age group

#### ⭐ Service analysis

* Average rating of each service
* Service ratings by satisfaction category
* Service ratings by travel class
* Comparison of satisfied and dissatisfied passengers

#### ✈️ Flight performance analysis

* Average departure delay
* Average arrival delay
* Total delay analysis
* Delay category distribution
* Relationship between delays and satisfaction
* Flight distance analysis
---

# 📈 Power BI Dashboard

An interactive Power BI dashboard was developed to present passenger satisfaction and flight-performance insights.

The dashboard contains **three analytical pages**.

---

## 📊 Page 1 — Executive Overview

### Purpose

Provide a high-level summary of passenger satisfaction and customer segments.

### KPI Cards

* Total Passengers
* Satisfaction Rate
* Average Age
* Average Flight Distance
* Average Total Delay

### Visuals

| Visual                              | Chart type                | Purpose                                                      |
| ----------------------------------- | ------------------------- | ------------------------------------------------------------ |
| Passenger Satisfaction Distribution | Donut Chart               | Show the proportion of satisfied and dissatisfied passengers |
| Satisfaction by Travel Class        | 100% Stacked Column Chart | Compare satisfaction percentages across classes              |
| Satisfaction by Type of Travel      | Clustered Bar Chart       | Compare business and personal travelers                      |
| Satisfaction by Customer Type       | Clustered Bar Chart       | Compare loyal and disloyal customers                         |

### Slicers

* Gender
* Customer Type
* Type of Travel
* Class
* Age Group
* Delay Category

---

## 📊 Page 2 — Passenger Experience Analysis

### Purpose

Identify which passenger services perform well and which require improvement.

### Visuals

| Visual                          | Chart type                         | Purpose                                                               |
| ------------------------------- | ---------------------------------- | --------------------------------------------------------------------- |
| Average Service Ratings         | Horizontal Bar Chart               | Rank services from highest to lowest average rating                   |
| Service Ratings by Satisfaction | Clustered Bar Chart                | Compare service ratings between satisfied and dissatisfied passengers |
| Service Rating by Class         | Matrix with Conditional Formatting | Compare service performance across travel classes                     |
| Service Performance Heatmap     | Matrix                             | Identify service-rating differences across satisfaction categories    |

### Key analysis

The page focuses on:

* Inflight Wi-Fi
* Online boarding
* Seat comfort
* Cleanliness
* Inflight entertainment
* Food and drinks
* Baggage handling
* Check-in service
* Onboard service
* Legroom

---

## 📊 Page 3 — Flight Performance Analysis

### Purpose

Analyze flight delays and their relationship with passenger satisfaction.

### KPI Cards

* Average Departure Delay
* Average Arrival Delay
* Average Total Delay
* On-Time Passengers

### Visuals

| Visual                          | Chart type                | Purpose                                                          |
| ------------------------------- | ------------------------- | ---------------------------------------------------------------- |
| Satisfaction by Delay Category  | 100% Stacked Column Chart | Compare satisfaction across delay levels                         |
| Average Delay by Satisfaction   | Clustered Column Chart    | Compare average delays for satisfied and dissatisfied passengers |
| Flight Distance vs Satisfaction | Scatter Chart             | Investigate the relationship between distance and satisfaction   |
| Satisfaction by Age Group       | Clustered Bar Chart       | Compare satisfaction across age groups                           |

---

## 🎨 Dashboard Design

The dashboard uses:

* Clean and consistent layout
* KPI cards for important metrics
* Bar charts for category comparisons
* Donut chart for satisfaction distribution
* Matrix heatmaps for service analysis
* Slicers for interactive filtering
* Page navigation buttons
* Consistent formatting across all pages

---

# 📌 Key Findings

The following findings should be added after completing the analysis.
### Example finding format

* **Overall Satisfaction:** *Add the verified satisfaction percentage.*
* **Travel Class:** *Identify which class has the highest satisfaction rate.*
* **Customer Type:** *Compare loyal and disloyal customer satisfaction.*
* **Service Performance:** *Identify the lowest-rated services.*
* **Delay Analysis:** *Compare average delays between satisfied and dissatisfied passengers.*
* **Age Group:** *Identify the age group with the highest satisfaction.*

---

# 💡 Business Recommendations

#### 1. Improve low-rated services

Prioritize services with the lowest average ratings and the largest satisfaction gaps.

#### 2. Improve online passenger experience

If online boarding, online booking, or Wi-Fi receives low ratings, investigate improvements to digital services.

#### 3. Reduce flight delays

If dissatisfied passengers experience longer delays, focus on improving departure and arrival punctuality.

#### 4. Improve economy-class experience

If Economy passengers report lower satisfaction, investigate seat comfort, legroom, entertainment, and service quality.

#### 5. Strengthen customer loyalty

If loyal customers show higher satisfaction, consider improving loyalty-program benefits and customer retention strategies.

---


# 📷 Dashboard Preview

<img width="538" height="313" alt="image" src="https://github.com/user-attachments/assets/11c5d867-16b0-4ab4-9424-b5d017bf1cf1" />



<img width="572" height="314" alt="image" src="https://github.com/user-attachments/assets/49bc961c-da1a-40d5-af21-bfac8b3f4e67" />


<img width="574" height="316" alt="image" src="https://github.com/user-attachments/assets/242aa6f8-62d5-445d-ae27-3dfa6858846e" />


---

# 🔗 Dashboard Link
[View Live Power BI Dashboard](https://app.powerbi.com/groups/me/reports/550db953-bb73-4a6b-baff-208498b0a35a/9816ae62a43b0cf0fbb7?experience=power-bi)

