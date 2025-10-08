-- ************************************************************
-- Database file for: database exercise 03c.sql
-- 資訊及通訊科技 - 數據庫 練習3
--
-- 本檔案包含題目所需的 OWNER 資料表及示例數據
-- 學生可以使用這些資料練習 GROUP, HAVING, Min, Sum, Max, Avg, Count
-- ************************************************************

-- 刪除舊表（如存在）
DROP TABLE IF EXISTS owner;

-- ************************************************************
-- 建立 OWNER 資料表
-- ************************************************************
CREATE TABLE owner (
   name     CHAR(50),
   license  CHAR(10),
   oid      CHAR(12) PRIMARY KEY,
   gender   CHAR(1),
   dob      DATE,
   region   CHAR(30),
   brand    CHAR(30),
   model    CHAR(30),
   manyear  INT,
   mileage  INT
);

-- ************************************************************
-- 插入示例數據
-- ************************************************************

INSERT INTO owner VALUES ('Ho Ka Man', 'KL2475', 'A123456(7)', 'F', '1988-11-15', 'Sha Tin', 'Tesla', 'Model 3', 2022, 50000);
INSERT INTO owner VALUES ('Chan Tai Man', 'AB1234', 'B234567(8)', 'M', '1975-05-20', 'Sha Tin', 'Tesla', 'Model X', 2021, 80000);
INSERT INTO owner VALUES ('Lee Mei Ling', 'CD5678', 'C345678(9)', 'F', '1982-07-30', 'Mong Kok', 'Toyota', 'Corolla', 2019, 60000);
INSERT INTO owner VALUES ('Wong Chi Chun', 'EF9012', 'D456789(0)', 'M', '1990-01-12', 'Kowloon City', 'Tesla', 'Model X', 2020, 95000);
INSERT INTO owner VALUES ('Ng Pui Yee', 'GH3456', 'E567890(1)', 'F', '1995-09-08', 'Sha Tin', 'Tesla', 'Model Y', 2021, 70000);
INSERT INTO owner VALUES ('Lam Chi Ho', 'IJ7890', 'F678901(2)', 'M', '1987-12-03', 'Hung Hom', 'BMW', 'X5', 2021, 88000);
INSERT INTO owner VALUES ('Cheung Ming', 'KL1122', 'G789012(3)', 'M', '1983-06-25', 'Sha Tin', 'BMW', 'X5', 2020, 92000);
INSERT INTO owner VALUES ('Fong Sau Ling', 'MN3344', 'H890123(4)', 'F', '1978-02-14', 'Mong Kok', 'Toyota', 'Camry', 2021, 40000);
INSERT INTO owner VALUES ('Chow Ka Wai', 'OP5566', 'J901234(5)', 'M', '1992-03-17', 'Sha Tin', 'Tesla', 'Model 3', 2021, 105000);
INSERT INTO owner VALUES ('Yip Tsz Yan', 'QR7788', 'K012345(6)', 'F', '1985-08-22', 'Sha Tin', 'Tesla', 'Model X', 2021, 120000);
INSERT INTO owner VALUES ('Chan Siu Ming', 'BA1001', 'Z101001(1)', 'M', '1980-01-01', 'Sha Tin', 'Toyota', 'Corolla', 2018, 55000);
INSERT INTO owner VALUES ('Lee Ka Yan',   'AX1502', 'S100012(2)', 'F', '1981-02-02', 'Sha Tin', 'Toyota', 'Camry', 2020, 42000);
INSERT INTO owner VALUES ('Wong Hoi Man', 'GX1603', 'K100033(3)', 'M', '1982-03-03', 'Sha Tin', 'Honda', 'Civic', 2019, 61000);
INSERT INTO owner VALUES ('Ng Mei Ling',  'TE1004', 'E100204(4)', 'F', '1983-04-04', 'Sha Tin', 'Honda', 'Fit', 2017, 30000);
INSERT INTO owner VALUES ('Cheng Kin Wai','JU1105','F100005(5)', 'M', '1984-05-05', 'Sha Tin', 'Mercedes', 'E200', 2022, 25000);
INSERT INTO owner VALUES ('Yeung Po Yee', 'ER1106', 'R800006(6)', 'F', '1985-06-06', 'Sha Tin', 'Mercedes', 'C200', 2021, 36000);
INSERT INTO owner VALUES ('Fok Tsz Hong', 'KL1307', 'S705007(7)', 'M', '1986-07-07', 'Sha Tin', 'BMW', 'X5', 2018, 89000);
INSERT INTO owner VALUES ('Lau Mei Yan',  'MM2008', 'Y304008(8)', 'F', '1987-08-08', 'Sha Tin', 'BMW', 'X3', 2020, 67000);
INSERT INTO owner VALUES ('Leung Ka Man', 'TY4009', 'Y600709(9)', 'M', '1988-09-09', 'Sha Tin', 'Tesla', 'Model S', 2022, 12000);
INSERT INTO owner VALUES ('Tam Chi Hong', 'RE1910', 'Y200810(0)', 'F', '1989-10-10', 'Sha Tin', 'Tesla', 'Model 3', 2019, 58000);
INSERT INTO owner VALUES ('Tsang Pui Yan','PL1811','Z500411(1)', 'M', '1990-11-11', 'Sha Tin', 'Tesla', 'Model X', 2020, 72000);
INSERT INTO owner VALUES ('Chiu Ho Man',  'RM1072', 'F504012(2)', 'F', '1991-12-12', 'Sha Tin', 'Tesla', 'Model Y', 2021, 54000);
INSERT INTO owner VALUES ('Kwok Tsz Kwan','WE6013','E703013(3)', 'M', '1992-01-13', 'Sha Tin', 'Toyota', 'Corolla', 2019, 49000);
INSERT INTO owner VALUES ('Ip Pui Ling',  'ZS1015', 'A400414(4)', 'F', '1993-02-14', 'Sha Tin', 'Toyota', 'Camry', 2020, 41000);
INSERT INTO owner VALUES ('Mak Chi Chung','ZA1045','K154015(5)', 'M', '1994-03-15', 'Sha Tin', 'Tesla', 'Model 3', 2019, 47000);
INSERT INTO owner VALUES ('Cheuk Ka Yin', 'SA1096', 'K103016(6)', 'F', '1995-04-16', 'Sha Tin', 'Tesla', 'Model Y', 2021, 33000);
INSERT INTO owner VALUES ('Au Chi Keung', 'YH1817', 'R140017(7)', 'M', '1996-05-17', 'Sha Tin', 'Honda', 'Civic', 2018, 51000);
INSERT INTO owner VALUES ('Szeto Mei Wai','WB1718','M100618(8)', 'F', '1997-06-18', 'Sha Tin', 'BMW', 'X5', 2019, 86000);
INSERT INTO owner VALUES ('Man Wai Chi',  'NG7019', 'E407019(9)', 'M', '1998-07-19', 'Sha Tin', 'Honda', 'Fit', 2017, 29500);
INSERT INTO owner VALUES ('Poon Sze Yan', 'MG5020', 'E106020(0)', 'F', '1999-08-20', 'Sha Tin', 'Tesla', 'Model 3', 2022, 18000);
-- ************************************************************
-- End of database file: database exercise 03c.sql
-- ************************************************************