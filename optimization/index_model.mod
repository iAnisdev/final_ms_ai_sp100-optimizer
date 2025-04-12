# ============================
# Index Fund Optimization Model
# ============================

# --- Sets ---
set STOCKS;  # Set of selected stock tickers

# --- Parameters ---
param r {STOCKS};          # Average return of each stock
param target_return;       # Benchmark return to track (e.g., S&P 100)

# --- Variables ---
var w {i in STOCKS} >= 0;   # Weight allocated to each stock (no shorting allowed)

# --- Constraints ---
# Ensure full investment: sum of weights = 1
s.t. total_weight:
    sum {i in STOCKS} w[i] = 1;

# --- Objective ---
# Minimize squared error between portfolio return and benchmark return
