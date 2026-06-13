# Sales Performance Exploratory Data Analysis (EDA)
**Prepared By:** Shivrajsinh Rajput

## Project Overview

This project presents a comprehensive Exploratory Data Analysis of sales transaction data from an e-commerce business. The analysis examines order patterns, product performance, payment method preferences, seasonal trends, and identifies potential outliers to provide actionable business insights.

## Dataset Information

- **File Name**: `Final_Perfect_EDA_Project (1).xlsx`
- **Total Records**: 1,200 orders
- **Data Quality**: Clean, no missing values

### Dataset Sheets

| Sheet Name | Description |
|------------|-------------|
| **Sheet1** | Raw transaction data with 1,200 orders |
| **Statistics** | Summary statistics for key numerical columns |
| **Analysis** | Aggregated insights by product, payment method, and month |
| **Outliers** | Identified high-value order outliers |
| **Observations** | Key findings summary |

## Dataset Schema

| Column | Description | Data Type |
|--------|-------------|-----------|
| OrderID | Unique order identifier (ORD200000 - ORD201199) | String |
| Date | Transaction date | DateTime |
| CustomerID | Unique customer identifier | String |
| Product | Product category (8 types) | String |
| Quantity | Number of units ordered (1-5) | Integer |
| UnitPrice | Price per unit | Float |
| ShippingAddress | Delivery address (Main St format) | String |
| PaymentMethod | Payment type (5 options) | String |
| OrderStatus | Current order status (5 statuses) | String |
| TrackingNumber | Shipping tracking ID | String |
| ItemsInCart | Total items in cart at checkout | Integer |
| CouponCode | Applied discount code | String |
| ReferralSource | Customer acquisition channel | String |
| TotalPrice | Total order value | Float |

## Key Findings

### 1. **Product Performance**
- **Laptop** leads in total quantity sold (535 units)
- **Printer** follows closely (542 units)
- **Phone** has lowest sales volume (411 units)

### 2. **Seasonal Patterns**
- **June** shows highest sales ($170,616) - summer peak
- **January** strong performance ($124,313) - post-holiday
- **September** lowest sales ($69,321) - seasonal dip

### 3. **Payment Method Distribution**
- **Online** most popular (258 orders) - 21.5%
- **Cash** second (246 orders) - 20.5%
- **Gift Card** least used (230 orders) - 19.2%
- All methods have relatively balanced distribution

### 4. **Order Status Analysis**
| Status | Count |
|--------|-------|
| Cancelled | Count determined |
| Delivered | Count determined |
| Pending | Count determined |
| Returned | Count determined |
| Shipped | Count determined |

### 5. **Statistical Summary**

| Metric | Quantity | UnitPrice | ItemsInCart | TotalPrice |
|--------|----------|-----------|-------------|------------|
| **Mean** | 2.95 | $356.41 | 5.48 | $1,053.97 |
| **Median** | 3 | $364.21 | 5 | $823.62 |
| **Minimum** | 1 | $11.39 | 1 | $11.39 |
| **Maximum** | 5 | $699.93 | 10 | $3,456.40 |

## Outlier Analysis

Identified **50+ high-value outlier orders** with the following characteristics:
- Typically involve **maximum quantity (5 units)**
- Feature **premium products** with high unit prices
- Often use **coupon codes** or promotional offers
- Represent **top 4%** of all transactions by value

**Top Outlier Examples**:
- ORD200789: Tablet - $3,456.40 (Highest value)
- ORD200107: Printer - $3,353.75
- ORD200326: Laptop - $3,352.40

## Business Recommendations

### Product Strategy
- **Focus on Laptops & Printers**: Highest performing categories
- **Investigate Phone sales**: Lowest volume despite being essential product
- **Bundle opportunities**: Create laptop-printer combos

### Seasonal Planning
- **Increase inventory** before June (peak season)
- **Boost marketing** in September (lowest sales month)
- **Holiday campaigns** for December-January period

### Payment Optimization
- **Maintain all payment methods** due to balanced distribution
- **Consider digital wallet integration** as "Online" is most popular
- **Review Gift Card** promotions to increase usage

### Order Management
- **Analyze cancellation patterns** to reduce order cancellations
- **Speed up return processing** for returned items
- **Monitor pending orders** for timely fulfillment

## Recommended Visualizations

1. **Monthly Sales Trend** - Line chart showing seasonal patterns
2. **Product Performance** - Bar chart of total quantity by product
3. **Payment Method Distribution** - Pie/Donut chart
4. **Order Status Breakdown** - Stacked bar chart
5. **Outlier Analysis** - Scatter plot (Quantity vs TotalPrice)
6. **Coupon Effectiveness** - Comparison of orders with/without coupons

## Technologies Used

- **Excel** - Data storage and basic analysis
- **Statistical Methods** - Mean, median, min, max calculations
- **Data Quality** - Complete dataset with no missing values

## Data Limitations

1. **No customer demographics** (age, location beyond city)
2. **Limited time period** (2.5 years only)
3. **No competitor data** for benchmarking
4. **No marketing spend data** to calculate ROI
5. **Shipping costs not included** in analysis

## Future Analysis Recommendations

1. **Customer Segmentation** by purchase behavior
2. **Cohort Analysis** for retention metrics
3. **Time Series Forecasting** for sales prediction
4. **A/B Testing** on coupon effectiveness
5. **Geographic Analysis** (Main St addresses are uniform - need better location data)
6. **Customer Lifetime Value (CLV)** calculation
7. **Churn Prediction** modeling