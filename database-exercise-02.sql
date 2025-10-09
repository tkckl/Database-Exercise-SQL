-- ************************************************************
-- Database file for: database exercise 02.sql
-- 資訊及通訊科技 - 數據庫 練習2
--
-- 本檔案包含題目所需的 BOOKSTORE 資料表及示例數據
-- 學生可以直接使用以下資料來完成 SQL 查詢練習
-- ************************************************************

-- 刪除舊表（如存在）
DROP TABLE IF EXISTS BOOKSTORE;

-- ************************************************************
-- 建立 BOOKSTORE 資料表
-- ************************************************************
CREATE TABLE BOOKSTORE (
   title      CHAR(100) PRIMARY KEY,
   author     CHAR(50),
   genre      CHAR(30),
   print      DATE,
   publisher  CHAR(50),
   price      INT,
   rating     FLOAT,
   available  BOOLEAN
);

-- ************************************************************
-- 插入示例數據
-- ************************************************************
INSERT INTO BOOKSTORE VALUES 
('Matilda', 'Roald Dahl', 'Fiction', '1988-10-01', 'Penguin Young Readers Group', 78, 4.8, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Database Systems', 'C. J. Date', 'Education', '2003-05-15', 'Tech Publishing', 580, 4.5, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Dummy Guide to SQL', 'Tom Smith', 'Education', '2015-09-20', 'Dummy Press', 220, 3.2, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Harry Potter and the Philosopher''s Stone', 'J. K. Rowling', 'Fiction', '1997-06-26', 'Bloomsbury', 120, 4.9, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Cooking 101', 'Mary Chan', 'Cooking', '1985-03-10', 'HK Publishing', 90, 3.0, FALSE);

INSERT INTO BOOKSTORE VALUES 
('Modern Science', 'Albert Wong', 'Science', '1989-07-21', 'Academic Press', 540, 4.0, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Big Data Explained', 'Susan Lee', 'Education', '2018-11-11', 'Tech Publishing', 480, 4.1, TRUE);

INSERT INTO BOOKSTORE VALUES 
('Travel Dummy', 'David Ho', 'Travel', '2009-12-05', 'Dummy Press', 150, 2.8, TRUE);

-- ************************************************************
-- End of database file: database exercise 02c.sql
-- ************************************************************
