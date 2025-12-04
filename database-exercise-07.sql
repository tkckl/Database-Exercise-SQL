-- ************************************************************
-- Database file for: database exercise 07.sql
-- 資訊及通訊科技 - 數據庫 練習7 (subquery)
-- ************************************************************

DROP TABLE IF EXISTS TICKET;
DROP TABLE IF EXISTS SCREEN;
DROP TABLE IF EXISTS MOVIE;

-- ************************************************************
-- 建立表格
-- ************************************************************

CREATE TABLE MOVIE (
   mid     INT PRIMARY KEY,      -- 電影編號
   title   CHAR(100),            -- 電影名稱
   type    CHAR(50),             -- 類型
   rdate   DATE,                 -- 上映日期
   rating  FLOAT                 -- 評分
);

CREATE TABLE SCREEN (
   sid     INT PRIMARY KEY,      -- 放映編號
   mid     INT,                  -- 電影編號
   tid     INT,                  -- 影院編號
   stime   DATETIME,             -- 放映時間
   price   INT,                  -- 票價
   FOREIGN KEY (mid) REFERENCES MOVIE(mid)
);

CREATE TABLE TICKET (
   sid     INT,                  -- 放映編號
   cname   CHAR(50),             -- 顧客姓名
   seat    CHAR(10),             -- 座位號碼
   btime   DATETIME,             -- 訂票時間
   PRIMARY KEY (sid, seat),      -- 一個場次一張座位唯一
   FOREIGN KEY (sid) REFERENCES SCREEN(sid)
);

-- ************************************************************
-- 插入 MOVIE 資料
-- ************************************************************

INSERT INTO MOVIE VALUES (1001, 'Avengers: Endgame', 'Action',   '2019-04-24', 9.2);
INSERT INTO MOVIE VALUES (1002, 'Avengers: Infinity War', 'Action', '2018-04-25', 9.0);
INSERT INTO MOVIE VALUES (1003, 'Titanic',          'Romance',  '1997-12-19', 8.8);
INSERT INTO MOVIE VALUES (1004, 'Inception',        'Sci-Fi',   '2010-07-16', 9.1);
INSERT INTO MOVIE VALUES (1005, 'Frozen II',        'Animation','2019-11-22', 7.8);
INSERT INTO MOVIE VALUES (1006, 'Toy Story X',       'Drama',    '2023-05-01', 7.0); -- 沒有上映

-- ************************************************************
-- 插入 SCREEN 資料
-- ************************************************************

-- Avengers: Endgame
INSERT INTO SCREEN VALUES (901, 1001, 3, '2019-04-29 18:00', 120);
INSERT INTO SCREEN VALUES (902, 1001, 2, '2019-05-01 20:00', 150);
INSERT INTO SCREEN VALUES (903, 1001, 1, '2019-04-30 14:00', 120);

-- Avengers: Infinity War
INSERT INTO SCREEN VALUES (904, 1002, 1, '2018-04-30 19:00', 160);

-- Titanic
INSERT INTO SCREEN VALUES (905, 1003, 2, '2019-06-01 18:00', 160);

-- Inception
INSERT INTO SCREEN VALUES (906, 1004, 3, '2024-01-15 21:00', 130);
INSERT INTO SCREEN VALUES (907, 1004, 1, '2024-01-16 19:00', 140);

-- Frozen II
INSERT INTO SCREEN VALUES (908, 1005, 2, '2024-02-10 14:00', 90);

-- No Release (1006) 沒有對應 SCREEN

-- ************************************************************
-- 插入 TICKET 資料
-- ************************************************************

-- Avengers: Endgame (有訂票)
INSERT INTO TICKET VALUES (901, 'Mary',  'A2', '2019-04-26 15:00');
INSERT INTO TICKET VALUES (902, 'Alice', 'B1', '2019-04-28 11:00');
INSERT INTO TICKET VALUES (903, 'John',  'A1', '2019-04-25 10:00');

-- Avengers: Infinity War (全部滿座一部分)
INSERT INTO TICKET VALUES (904, 'Tom',   'C3', '2018-04-26 13:00');

-- Titanic (有訂票)
INSERT INTO TICKET VALUES (905, 'Ken',   'D5', '2019-05-20 09:00');

-- Inception (2024)
INSERT INTO TICKET VALUES (906, 'Peter', 'E1', '2024-01-10 12:00');
INSERT INTO TICKET VALUES (907, 'Jane',  'F2', '2024-01-12 16:00');

-- Frozen II (2024) 無任何 ticket，方便測「未被訂票」

-- ************************************************************
-- End of database exercise 07c.sql
-- ************************************************************
