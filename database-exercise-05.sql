-- ************************************************************
-- Database file for: database exercise 05.sql
-- 資訊及通訊科技 - 數據庫 練習5 (equal join)
-- ************************************************************

DROP TABLE IF EXISTS TRANS;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS USER;

-- ************************************************************
-- 建立表格
-- ************************************************************

CREATE TABLE USER (
   uid    INT PRIMARY KEY,       -- 用戶編號
   uname  CHAR(50),              -- 用戶姓名
   rdate  DATE,                  -- 註冊日期
   area   CHAR(30)               -- 地區
);

CREATE TABLE PRODUCT (
   pid      INT PRIMARY KEY,     -- 產品編號
   pname    CHAR(50),            -- 產品名稱
   category CHAR(30),            -- 產品類別
   price    DECIMAL(10,2)        -- 單價
);

CREATE TABLE TRANS (
   tid    INT PRIMARY KEY,       -- 訂單編號
   uid    INT,                   -- 用戶編號
   pid    INT,                   -- 產品編號
   odate  DATE,                  -- 訂單日期
   qty    INT,                   -- 數量
   FOREIGN KEY (uid) REFERENCES USER(uid),
   FOREIGN KEY (pid) REFERENCES PRODUCT(pid)
);

-- ************************************************************
-- 插入 USER 資料
-- ************************************************************

INSERT INTO USER VALUES (1001, 'John Chan',   '2023-09-15', '屯門');
INSERT INTO USER VALUES (1002, 'Mary Wong',   '2022-03-12', '沙田');
INSERT INTO USER VALUES (1003, 'Peter Lee',   '2021-11-08', '荃灣');
INSERT INTO USER VALUES (1004, 'Alice Ho',    '2023-02-20', '觀塘');
INSERT INTO USER VALUES (1005, 'David Lam',   '2020-07-05', '沙田');
INSERT INTO USER VALUES (1006, 'Ivy Chu',     '2022-12-25', '屯門');
INSERT INTO USER VALUES (1007, 'Samuel Yip',  '2021-01-18', '荃灣');

-- ************************************************************
-- 插入 PRODUCT 資料
-- ************************************************************

INSERT INTO PRODUCT VALUES (5001, 'xPhone',         '智能電話',   3999);
INSERT INTO PRODUCT VALUES (5002, 'Samsung Galaxy', '智能電話',   6999);
INSERT INTO PRODUCT VALUES (5003, 'MacBook Air',    '電腦',   8999);
INSERT INTO PRODUCT VALUES (5004, 'Dell XPS',       '電腦',   8500);
INSERT INTO PRODUCT VALUES (5005, 'AirPods Pro',    '配件',   1999);
INSERT INTO PRODUCT VALUES (5006, 'Logitech Mouse', '配件',    299);

-- ************************************************************
-- 插入 TRANS 資料 (訂單紀錄)
-- ************************************************************

-- John Chan
INSERT INTO TRANS VALUES (3101, 1001, 5001, '2023-10-01', 1);
INSERT INTO TRANS VALUES (3102, 1001, 5005, '2023-10-02', 2);

-- Mary Wong
INSERT INTO TRANS VALUES (3201, 1002, 5002, '2022-04-05', 1);
INSERT INTO TRANS VALUES (3202, 1002, 5006, '2022-05-10', 5);

-- Peter Lee
INSERT INTO TRANS VALUES (3301, 1003, 5003, '2021-11-20', 1);
INSERT INTO TRANS VALUES (3302, 1003, 5005, '2021-12-15', 3);

-- Alice Ho
INSERT INTO TRANS VALUES (3401, 1004, 5004, '2023-03-02', 2);

-- David Lam
INSERT INTO TRANS VALUES (3501, 1005, 5001, '2020-08-09', 1);
INSERT INTO TRANS VALUES (3502, 1005, 5002, '2020-09-15', 2);

-- Ivy Chu
INSERT INTO TRANS VALUES (3601, 1006, 5006, '2023-01-05', 50);
INSERT INTO TRANS VALUES (3602, 1006, 5005, '2023-01-20', 20);

-- Samuel Yip
INSERT INTO TRANS VALUES (3701, 1007, 5003, '2021-03-08', 2);
INSERT INTO TRANS VALUES (3702, 1007, 5006, '2021-04-12', 80);
INSERT INTO TRANS VALUES (3703, 1007, 5002, '2023-04-05', 1);
INSERT INTO TRANS VALUES (3704, 1007, 5001, '2022-06-10', 5);

INSERT INTO TRANS VALUES (3801, 1001, 5006, '2023-10-03', 10);
INSERT INTO TRANS VALUES (3802, 1002, 5006, '2023-10-04', 5);
INSERT INTO TRANS VALUES (3803, 1003, 5006, '2023-10-05', 8);
INSERT INTO TRANS VALUES (3804, 1004, 5006, '2023-10-06', 7);
INSERT INTO TRANS VALUES (3805, 1005, 5006, '2023-10-07', 4);
INSERT INTO TRANS VALUES (3806, 1006, 5006, '2023-10-08', 6);

-- 再插入更多 AirPods Pro (pid=5005) 訂單
INSERT INTO TRANS VALUES (3811, 1001, 5005, '2023-10-09', 1);
INSERT INTO TRANS VALUES (3812, 1002, 5005, '2023-10-10', 2);
INSERT INTO TRANS VALUES (3813, 1003, 5005, '2023-10-11', 1);
INSERT INTO TRANS VALUES (3814, 1004, 5005, '2023-10-12', 1);
INSERT INTO TRANS VALUES (3815, 1005, 5005, '2023-10-13', 3);
INSERT INTO TRANS VALUES (3816, 1007, 5005, '2023-10-14', 2);

-- 再插入更多 iPhone 14 (pid=5001) 訂單
INSERT INTO TRANS VALUES (3821, 1002, 5001, '2023-10-15', 1);
INSERT INTO TRANS VALUES (3822, 1003, 5001, '2023-10-16', 1);
INSERT INTO TRANS VALUES (3823, 1004, 5001, '2023-10-17', 2);
INSERT INTO TRANS VALUES (3824, 1005, 5001, '2023-10-18', 1);
INSERT INTO TRANS VALUES (3825, 1006, 5001, '2023-10-19', 1);
-- ************************************************************
-- End of database file: database exercise 05c.sql
-- ************************************************************