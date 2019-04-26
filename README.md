Data Engineering Intern Test:

Data
1) Global Terrorism Database
2) US Census Data

Tasks:
1) Create a small database DDL schema in a .sql file with at least one table from each
source. Hint, the table from the census can have one row per state These can be small tables but they should have information that would allow for some interesting analysis.

See create_schema.sql
^This document creates a schema "terrorism", and two tables "terrorist_events" and "us_census_2017". These are small but useful tables for data analysis. The accompanying data is in two csv files in the folder "data" - "data/terror_data.csv" and "data/us_census.csv". In order to create the schema, load the .sql file into your database, and then load the accompanying csv files to the respective tables. 

2) Write one query using both tables that will tell you something that each table would not
be able to on its own.

See create_schema.sql
^This query takes terrorist act counts, and joins to the census table to look at state demographic data such as population size, medium income, employment status, etc. This kind of join could tell us a lot of demographic data that might contribute to higher levels of terrorism in certain states and regions. 

3) Write an API call to the census API that gets data helpful for your table. If you can get it into a dataframe that matches your schema that is great but time may preclude the full
transformation.

See task_3_census_api_call.ipynb
^This notebook connects to the census API, and pulls the data that we need for our second db table. The data that we include can be tweaked depending on what data science/analysis needs we have. Connecting to the API is the important first step, and the data pulled is a sample for our database of 50 states and some demographic data. 

End Product
● Submit your final product through GitHub with a README explaining and files. - see above
○ Include the data as well - see data folder for csv files
● Comment all your code
● Add additional comments about what you didn’t get to due to time constraints. This is a
new test and the timing might not work out.

Thoughts/time constraints:
- tasks felt manageable, timing seemed fine
- I was not able to actually load the .sql script to a database b/c I don't have it properly setup on my laptop and choose to take time to get API data instead. Because of this, there may be some syntax errors/load issues that I would otherwise catch (tried to eyeball for now). The next step that I would take is to actually load the data into the tables, check the schema, run a few queries, and take notes on improvements that should be made. Is some of the data formatting off? Is there data that we are missing? Do the keys make sense? I would run queries and do some diagnostic testing.

Thanks!
