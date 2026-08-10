DROP TABLE IF EXISTS credit_card;

CREATE TABLE credit_card (
    trans_datetime      TIMESTAMP,
    time                TIME,
    trans_date          DATE,
    trans_time          TIME,
    cc_num              BIGINT,
    cardholder_name     VARCHAR(100),
    gender              VARCHAR(10),
    dob                 DATE,
    age                 INT,
    job                 VARCHAR(100),
    state               VARCHAR(50),
    merchant            VARCHAR(150),
    category            VARCHAR(50),
    payment_method      VARCHAR(30),
    upi_id              VARCHAR(100),
    amt_inr             NUMERIC(12,2),
    amt_cat             VARCHAR(20),
    trans_num           VARCHAR(50),
    is_fraud            INT,
    fraud_reason        VARCHAR(255)
);
DROP TABLE IF EXISTS credit_card;

CREATE TABLE credit (
    trans_datetime      TIMESTAMP,
    time                TIME,
    trans_date          DATE,
    trans_time          TIME,
    cc_num              Text,
    cardholder_name     VARCHAR(100),
    gender              VARCHAR(10),
    dob                 DATE,
    age                 INT,
    job                 VARCHAR(100),
    state               VARCHAR(50),
    merchant            VARCHAR(150),
    category            VARCHAR(50),
    payment_method      VARCHAR(30),
    upi_id              VARCHAR(100),
    amt_inr             NUMERIC(12,2),
    amt_cat             VARCHAR(20),
    trans_num           VARCHAR(50),
    is_fraud            INT,
    fraud_reason        VARCHAR(255)
);
select count(*)from credit;
select * from credit limit 10;

select count(trans_datetime)from credit;

select count(*) from credit where is_fraud=1;

select sum(amt_inr) from credit where is_fraud=1;

select state, count(*) as


CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL CHECK (age >= 0),
    category VARCHAR(50),
    gender VARCHAR(10),
    blood_type VARCHAR(5),
    medical_condition VARCHAR(255),
    date_of_admission DATE NOT NULL,
    doctor VARCHAR(100),
    hospital VARCHAR(150),
    insurance_provider VARCHAR(100),
    billing_amount NUMERIC(12, 2),
    room_number INTEGER,
    admission_type VARCHAR(50),
    discharge_date DATE,
    days_admitted INTEGER GENERATED ALWAYS AS (discharge_date - date_of_admission) STORED,
    medication VARCHAR(255),
    test_results VARCHAR(255)
);
drop table patients;

CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL CHECK (age >= 0),
    category VARCHAR(50),
    gender VARCHAR(10) CHECK (gender IN ,
    blood_type VARCHAR(5),
    medical_condition VARCHAR(255),
    date_of_admission DATE NOT NULL,
    doctor VARCHAR(100),
    hospital VARCHAR(150),
    insurance_provider VARCHAR(100),
    billing_amount NUMERIC(12, 2),
    room_number INTEGER,
    admission_type VARCHAR(50),
    discharge_date DATE,
    days_admitted INTEGER ,
    medication VARCHAR(255),
    test_results VARCHAR(255)
);
select * from patient;
select gender , count(*)
from patient
group by gender;

select doctor , count(*)
from patient
group by doctor 
order by count desc limit 7;

SELECT medical_condition, COUNT(*) AS patient_count
FROM patient
WHERE LOWER(medical_condition) = 'cancer'
GROUP BY medical_condition;

SELECT 
    EXTRACT(YEAR FROM date_of_admission) AS year,
    SUM(billing_amount) AS Bill
FROM patient
where EXTRACT(YEAR FROM date_of_admission) between 2023 and 2024
GROUP BY year
ORDER BY year;

select 
    avg(age),
	count(*)
from patient;
