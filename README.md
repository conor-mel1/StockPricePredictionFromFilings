# Stock Price Predictions from Financial Statements using Machine Learning and Deep Learning augmented with Knowledge Graph Embeddings


Being able to predict the stock price of individual companies has been the goal of investors for decades. The stock price of a company is affected by many factors; these factors include news, the current political climate, and the state of the economy. However, given the rewards possible for successful prediction, many have tried to develop models to do exactly this. Much of the literature relating to the prediction of stock prices focuses on short term predictions of trends (increase or decrease in price) and price, such as the change in price within days or between days.

This project investigates the use of Machine Learning, Deep Learning and Knowledge Graph Embeddings to uncover the relationship between the financial performance of companies listed on US Stock Exchanges and their share price. Specifically, this work is concerned with attempting to generate price predictions from financial statements, as well as predict the trend and the magnitude of the change of individual company stock prices between each company's annual 10-K report. This work provides financial decision support to investors and has also resulted in the production of new datasets which may be further explored by other researchers. 

The repository is structured as follows:

1. The Data folder contains the pre-processed data for each of the research questions investigated. This data may be used and further explored by other researchers.

2. The DataPreprocessing folder contains the raw data used for each company (identified by their unique ticker symbol), as well as the Jupyter notebooks used to preprocess the data for the analysis.

3. The Graph folder contains the R code used to create the visualisations of the results of tests conducted.

4. KnowledgeGraphs_AndEmbeddings contains the notebooks used to generate embeddings for each company, and the results of tests conducted after adding these embeddings to the data used by the best performing algorithm for each research question.

5. The Testing folder contains the python code and results of all tests conducted, including hyper-parameter tuning. 

# Overview of Data 
Companies listed on US Stock Exchanges are required to provide yearly financial disclosures to the Securities and Exchange Commission (SEC). This yearly statement is known as a 10-K filing, and provides a comprehensive summary of a company's financial performance. This filing allows investors to assess the financial state of a company before deciding to invest in the company. These disclosures are unstructured, containing sections of text/commentary as well as the financial data required for this analysis. Fortunately, some websites provide access to these filings in a structured, easy to use format. The website used to gather data for this research is Seeking Alpha (https://seekingalpha.com/), which provides these financial filings in CSV file format.

As companies operate throughout the year, their performance is reflected in their share price. Thus, the financial performance from a previous trading year (outlined in a company's filings) should be reflected in a company's price at the end of the trading year. 
For each company in the analysis, the Balance Sheet (BS), Income Statement (IS) and Cash Flow (CF) statement associated with every 10-K filing over the past 10 years were used. In total, 500 different companies make up the analysis, giving a total of 5000 data instances (one instance per company per yearly filing). Companies were chosen from 10 different economic sectors. Only companies listed on US Stock Exchanges from the 31st of December 2008 were selected for analysis. This was done to ensure all companies in the analysis had produced 10-K filings in each of the last 10 years.

Daily price data associated with each company was obtained for the past 10 years. All price data had been adjusted for stock splits. The price associated with each company and each 10-K filing was chosen as the closing price on the last day of the month that the 10-K filing was filed in. This was done as it was decided that any changes in price resulting from a company's financial performance throughout the trading year had taken place by this point.

It was necessary to modify the raw data to answer the research question being investigated. For each of the research questions, a different dataset was derived from the raw data. The modifications for each dataset fall under the following headings:

* **Raw filings with raw price data**. This dataset is used to attempt to answer the question of how accurately a company's stock price can be predicted from its raw financial statements, and which statement(s) produce the most accurate predictions. This was done using each companies BS, IS, CF statement and also using these three statements merged together in a Merged Statements (MS) dataset with the corresponding price. There are 5000 data instances in total in this dataset (and all various scenario's investigated), one instance per company per 10-K filing. 

