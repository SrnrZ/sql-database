
# SQL Database Purchase Behavior Analysis

## Overview
This project analyzes consumer behavior and shopping habits in the fashion e-commerce sector in the USA. Using SQL queries on two datasets, we tested several hypotheses related to seasonality, customer demographics, and purchasing patterns to derive insights aimed at increasing sales.

## Datasets
We used two primary datasets:

1. **Consumer Behavior and Shopping Habits Dataset** (Source: Kaggle)
   - 3900 unique customer IDs
   - Variables include age, gender, item purchased, category, location, season, and buy frequency.
   
2. **Income by US State Dataset** (Source: Bureau of Economic Analysis)
   - Income data per capita for all 50 states in the USA.

## Business Goal
The primary objective of this project is to identify key insights into consumer preferences, tendencies, and patterns, ultimately to boost e-commerce sales.

## Hypotheses Tested
We tested five main hypotheses using SQL queries on the datasets:

1. **H1: Customers buy more fashion items in the summer.**
   - Result: **False**

2. **H2: Different seasons have different top-selling categories.**
   - Result: **True**

3. **H3: Female customers purchase more clothing items than male customers.**
   - Result: **False**

4. **H4: Younger customers purchase more fashion items than older customers.**
   - Result: **False**

5. **H5: Income per capita correlates positively with purchase frequency & average amount spent per item.**
   - Result: **False**

## Challenges Encountered
- **Entity-Relational Model**: It was challenging to connect the two datasets using keys due to differences in data structure. This issue was resolved through SQL joins.
- **Synthetic Data**: The shopping dataset appeared to be synthetic, which limited the real-world application of some insights.

## Conclusion
While some hypotheses were refuted, the project still provided valuable insights into seasonal purchasing trends and category preferences. These insights can guide targeted marketing and inventory strategies to boost fashion e-commerce sales in the USA.

## Technologies Used
- SQL
- ER Diagramming Tools
