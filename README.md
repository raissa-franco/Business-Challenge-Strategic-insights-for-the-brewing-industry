# 🍺 Business Challenge: Strategic Insights for the Brewing Industry

### Exploring beer styles, alcohol content, and consumer behavior to guide strategic decisions in the brewing market.

---

## 📊 Project Overview

This project analyzes consumer behavior and preferences related to different beer styles, focusing on alcohol content (ABV) and reviewing patterns.  
By comparing mainstream industrial beers and premium craft options, it provides actionable insights to help breweries:

- Develop market strategies
- Improve product planning
- Target the right consumer segments

---

## 📁 Dataset Description

- **Source**: [Beer Reviews Dataset on Kaggle](https://www.kaggle.com/datasets/rdoume/beerreviews)
- **Rows**: 1.5 million+ beer reviews  
- **Columns**: 13 (including `beer_style`, `review_overall`, `review_time`, `abv`, etc.)
- **Focus Variables**:  
  - `abv`: Alcohol By Volume  
  - `beer_style`: Type/style of beer  
  - `review_profilename`: Reviewer (used to analyze consumer types)

> ⚠️ The dataset is mostly clean, with only minor missing values that do not significantly impact the analysis.

---

## 🎯 Research Goal

The main goal is to support brewing companies in shaping market strategies by understanding:

- Who their most frequent consumers are
- Which beer styles are most consumed
- How to better direct marketing for mainstream vs. premium beers
- Which customer types prefer each category

---

## 🧪 Steps Taken

1. **Data Reading & Cleaning**
   - Dataset already well-structured
   - Minor missing values handled

2. **Exploratory Data Analysis (EDA)**
   - Univariate & bivariate analysis
   - ABV distribution across beer styles
   - Consumer behavior segmentation via review profiles

3. **Visualizations**
   - Bar plots, histograms, boxplots
   - Top 15 beer styles by frequency
   - ABV comparison between mainstream and premium beers

---

## 🔍 Key Findings

- 🍺 **Mainstream beers** (with medium ABV) are the most consumed.
- 🔝 There's still **a strong market for high-ABV (premium) beers** — the Top 15 beer styles include many strong beers.
- 👥 **Generalist consumers** (who try many styles) tend to prefer mainstream beers.
- 🎯 **Specialist consumers**, who focus on one or two styles, tend to favor premium options.

---

## 🛠️ How to Reproduce the Project

### 🐍 Requirements

- **Python**: 3.11.5  
- **Libraries**:
  ```python
  pandas
  numpy
  matplotlib.pyplot
  seaborn


### 🧾 Files to Run

- `Business_Challenge.ipynb` — Jupyter Notebook with the main analysis and visualizations.
- `solutions.sql` — SQL file answering 10 exploratory questions about the dataset.

---

### 🔮 Next Steps / Improvements

- 📈 Perform temporal analysis to track changes in beer consumption over the years — especially to see if premium beer consumption is rising.
- 🌍 Explore potential for regional segmentation or demographic clustering (if data allows).
- 🤖 Consider building a recommender system for beer styles based on reviewer profiles.

---

### 📂 Repository Structure

| File/Folder               | Description                                         |
|---------------------------|-----------------------------------------------------|
| `Business_Challenge.ipynb` | Main notebook containing the EDA and visualizations |
| `solutions.sql`           | SQL file answering 10 exploratory questions          |
| `Business Challenge.pdf`  | Slide presentation of the business findings         |
| `README.md`               | This file – project overview and documentation      |

