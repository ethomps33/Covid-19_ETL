# ETL_Project

In this project we will attempt to Extract, Transform and Load COVID-19 Vaccine data.

Our main goal of this project is the look at the relationship of COVID-19 vaccinations and the adverse effects patients have experinces after recieving their vaccicnations. 


# Extraction
The data has come from Kaggle and will be extracted from 3 CSV files.

* vaccine_data.csv: This CSV contians the most data. It contains a lot of data on patient demographics as well as is the patient was hospitalized, if the illness was life threatening, history of prior condidtions, death among other information.

* vaccine_symptoms.csv: This CSV contains data about the symptoms the patients experienced. The CSV has 5 columns for different symptoms one patient could have experienced.

* vaccine_type.csv: This CSV contains data on the type of vaccine and manufacturer of the vaccine.


# Transformations

* Cleaning: Dropped columns that were unnecessary. Changed the names of the columns so that they were lowercase. Set the index for the dataframes as vaers_id for all of the dataframes. For the vaccine_type, the vax_type column was filtered to only show COVID vaccinations. Used pd.melt to  combined all of the symptom columns together into one column under multiple IDs, changed the name of the columns and only used the vaers_id and symptoms columns. Set index to vaers_id and dropped the NaN columns.

* Joining: Joined the vaccine_type, vaccine_data and all_symp tables 

* Filtering: In SQL filtered data based by age and if the patient died

* Aggregating: Used count to find the sum of the total deaths 


# Load

A relational database was used in the form of SQL as the final production database. 

Several tables were used:
    
* Age groups: The age groups used were < 18, 18-35, 36-50,
51-75 and 75+. These were created to for possible later use. With these groups it would be easy to aggregate data on number of deaths, life threatening illness, symptoms or history to see if age plays a factor.

* Patients that died: This table isolates only the patients that have died. This would be useful for aggregating purposes as well.

* Number of deaths by sex: This table was used to see if male or female patients had a higher freqency in death after recieving the vaccine.

* Number of deaths by symptoms: This table was used to see what symptoms were most common in the patients that died after recieving the vaccine.

* Number of deaths by vaccine_type: This table was used to see which vaccine had the highest frequency of death after recieving the vaccine.

* Number of deaths by pre-existing conditions: This table was used to see what pre-existing coditions were most common in the patients that died after recieving the vaccine.