SELECT d.vaers_id, d.age_yrs, d.sex, s.symptoms, d.died FROM vaccine_data d
INNER JOIN all_symp s
ON d.vaers_id = s.vaers_id