* **Change in filings with change in price**. This dataset is used to attempt to answer the question of how accurately the change in a company's stock price can be predicted from the change in its financial statements, and which statement(s) produce the most accurate predictions. The change in statements is calculated between consecutive 10-K filings. This was done again using each company's BS, IS, CF Statement and also using the MS dataset with the corresponding price. There are 4500 data instances in total in this dataset (and all various scenarios investigated), again one instance per company per 10-K filing. The dataset is smaller in this case because the change in statements can only be calculated 9 times for each set of 10 company statements. 

* **Change in filings with price trend classification**. This dataset is used to attempt to answer the question of how accurately the trend upward or downward in a company's price can be predicted from the change in its financial statements, and which statement(s) produce the most accurate predictions. In this case, an increase in price between successive filings was denoted as 1 and a decrease in price denoted as 0. There were found to be 1462 instances of a price decrease (Class 0) and 3038 instances of a price increase (Class 1). For the same reasons as stated above, each dataset used in answering this question contains 4500 data instances. 
 
Four datasets were created in answering each research question, one for each Balance Sheet, Income Statement, Cash Flow statement and Merged Statement. Datasets associated with a change in price are referred to as Delta Filings.

# Features Used in Analysis
**Features chosen from each Income Statement**:
- **Total Revenues**; this figure represents the total amount of a company's sales and other sources of income.
- **Total Operating** Income; this figure represents the amount of profit realized from a business's operations after deducting operating expenses such as wages, depreciation and cost of goods sold.
- **Total Net Income**; Net income is calculated as total revenues minus expenses, interest, and taxes.
- **Revenue per Share**; This figure represents the total revenue earned per share.
- **Normalized Basic Earnings per Share**; Normalized earnings remove one-off events and smooth seasonal affects on revenue. Normalized earnings better represent the true health of a company's core business.
- **Dividend per Share**; Dividend per share is the sum of declared dividends issued by a company for every ordinary share outstanding. The figure is calculated by dividing the total dividends paid out by a business over a period of time by the number of outstanding ordinary shares issued.
- **EBIT (Earnings before Interest, Taxes)**; This figure represents a company's net income before income tax expense and interest expenses are deducted. 
- **EBITA (Earnings before Interest, Taxes and Amortization)**; This figure represents a company's net income before income tax expense, interest expenses and amortization expenses are deducted. 


**Features chosen from each Balance Sheet:**
- **Total Assets**; This figure represents the combined amount of a company's fixed assets and current assets.
- **Total Liabilities**; This figure represents the combined debts and obligations the company owes to others.
- **Total Equity**; This figure represents the amount of money that would be returned to a company’s shareholders if all of the company's assets were liquidated and all of the company's debt was paid off.
- **Total Shares Outstanding on Filing Date**; The number of company shares which are outstanding at the time of the company's filing.
- **Book Value per Share**; The book value of a company is the difference between that company's total assets and total liabilities. As such Book Value per Share is the book value of a company divided by all shares outstanding.
- **Tangible Book Value**; This figure measures a company's equity without the inclusion of any intangible assets such as brand recognition and intellectual property.
- **Tangible Book Value per Share**; This figure represents the tangible book value of a company divided by all shares outstanding.
- **Total Debt**; This figure represents the total debt owed by a company.
- **Net Debt**; Net debt is a liquidity metric used to determine how well a company can pay all of its debts if they were due immediately.

**Features chosen from each Cash Flow Statement:**
- **Net Income**; 
- **Cash from Operations**; This figure represents the amount of money a company brings in from its ongoing, regular business activities.
- **Cash from Investing**; This figure represents how much cash has been generated via investment-related activities in a specific period.
- **Cash from Financing**; This figure represents the net flows of cash that are used to fund the company.
- **Net Change in Cash**; This figure represents the amount by which a company’s cash balance changes in an accounting period.
- **Levered Free Cash Flow**; This figure represents the amount of cash a company has after paying its debts.
- **Unlevered Free Cash Flow**; This figure represents the amount of cash a company has before paying its debts.
- **Free Cash Flow per Share**; Free cash flow represents the cash a company generates after accounting for cash outflows to support operations and maintain its capital assets. Free Cash Flow per Share is simply this value divided by the total number of shares outstanding.


Each of these features were chosen as they were common to all companies from all 10 sectors. 
