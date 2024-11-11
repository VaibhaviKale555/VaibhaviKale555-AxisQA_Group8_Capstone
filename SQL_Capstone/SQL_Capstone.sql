CREATE DATABASE SQL_AXIS_CAPSTONE_AGILE11_GrpA1;
USE SQL_AXIS_CAPSTONE_AGILE11_GrpA1;

-- Create Table
CREATE TABLE AxisBankCustomer (
    customer_id INT PRIMARY KEY,
    customer_Name VARCHAR(100),
    credit_limit DECIMAL(10, 2),
    balance DECIMAL(15, 2),
    applicable VARCHAR(10) CHECK (applicable IN ('True', 'False')),
    cvv INT UNIQUE,
    expirydate DATE,
    kyc_status VARCHAR(20) CHECK (kyc_status IN ('Verified', 'Not Verified'))
);

-- Insert Sample Records (20 records)
INSERT INTO AxisBankCustomer (customer_id, customer_Name, credit_limit, balance, applicable, cvv, expirydate, kyc_status) VALUES
(1, 'Pravin Mundada', 50000.00, 150000.00, 'True', 123, '2025-12-31', 'Verified'),
(2, 'Vaishnavi Muley', 45000.00, 120000.00, 'True', 456, '2026-01-15', 'Verified'), 
(3, 'Prerona Banerjee', 60000.00, 110000.00, 'False', 789, '2025-11-20', 'Not Verified'),
(4, 'Vaibhavi Kale', 30000.00, 80000.00, 'True', 321, '2025-08-30', 'Verified'),
(5, 'Pawan Mane', 20000.00, 70000.00, 'True', 654, '2024-12-01', 'Verified'),
(6, 'Meda Virendra Charan Tej', 75000.00, 200000.00, 'False', 987, '2025-05-15', 'Not Verified'),
(7, 'Vishnu Vardhan Kandadi', 80000.00, 220000.00, 'True', 135, '2027-07-21', 'Verified'),  
(8, 'Vaibhav Tandale', 40000.00, 100000.00, 'True', 246, '2025-04-10', 'Verified'),
(9, 'Poornachandra Swami', 50000.00, 95000.00, 'False', 369, '2023-09-30', 'Not Verified'),
(10, 'Bhavya Kethavath', 90000.00, 250000.00, 'True', 753, '2026-03-18', 'Verified'),
(11, 'Gopika Pedumuri', 60000.00, 115000.00, 'True', 951, '2026-06-22', 'Verified'),
(12, 'Abhipsha Sahoo', 30000.00, 80000.00, 'False', 852, '2025-10-14', 'Not Verified'),
(13, 'Dipty Saha', 70000.00, 180000.00, 'True', 754, '2025-02-19', 'Verified'),
(14, 'Suyog Waghere', 25000.00, 60000.00, 'True', 357, '2024-11-01', 'Verified'),
(15, 'Anjana Krishna', 95000.00, 275000.00, 'True', 851, '2025-08-15', 'Verified'), 
(16, 'Poonam Sharma', 55000.00, 140000.00, 'False', 954, '2026-12-05', 'Not Verified'),
(17, 'Gyandeep Sarma', 48000.00, 125000.00, 'True', 287, '2025-05-10', 'Verified'),
(18, 'Suraj Kadam', 52000.00, 135000.00, 'False', 691, '2025-01-20', 'Not Verified'),
(19, 'Shubhadip Paul', 73000.00, 210000.00, 'True', 179, '2027-04-12', 'Verified'),
(20, 'Vaishnavi Kulkarni', 30000.00, 75000.00, 'True', 281, '2025-03-25', 'Verified');

-- Display all records in AxisBankCustomer table
SELECT * FROM AxisBankCustomer;

--Get all data for customers with KYC status "Verified"
SELECT * FROM AxisBankCustomer WHERE kyc_status = 'Verified';

--Calculate the total balance for customers with KYC completed
SELECT SUM(balance) AS Total_balance_with_kyc FROM AxisBankCustomer WHERE kyc_status = 'Verified';

--Calculate the average credit limit for each KYC status
--SELECT AVG(credit_limit) AS Average_balance_verified FROM AxisBankCustomer WHERE kyc_status = 'Verified';
--SELECT AVG(credit_limit) AS Average_balance_nonverified FROM AxisBankCustomer WHERE kyc_status = 'Not Verified';
SELECT kyc_status, AVG(credit_limit) AS avg_credit_limit FROM AxisBankCustomer GROUP BY kyc_status;

-- Display names of customers with a credit limit greater than 45000
SELECT customer_Name, credit_limit FROM AxisBankCustomer WHERE credit_limit > 45000;

-- Display names of customers with expiry dates after 2025 and a credit limit greater than 50000
SELECT customer_Name, expirydate FROM AxisBankCustomer WHERE expirydate > '2025-12-31' AND credit_limit > 50000;
