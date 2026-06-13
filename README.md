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
pip install pandas sqlalchemy psycopg2
```
<strong>Note:</strong> 
<ul> 
<li>Before installing any libraries, make sure the virtual environment (<code>p_my_env</code>) is activated.</li> 
<li>In most cases, the environment activates automatically when selected in your IDE. If not, activate it manually.</li> <li>All required libraries should be installed inside the virtual environment.</li> 
</ul>
1.Go to Scripts folder .
2. open folder 
3.see activate file 
4. Right click on the file and Copy Relative Path
5. paste in the terminal.
<strong>
Note:
</strong>
1.If you use PowerShell , then use like this:

```bash
p_my_env\Scripts\activate

```
2. If you use bash, then use like this:

```bash
source p_my_env/Scripts/activate
```

