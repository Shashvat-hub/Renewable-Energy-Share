# Energy Revolution: From Coal to Clean Power 🌍⚡

> Analyzing 25 years of global renewable energy transition (2000–2025) across 231 countries using SQL, Python, and Power BI.

--

## 📋 Project Overview

This project investigates the global shift from fossil fuel-dependent electricity generation toward renewable energy sources. By analyzing comprehensive energy data spanning 2000–2025, we uncover patterns, trends, and insights into how different nations are transitioning their energy infrastructure.

**Key Question:** *Which countries are leading the renewable energy revolution, and how is the global energy landscape evolving?*

---

## 📊 Dataset

| Attribute | Details |
|-----------|---------|
| **Source** | Renewable Energy Share Dataset (2000–2025) |
| **Countries** | 231 nations globally |
| **Time Period** | 26 years (2000–2025) |
| **Records** | 6,006+ observations |
| **Key Metrics** | Electricity generation, demand, renewable/fossil fuel shares, country-level production |

### Data Variables:
- **Country**: Nation identifier and ISO code
- **Year**: Calendar year (2000–2025)
- **Population**: Country population for context
- **Electricity Generation**: Total electricity produced (TWh)
- **Electricity Demand**: Total electricity consumed (TWh)
- **Renewable Sources**: Solar, Wind, Hydro, Nuclear electricity (TWh)
- **Fossil Fuels**: Coal, Gas, Oil electricity (TWh)

---

## 🛠️ Technology Stack

| Layer | Technologies |
|-------|--------------|
| **Data Cleaning & EDA** | Python, Pandas, NumPy, Matplotlib, Seaborn |
| **Database & Querying** | SQL Server, T-SQL |
| **Visualization** | Power BI, Python (Matplotlib/Seaborn) |
| **Notebooks** | Jupyter Notebook |
| **Version Control** | Git, GitHub |

---

## 📁 Project Structure

```
energy-revolution/
│
├── README.md                                    # Project documentation
├── Data/
│   ├── renewable_energy_share_2000_2025.csv   # Raw dataset (231 countries, 26 years)
│   └── Energy_share_Cleaned_Dataset.csv       # Cleaned & processed data
│
├── Analysis/
│   ├── Energy_Share.ipynb                     # Python EDA & visualizations
│   └── Energy_Revolution.sql                  # SQL queries & advanced analytics
│
├── Dashboard/
│   └── Energy_Share_Dashboard.pbix            # Interactive Power BI dashboard
│
└── Images/
    └── dashboard_screenshot.png               # Dashboard preview
```

---

## 🔍 Analysis Breakdown

### 1. **Exploratory Data Analysis (EDA)** - Python

Jupyter notebook with comprehensive data exploration:
- Data cleaning and missing value treatment
- Statistical summaries and descriptive analysis
- Distribution of electricity generation across countries
- Renewable vs. fossil fuel composition trends
- Year-over-year changes in energy mix
- Visualizations: Matplotlib & Seaborn plots

**Key Insights:**
- Global electricity generation has increased significantly
- Top renewable adopters: Iceland, Norway, Brazil (hydro-dominant)
- Growing solar & wind adoption in recent years
- Energy demand vs. supply gaps in developing nations

---

### 2. **SQL Analysis** - SQL Server

**10 Advanced T-SQL Queries** analyzing renewable energy patterns:

#### Query Categories:

**Exploratory Queries:**
1. Total countries and global population
2. Distinct countries in dataset
3. Total years covered in analysis
4. Electricity generation vs. demand comparison

**Comparative Analysis:**
5. Electricity generation by year (trends over 25 years)
6. **Top 20 countries highly dependent on low-carbon electricity (%)** 
   - Solar + Wind + Hydro + Nuclear combined
7. **Top 20 countries highly dependent on fossil fuels (%)**
   - Coal + Gas + Oil combined
8. **Top 20 countries dependent on oil electricity (%)**
   - Specific oil dependency analysis

**Recent Trends:**
9. Global electricity dependency mix (2024)
   - Solar, Wind, Oil, Coal percentages
10. **India's electricity dependency (2024)**
    - Solar, Wind, Oil, Coal breakdown
    - Insights into India's energy transition

#### Query Highlights:
- Complex aggregations with GROUP BY
- Window functions for ranking analysis
- CTEs for multi-step transformations
- Percentage calculations and comparisons
- Country-level and global-level insights

---

### 3. **Interactive Power BI Dashboard**

**Dashboard Features:**
- 📅 **Year Slicer**: Filter data across 2000–2025
- 📈 **Time Series**: Electricity generation trends over 25 years
- 🌍 **Geographic Visualization**: Map showing energy metrics by country
- 🏆 **Top 5 Countries**: Highest electricity generation by year
- 📊 **Energy Mix Charts**: Coal, Solar, Wind electricity composition
- 🔍 **Country Comparison**: Comparative analysis of renewable adoption

**Visualizations Included:**
1. Total electricity generation trend (2000–2024)
2. Top 5 countries by electricity generation
3. Global coal vs. renewable electricity split
4. Top 5 countries dependent on oil electricity
5. Worldwide electricity generation map

---

## 🎯 Key Findings

### Global Trends:
✅ **Renewable Growth**: Solar and wind electricity generation increasing exponentially  
✅ **Coal Decline**: Gradual reduction in coal-based electricity in developed nations  
✅ **Hydro Stability**: Hydroelectric power remains largest renewable source globally  
✅ **Geographic Disparity**: Massive variation in renewable adoption across countries  

