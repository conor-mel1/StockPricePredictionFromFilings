# Stock Price Predictions from Financial Statements using Machine Learning and Deep Learning algorithms augmented with Knowledge Graph Embeddings


Being able to predict the stock price of individual companies has been the goal of investors for decades. The stock price of a company is affected by many factors; these factors include news, the current political climate, and the state of the economy. However, given the rewards possible for successful prediction, many have tried to develop models to do exactly this. Much of the literature relating to the prediction of stock prices focuses on short term predictions of trends (increase or decrease in price) and price, such as the change in price within days or between days.

This project investigates the use of Machine Learning, Deep Learning and Knowledge Graph Embeddings to uncover the relationship between the financial performance of companies listed on US Stock Exchanges and their share price. Specifically, this work is concerned with attempting to generate price predictions from financial statements, as well as predict the trend and the magnitude of the change of individual company stock prices between each company's annual 10-K report. This work provides financial decision support to investors and has also resulted in the production of new datasets which may be further explored by other researchers. 

The repository is structured as follows:

1. The Data folder contains pre-processed data for each of the research questions investigated. This data may be used and further explored by other researchers.

2. The DataPreprocessing folder contains the raw data used as well as the preprocessed data used in the analysis.

3. The Graph folder contains visualisations of the results of test conducted.

4. KnowledgeGraphs_AndEmbeddings contains all Knowledge Graph related artifacts of the project.

5. Testing contains the python code and results of tests conducted. These python scripts are presented as Jupyter notebooks 



**Features chosen from each Income Statement:**
- Total Revenues; this figure represents the total amount of a company's sales and other sources of income.
- Total Operating Income; this figure represents the amount of profit realized from a business's operations after deducting operating expenses such as wages, depreciation and cost of goods sold.
- Total Net Income; Net income is calculated as total revenues minus expenses, interest, and taxes.
- Revenue per Share; This figure represents the total revenue earned per share.
- Normalized Basic Earnings per Share; Normalized earnings remove one-off events and smooth seasonal affects on revenue. Normalized earnings better represent the true health of a company's core business.
- Dividend per Share; Dividend per share is the sum of declared dividends issued by a company for every ordinary share outstanding. The figure is calculated by dividing the total dividends paid out by a business over a period of time by the number of outstanding ordinary shares issued.
- EBIT (Earnings before Interest, Taxes); This figure represents a company's net income before income tax expense and interest expenses are deducted. 
- EBITA (Earnings before Interest, Taxes and Amortization); This figure represents a company's net income before income tax expense, interest expenses and amortization expenses are deducted. 


**Features chosen from each Balance Sheet:**
- Total Assets; This figure represents the combined amount of a company's fixed assets and current assets.
- Total Liabilities; This figure represents the combined debts and obligations the company owes to others.
- Total Equity; This figure represents the amount of money that would be returned to a company’s shareholders if all of the company's assets were liquidated and all of the company's debt was paid off.
- Total Shares Outstanding on Filing Date; The number of company shares which are outstanding at the time of the company's filing.
- Book Value per Share; The book value of a company is the difference between that company's total assets and total liabilities. As such Book Value per Share is the book value of a company divided by all shares outstanding.
- Tangible Book Value; This figure measures a company's equity without the inclusion of any intangible assets such as brand recognition and intellectual property.
- Tangible Book Value per Share; This figure represents the tangible book value of a company divided by all shares outstanding.
- Total Debt; This figure represents the total debt owed by a company.
- Net Debt; Net debt is a liquidity metric used to determine how well a company can pay all of its debts if they were due immediately.

**Features chosen from each Cash Flow Statement:**
- Net Income; 
- Cash from Operations; This figure represents the amount of money a company brings in from its ongoing, regular business activities.
- Cash from Investing; This figure represents how much cash has been generated via investment-related activities in a specific period.
- Cash from Financing; This figure represents the net flows of cash that are used to fund the company.
- Net Change in Cash; This figure represents the amount by which a company’s cash balance changes in an accounting period.
- Levered Free Cash Flow; This figure represents the amount of cash a company has after paying its debts.
- Unlevered Free Cash Flow; This figure represents the amount of cash a company has before paying its debts.
- Free Cash Flow per Share; Free cash flow represents the cash a company generates after accounting for cash outflows to support operations and maintain its capital assets. Free Cash Flow per Share is simply this value divided by the total number of shares outstanding.


Each of these features were chosen as they were common to all companies from all 10 sectors.
