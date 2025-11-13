#1. Count the total number of patients in the hospital.
SELECT COUNT(*) AS total_no_of_patients FROM patients;
#2. Calculate the average satisfaction score of all patients.
SELECT AVG(satisfaction) AS satisfaction_score FROM patients;
#3. Find the minimum and maximum age of patients.
SELECT MIN(age) AS minimum_age, MAX(age) AS maximum_age FROM patients;

#Challenge, Day 05: Calculate the total no of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.
SELECT week, service, SUM(patients_admitted) AS tot_pat_admitted, 
SUM(patients_refused) AS tot_pat_refused, ROUND(AVG(patient_satisfaction),2) AS patients_satisfa 
FROM services_weekly
GROUP BY week, service;