# Risk Analysis of IBM Stock Prices

This project provides a quantitative analysis of IBM stock prices using various financial risk assessment methods. The analysis includes a comparison of Delta Normal, Historical, and Monte Carlo approaches for estimating risk.

## Overview

The script in this repository:
- Fetches historical IBM stock data.
- Calculates daily returns.
- Applies different risk measurement techniques.
- Visualizes results through histograms and Kernel Density Estimation (KDE).

## Features

- **Delta Normal Approach**:
  - Computes mean, variance, and standard deviation of daily returns.
  - Uses the quantile function to estimate risk at 1% and 5% levels.

- **Historical Approach**:
  - Orders historical returns to determine value-at-risk (VaR) at different confidence levels.

- **Monte Carlo Simulation**:
  - Generates synthetic returns using KDE.
  - Produces a histogram of simulated daily returns.
  - Estimates VaR at 1% and 5% levels from simulated data.

## Key Libraries

- `quantmod`: For fetching and manipulating stock data.
- `ks`: For KDE-based risk estimation.

## Usage

1. Install the required packages:
   ```R
   install.packages("quantmod")
   install.packages("ks")
