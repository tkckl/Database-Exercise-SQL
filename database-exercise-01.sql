-- ************************************************************
-- Database file for: database exercise 01.sql
-- ************************************************************

-- Drop existing tables if they exist
DROP TABLE IF EXISTS STUD;
DROP TABLE IF EXISTS INFO;

-- ************************************************************
-- Table 1: STUD (學生考試分數資料)
-- ************************************************************
CREATE TABLE STUD (
   REGNO CHAR(8) PRIMARY KEY,
   CLASS CHAR(2),
   CNO INT,
   ENAME CHAR(30),
   CNAME CHAR(20),
   CHI INT,
   ENG INT,
   MATH INT
);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, CHI, ENG, MATH) 
VALUES ('20211001', '1A', 20, 'Wong Siu Man', '王小文', 80, 90, 100);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, CHI, ENG, MATH) 
VALUES ('20211002', '1A', 21, 'Chan Tai Man', '陳大文', 70, 50, 30);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, CHI, ENG, MATH) 
VALUES ('20204001', '2A', 18, 'Wong Chi Chun', '黃子俊', 40, 50, 30);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, CHI, ENG, MATH) 
VALUES ('20204002', '2A', 19, 'Li Lai Lai', '李麗麗', 70, 80, 90);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, ENG, MATH) 
VALUES ('20195001', '3A', 3, 'Au Hoi Kei', '歐海琪', 40, 20);

INSERT INTO STUD (REGNO, CLASS, CNO, ENAME, CNAME, CHI, ENG, MATH) 
VALUES ('20195002', '3A', 6, 'Chu Wai Kwan', '朱慧君', 50, 0, 60);

-- ************************************************************
-- Table 2: INFO (食品公司資料)
-- ************************************************************
CREATE TABLE INFO (
   COMPANY CHAR(30),
   REGION CHAR(20),
   LOCATION CHAR(5),
   COOKED BOOLEAN,
   FROZEN BOOLEAN,
   DRINKS BOOLEAN,
   SNACKS BOOLEAN
);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Alala food', 'HK', 'A2', TRUE, FALSE, TRUE, FALSE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Handy food', 'HK', 'A4', FALSE, TRUE, FALSE, FALSE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('CNBC food', 'USA', 'C1', FALSE, FALSE, TRUE, TRUE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Yummy food', 'Italy', 'B3', FALSE, TRUE, FALSE, FALSE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Big Burger', 'USA', 'C3', TRUE, TRUE, TRUE, TRUE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Spicy food', 'India', 'B2', TRUE, FALSE, FALSE, TRUE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Thai food', 'Thailand', 'A5', TRUE, FALSE, TRUE, FALSE);

INSERT INTO INFO (COMPANY, REGION, LOCATION, COOKED, FROZEN, DRINKS, SNACKS)
VALUES ('Japjap food', 'Japan', 'A6', FALSE, TRUE, FALSE, TRUE);

-- ************************************************************
-- End of database file: database exercise 01c.sql
-- ************************************************************
