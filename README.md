ETL Challenge by Vincent, Gabriella Y, Harry

For our data cleaning challenge, our group decided to analyze two separate datasets from kaggle, one containing Zillow sales data by state, the other, data analysis jobs that were posted on Glassdoor.


EXTRACT:
We grabbed .csv files from these two sources on kaggle:

https://www.kaggle.com/moezabid/zillow-all-homes-data
https://www.kaggle.com/andrewmvd/data-analyst-jobs

TRANSFORM:

We wanted to join these two tables on the state columns, so this was the first major cleaning task. The data analyst information from Glassdoor had just a location column containing both state and city, whereas the Zillow had separate columns for each. We separated the Glassdoor data into separate columns. Here we ran into an issue, with one group of data that was misentered with extra information in the location data. In order separate them out, we created a third, blank column for the extraneous information, then removed the column. Then, we chose what data we considered relevant.

With the Zillow data, we took the mean of the most recent housing prices for each state, and limited the columns to the state and the average price, then we limited the data analyst data by Job Title, Estimated Salary, Rating, Sector, Type of Ownership, City and State. In the Glassdoor data, there were null values shown as -1 in the Rating, sector and Type of Ownership columns, so we converted those to actual nulls. After consulting with the team, it was decided that the entries with null values had enough other information to be valuable for information, so we left those rows in the data. Finally, for one misentered value in the state column, we group replaced it with the corrected value.

LOAD:
We then created a interacting tables in Postgres, and loaded the cleaned data through pandas. The final product is in our repository.