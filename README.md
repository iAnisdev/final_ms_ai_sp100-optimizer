# SP100 Optimizer

📊 A team project for the **AI-Driven Decision Making** module at the **National College of Ireland**.  
The goal is to create a custom index fund using fewer stocks that closely tracks the **S&P 100** performance.

---

## 🧠 Project Objective

This project aims to construct a simplified index fund using a small subset of high-impact stocks from the **S&P 100**, while closely tracking the performance of the full index. The implementation is structured around two decision-making approaches:

### 1️⃣ Mathematical Optimization using AMPL
- Formulate the portfolio selection and weighting as an **optimization problem**.
- Use **AMPL** to select `q` stocks and assign weights that **maximize correlation** with the S&P 100 index over 3, 6, 9, and 12-month periods.

### 2️⃣ AI-Based Optimization using Genetic Algorithm (GA)
- Implement a **Genetic Algorithm** in Python to evolve stock combinations and weight distributions.
- Use a **fitness function** based on return correlation with the S&P 100 to evaluate and optimize each solution.
- Compare performance with the AMPL approach.

Both methods are evaluated using historical stock price data from the `yfinance` API.

---

## 📁 Project Structure

```
.
├── data/                  # Raw and processed stock data
├── notebooks/            # Jupyter notebooks
│   ├── 01_data_download.ipynb
│   ├── 02_data_analysis.ipynb
│   ├── 03_ampl_model_setup.ipynb
│   ├── 04_ai_alternative_method.ipynb
│   └── 05_evaluation_compare.ipynb
├── optimization/         # AMPL .mod and .dat files
├── requirements.txt     # Python dependencies
├── README.md           # Project documentation
├── .gitignore          # Ignored files
├── LICENSE             # License
└── .env                # Environment variables

```

---

## 💻 Installation

### 1. Create and Activate Virtual Environment

First, create a virtual environment to isolate project dependencies:

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# .\venv\Scripts\activate
```

### 2. Install Dependencies

With the virtual environment activated, install the required packages:

```bash
# Install from requirements.txt
pip install -r requirements.txt
```

### 3. AMPL Setup

To run the optimization notebooks locally, you'll need to:

1. Install AMPL on your system:
   - Download AMPL from [AMPL's official website](https://ampl.com/products/ampl/)
   - Follow the installation instructions for your operating system

2. Update the AMPL path in the notebooks:
   - In `notebooks/03_ampl_model_setup.ipynb`, update the following line with your AMPL installation path:
   ```python
   add_to_path("/Applications/AMPL")  # Update this path to your AMPL installation
   ```
   - For Windows, it might look like: `add_to_path("C:/AMPL")`
   - For Linux, it might look like: `add_to_path("/opt/ampl")`

3. The optimization model files are located in the `optimization/` folder:
   - `index_model.mod`: Contains the optimization model
   - `index_data.dat`: Contains the input data for the model

4. Running AMPL locally:
   ```bash
   # Start AMPL command line interface
   ampl

   # Load the model file
   model optimization/index_model.mod;

   # Load the data file
   data optimization/index_data.dat;

   # Set the solver (e.g., MINOS)
   option solver minos;

   # Solve the optimization problem
   solve;

   # Display the solution
   display w;
   display tracking_error;

   # Save the solution to a file
   display w > optimization/solution.txt;
   ```

## 🛠️ Tools & Technologies

- Python (pandas, yfinance, numpy, sklearn)
- AMPL (mathematical optimization)
- AI/ML methods (e.g., genetic algorithm, regression)
- Jupyter Notebooks
- GitHub for version control and collaboration

## 📈 Evaluation Focus

- Optimization model (AMPL)
- Alternative AI-based method
- Accuracy of fund tracking (correlation with S&P 100)
- Code quality and documentation
- Project report and final presentation

## 🔐 Academic Integrity

- This is a coursework project for educational use only.
- Do not share or publish this repository publicly.
- All work follows the National College of Ireland's academic integrity policies.
