# Sets
set STOCKS;

# Parameters
param r {STOCKS};         # Return of each stock
param target_return;      # Benchmark return

# Variables
var w {i in STOCKS} >= 0;  # Weight of each stock

# Constraints
s.t. total_weight:
    sum {i in STOCKS} w[i] = 1;

# Objective function: minimize tracking error
minimize tracking_error:
    (sum {i in STOCKS} w[i] * r[i] - target_return)^2;
