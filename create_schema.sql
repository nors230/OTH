#Tasks:
#1)Create a small database DDL schema in a .sql file with at least one table from each source. 
#Hint, the table from the census can have one row per state.
#These can be small tables but they should have information that would allow for some interesting analysis
#2)Write one query using both tables that will tell you something that each table would not be able to on its own.

#TASK 1: CREATE a small db DDL schema
CREATE SCHEMA terrorism;

CREATE TABLE terrorist_events (
  event_id        NUMBER(50)    NOT NULL PRIMARY KEY,
  year            NUMBER(4),
  month           NUMBER(1),
  day             NUMBER(1),
  country         NUMBER(3),
  country_txt     VARCHAR2(50),
  region          NUMBER(3),
  region_txt      VARCHAR2(50),
  state           VARCHAR2(50),
  city            VARCHAR2(50),
  latitude        NUMBER(20),
  longitude       NUMBER(20),
  multiple        NUMBER(1),
  success         NUMBER(1),
  suicide         NUMBER(1),
  attacktype1     NUMBER(1),
  attacktype1_txt VARCHAR2(50),
  targtype1       NUMBER(1),
  targtype1_txt   VARCHAR2(50),
  weaptype1       VARCHAR2(50),
  weaptype1_txt   VARCHAR2(50),

  PRIMARY KEY(event_id)
);

CREATE TABLE us_census_2017 (
  state_id              NUMBER(50)    NOT NULL PRIMARY KEY,
  state                 NUMBER(4),
  total_population      NUMBER(1000000),
  median_income         NUMBER(1000000),
  education_attainment  NUMBER(1000000),
  employment_status     NUMBER(3),
  poverty_status        VARCHAR2(50),

  PRIMARY KEY(state_id)
);

#TASK 2: Write one query using both tables that will tell you something that 
#each table would not be able to on its own.

#this query will show us by state the demographics for 2017 along with terrorist events

SELECT te.state
, uc.total_population
, uc.education_attainment
, uc.employment_status
, uc.poverty_status 
, COUNT(DISTINCT event_id) as count_terrorist_events 

FROM terrorist_events AS te
LEFT JOIN us_census AS uc ON te.state = uc.state 

WHERE te.year = '2017'

GROUP BY 1,2,3,4,5

ORDER BY count_terrorist_events DESC;

#Task 3: SEE task_3_census_api_call.ipynb

