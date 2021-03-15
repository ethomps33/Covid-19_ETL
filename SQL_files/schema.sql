CREATE TABLE vaccine_type(VAERS_ID int PRIMARY KEY,
						 VAX_TYPE varchar(20),
						 VAX_MANU varchar(20),
						 VAX_DOSE_SERIES varchar(20),
						 VAX_ROUTE varchar(20),
						 VAX_NAME varchar(50)
);

CREATE TABLE vaccine_symp(VAERS_ID int PRIMARY KEY,
						 SYMPTOM1 varchar(50),
						 SYMPTOM2 varchar(50),
						 SYMPTOM3 varchar(50),
						 SYMPTOM4 varchar(50),
						 SYMPTOM5 varchar(50)
);
