# 📊 Risk Analysis of IBM Stock Prices

This project provides a quantitative analysis of IBM stock prices using various financial risk assessment methods. The analysis includes a comparison of Delta Normal, Historical, and Monte Carlo approaches for estimating risk.

## 🌟 Overview

The script in this repository:
- 📈 Fetches historical IBM stock data.
- 📉 Calculates daily returns.
- 🛠️ Applies different risk measurement techniques.
- 🎨 Visualizes results through histograms and Kernel Density Estimation (KDE).

## ✨ Features

- **⚡ Delta Normal Approach**:
  - Computes mean, variance, and standard deviation of daily returns.
  - Uses the quantile function to estimate risk at 1% and 5% levels.

- **🖜 Historical Approach**:
  - Orders historical returns to determine value-at-risk (VaR) at different confidence levels.

- **🎮 Monte Carlo Simulation**:
  - Generates synthetic returns using KDE.
  - Produces a histogram of simulated daily returns.
  - Estimates VaR at 1% and 5% levels from simulated data.

- **🔄 Live Stock Data**:
  - The script can analyze any live stock data. Simply change the stock ticker in the `tickers` variable to analyze a different stock.

## 📚 Key Libraries

- `quantmod`: For fetching and manipulating stock data.
- `ks`: For KDE-based risk estimation.

## 🛠️ Usage

1. Install the required packages:
   ```R
   install.packages("quantmod")
   install.packages("ks")
   ```
2. Modify the `tickers` variable to select the stock you want to analyze.
3. Run the `RiskAnalysis.R` script to replicate the analysis.

## 📊 Outputs

- Plots of historical daily returns.
- KDE histogram for simulated data.
- VaR estimates at 1% and 5% confidence levels.

## 📜 License

This project is licensed under the MIT License.

## 💬 Contact

For any questions or feedback, feel free to reach out via [GitHub](https://github.com/dantesc03).

---

*🚀 Happy Analyzing!*

