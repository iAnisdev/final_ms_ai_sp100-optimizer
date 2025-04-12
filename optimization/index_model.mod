# Sets
set STOCKS;

# Parameters
param r {STOCKS};         # Return of each stock

# Variables
var w {i in STOCKS} >= 0;  # Weight of each stock

# Constraint: Fully invested portfolio
s.t. total_weight:
    sum {i in STOCKS} w[i] = 1;

# Objective: Match benchmark return (e.g., minimize squared error from average benchmark return)
# Here we simulate matching an average benchmark return (replace with actual value if needed)
param target_return;  # Could be mean of ^OEX or fixed

minimize tracking_error:
    (sum {i in STOCKS} w[i] * r[i] - target_return)^2;

param target_return := <insert value here>;