### Country Insights:
🥇 **Renewable Leaders**: Iceland, Norway, Brazil, Uruguay (70%+ renewable share)  
⚠️ **Fossil Fuel Heavy**: Coal-dependent nations in Asia, fossil fuel-rich Middle East  
📈 **Emerging Shift**: India showing increased solar adoption in recent years  
🌍 **Global Average**: ~25% renewable electricity mix (2024 estimate)

---

## 🚀 How to Use This Project

### Prerequisites:
```bash
# Python packages
pip install pandas numpy matplotlib seaborn jupyter

# SQL Server (local or cloud setup)
# Power BI Desktop (for dashboard viewing)
```

### Running the Analysis:

**1. Data Exploration (Python)**
```bash
# Open Jupyter notebook
jupyter notebook Energy_Share.ipynb

# Run all cells to see:
# - Data cleaning steps
# - Statistical summaries
# - Visualizations
# - Key insights
```

**2. SQL Queries (SQL Server)**
```sql
-- Connect to SQL Server
USE PROJECTDB;

-- Run Energy_Revolution.sql file
-- Executes 10 analytical queries
-- Extract insights for reporting
```

**3. Interactive Dashboard (Power BI)**
```bash
# Open Power BI Desktop
# Load Energy_Share_Dashboard.pbix
# Interact with year sliders and filters
# Export visualizations for presentations
```

---

## 📈 Visualizations Samples

### Python EDA Outputs:
- Electricity generation growth curves
- Distribution histograms by country
- Renewable vs. fossil fuel bar charts
- Correlation heatmaps
- Time series decomposition

### Power BI Dashboard:
- Interactive world map with energy metrics
- Year-over-year trend analysis
- Country rankings and comparisons
- Energy mix composition charts
- KPI cards for global statistics

---

## 💡 Insights & Recommendations

### For Data Analysts:
- This project demonstrates full data pipeline: raw data → cleaning → analysis → visualization
- Multi-tool approach (Python, SQL, Power BI) shows practical BI skills
- Complex calculations and country-level comparisons show analytical depth

### For Stakeholders:
1. **Renewable investment hotspots**: Identify countries with fastest adoption rates
2. **Policy implications**: Compare national energy strategies
3. **Transition opportunities**: Analyze coal-dependent nations for renewable conversion
4. **Global targets**: Track progress toward renewable energy goals

---

## 📝 Project Workflow

```
Raw Data (CSV)
    ↓
[Python] Data Cleaning & EDA
    ↓
[SQL Server] Advanced Queries & Aggregations
    ↓
[Power BI] Interactive Dashboard & Visualizations
    ↓
Insights & Recommendations
```

---

## 🔧 Technical Details

### Data Cleaning Steps:
- Removed rows with critical missing values (>30% missing)
- Standardized country name formats
- Validated year ranges (2000–2025)
- Converted data types for calculations
- Handled negative values and outliers

### SQL Query Techniques:
- **CAST & CONVERT**: Type conversions for calculations
- **SUM & AVG**: Aggregate functions for global statistics
- **GROUP BY**: Country and year-level grouping
- **WHERE & HAVING**: Filtering by conditions
- **ORDER BY**: Ranking countries by metrics
- **Percentage Calculations**: (Renewable / Total) * 100

### Power BI Features:
- Slicers for interactivity
- Map visualizations for geographic context
- Clustered/stacked bar charts for comparisons
- Line charts for trend analysis
- KPI cards for key metrics

---

## 📊 Data Quality Notes

✅ **Coverage**: 231 countries (99%+ global coverage)  
✅ **Completeness**: 25-year continuous dataset  
⚠️ **Gaps**: Some developing nations missing early years (2000–2005)  
✅ **Validation**: Country codes verified against ISO standards  
✅ **Consistency**: Units standardized (TWh, percentage)  

---

## 🤝 Contributing

This is a portfolio project. For questions or improvements:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a pull request

---

## 📚 Learning Resources Used

- **SQL Server Documentation**: Complex query writing
- **Pandas Documentation**: Data manipulation
- **Matplotlib/Seaborn**: Data visualization
- **Power BI Community**: Dashboard best practices
- **Kaggle Datasets**: Data source inspiration

---

## 📄 License

This project is open-source and available for educational and professional use.

---

## 👤 Author

**Shashvat Prajapati**
- Data Analyst | Portfolio Project
- 📧 Email: prajapatishashvat19@gmail.com
- 🔗 LinkedIn: [Shashvat Prajapati](https://www.linkedin.com/in/shashvat-prajapati-67aba2351/)
- 💻 GitHub: [Shashvat-hub](https://github.com/Shashvat-hub)

---

## 🎓 Skills Demonstrated

✅ **Data Analysis**: EDA, statistical summaries, trend identification  
✅ **SQL Expertise**: Complex queries, aggregations, window functions  
✅ **Python Proficiency**: Pandas, NumPy, Matplotlib, Seaborn  
✅ **Business Intelligence**: Power BI dashboard design  
✅ **Data Visualization**: Multiple chart types and interactive features  
✅ **Documentation**: Clear README and code comments  
✅ **Problem-Solving**: Multi-step analysis pipeline  

---

## 📞 Contact & Support

For questions about this project:
- Open an issue on GitHub
- Email: prajapatishashvat19@gmail.com
- Check the Jupyter notebook for detailed walkthroughs

---

**Last Updated:** June 2025  
**Status:** ✅ Complete and Production-Ready

---

**⭐ If you found this helpful, please consider starring this repository!**
