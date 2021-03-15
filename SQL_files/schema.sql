CREATE TABLE vaccine_type(VAERS_ID int PRIMARY KEY,
						 VAX_TYPE varchar(100),
						 VAX_MANU varchar(100),
						 VAX_DOSE_SERIES varchar(100),
						 VAX_ROUTE varchar(100),
						 VAX_NAME varchar(100)
);

CREATE TABLE vaccine_symp(VAERS_ID int PRIMARY KEY,
						 SYMPTOM1 varchar(100),
						 SYMPTOM2 varchar(100),
						 SYMPTOM3 varchar(100),
						 SYMPTOM4 varchar(100),
						 SYMPTOM5 varchar(100)
);
SELECT * FROM vaccine_symp
SELECT * FROM vaccine_type