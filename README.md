<h1>Walmart Sales Analysis (Data Analysis Project With SQL + Python)</h1>
<p>
This project focuses on the data analysis of Walmart sales data. It involves data processing, data cleaning, and exploratory data analysis (EDA) using Python and SQL. Advanced SQL queries were used to extract meaningful business insights that support data-driven decision making in retail operations.
</p>
<hr></hr>

<h2>Project Step</h2>

<h3>1. Set Up the Environment</h3>
<ul>
<li><strong>Tool used:</strong>VS Code,Python,SQL(PostgreSQL)</li>
<li><strong>Goal:</strong>Create a structured workspace within VS Code for efficient development and analysis.</li>
</ul>

<h3>2. Set up Kaggle API </h3>
<ul>
  <li><strong>Kaggle API:</strong> Used to programmatically download datasets using authentication tokens.</li>

  <li>
    <strong>Authentication Steps:</strong>
    <ul>
      <li>Generate an API token from Kaggle account settings</li>
      <li>Use Kaggle CLI for authentication</li>
    </ul>
  </li>

  <li>
    <strong>Note:</strong> Refer to official Kaggle documentation if needed for setup guidance.
  </li>
</ul>

<h3>3. Download Walmart Sales Data</h3>
<ul>
<li><strong>Data Source: </strong>Download the dataset using the Kaggle API or directly from Kaggle.</li>
<li><strong>Dataset Link:<a href='https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets'>Walmart Sales Dataset</a></strong></li>
<li><strong>Storage:</strong>Save the extracted dataset inside the <code>data/</code> folder for easy access and analysis.</li>
</ul>


<h3>4. Install Required Environment & Libraries </h3>

<ul>
<li>
<strong>Create a Python Virtual Environment:</strong>
First, create a Python virtual environment:
</li>
</ul>

```bash
python -m venv p_my_env(given a name Like:p_my_env)
```

<p><strong>Example:</strong> You can replace <code>p_my_env</code> with any environment name of your choice.</p> 
<ul> 
<li> <strong>Install Required Libraries:</strong> 
Activate the virtual environment and install the necessary Python libraries: </li>
 </ul>

```bash
pip install pandas sqlalchemy psycopg2 python-dotenv ipykernel
```
<strong>Note:</strong> 
<ul> 
<li>Before installing any libraries, make sure the virtual environment (<code>p_my_env</code>) is activated.</li> 
<li>In most cases, the environment activates automatically when selected in your IDE. If not, activate it manually.</li> <li>All required libraries should be installed inside the virtual environment.</li> 
</ul>
<ul>
<li>1.Go to Scripts folder .</li>
<li>2. open folder </li>
<li>3.see activate file </li>
<li>4. Right click on the file and Copy Relative Path </li>
<li>5. paste in the terminal. </li>
</ul>
<strong>
Note:
</strong>
<ul>

<li>1.If you use PowerShell , then use like this:</li>

```bash
p_my_env\Scripts\activate

```
<li>2. If you use bash, then use like this:</li>

```bash
source p_my_env/Scripts/activate
```
</ul>


<hr></hr>

<h2>Data Cleaning & Business Problem Solving using SQL</h2>

<h3>1. Explore the Data</h3>
<ul>
  <li><strong>Load Data -</strong> Load the dataset into Pandas using <code>pandas.read_csv()</code>.</li>
    
  <li><strong>Explore Data -</strong> Understand the dataset structure, check column names, data types, and identify potential issues (missing values, duplicates, inconsistencies).</li>
    
  <li> <strong>Analyze Data -</strong> Use functions like <code>.info()</code>, <code>.describe()</code>, and <code>.head()</code> to get a quick overview of the dataset.</li>
</ul>

<h3>2. Data Cleaning</h3>
<ul>
  <li><strong>Remove Duplicates -</strong>
        <ul>
        <li>Identify the duplicate value using <code>pandas.duplicated().sum()</code> function.</li>
        <li>Then remove the duplicate value using <code>pandas.drop_duplicates(inplace=True)</code> function.</li>
        </ul>
  </li>
  <li><strong>Handle Missing Values -</strong></li>
  <li><strong></strong></li>
</ul>

<hr></hr>
<h2>Requirements</h2>
<ul>
<li><strong>Python 3.10+</strong></li>
<li><strong>SQL Databases: </strong>PostgreSQL (pgAdmin4)</li>
<li><strong>Python Libraries : </strong>
     <ul>
        <li>pandas, sqlalchemy, psycopg2</li>
     </ul>
</li>
<li><strong>Kaggle API Key </strong>(for data downloading)</li>
</ul>

<h2>Getting Started</h2>
<ul>
<li>1.Clone the repository:</li>

```bash
git clone https://github.com/BorshaDevi/walmart_sales_analysis
```
<li>2.Install Python libraries:</li>

 ```bash
 pip install -r requirements.txt
 ```

<li>3.Set up your Kaggle API, download the data, and follow the steps to load and analyze.</li>
</ul>

<h2>Project Structure</h2>

```
Walmart_sales_Data_Analysis/
│
├── project.ipynb
│   → Data cleaning + Exploratory Data Analysis (EDA)
│
├── README.md
│   → Project overview, tools used, setup instructions
│
├── requirements.txt
│   → Python dependencies
│
├── Walmart_clean_data/
│   → Processed / cleaned dataset after preprocessing
│
├── walmart-10k-sales-datasets.zip
│   → Compressed dataset backup
│
├── Walmart.csv
│   → Raw dataset
│
└── walmart.sql
    → SQL queries for business insights

```   

<h2>Future Enhancements</h2>
Possible extensions to this project:
     <ul>
        <li>Integration with a dashboard tool (e.g., Power BI) for interactive visualization.</li>
        <li>Additional data sources to enhance analysis depth.</li>
     </ul>

<hr></hr> 
<h2>Acknowledgments</h2>
<ul> 
   <li><strong>Data Source:</strong>Kaggle’s Walmart Sales Dataset</li>
   <li><strong>Inspiration:</strong>Walmart’s business case studies on sales </li>
</ul>   