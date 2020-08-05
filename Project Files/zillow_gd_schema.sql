-- Create tables for raw data to be loaded into
CREATE TABLE zillow_housing (
state TEXT,
housing_price_2016 INT
);

CREATE TABLE gd_postings (
job_title TEXT,
salary_est TEXT,
rating FLOAT,
sector TEXT,
ownership_type TEXT,
city TEXT,
state TEXT
);

-- QA table creation
SELECT * FROM zillow_housing

SELECT * FROM gd_postings

-- Add keys
ALTER TABLE zillow_housing
ADD CONSTRAINT PK_zillow_housing PRIMARY KEY (state);

ALTER TABLE gd_postings
ADD CONSTRAINT FK_gd_postings_state
FOREIGN KEY (state) REFERENCES zillow_housing(state);