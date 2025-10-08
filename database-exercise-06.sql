-- ************************************************************
-- Database file for: database exercise 06.sql
-- 資訊及通訊科技 - 數據庫 練習6 (outer join)
-- ************************************************************

DROP TABLE IF EXISTS CAST;
DROP TABLE IF EXISTS MOVIE;
DROP TABLE IF EXISTS ACTOR;

-- ************************************************************
-- 建立表格
-- ************************************************************

CREATE TABLE MOVIE (
   mid       INT PRIMARY KEY,       -- 電影識別碼
   title     CHAR(100),             -- 電影名稱
   rdate     DATE,                  -- 上映日期
   genre     CHAR(50),              -- 電影類型
   boxoffice BIGINT,                -- 票房收入
   award     CHAR(100),             -- 獎項
   rating    FLOAT                  -- 評分
);

CREATE TABLE ACTOR (
   aid     INT PRIMARY KEY,         -- 演員識別碼
   name    CHAR(50),                -- 演員姓名
   dob     DATE,                    -- 出生日期
   gender  CHAR(1),                 -- 性別 (M/F)
   award   CHAR(100)                -- 獎項
);

CREATE TABLE CAST (
   mid       INT,                   -- 電影識別碼
   aid       INT,                   -- 演員識別碼
   role      CHAR(50),              -- 角色
   actingfee BIGINT,                -- 演出酬勞
   PRIMARY KEY (mid, aid),
   FOREIGN KEY (mid) REFERENCES MOVIE(mid),
   FOREIGN KEY (aid) REFERENCES ACTOR(aid)
);

-- ************************************************************
-- 插入 MOVIE 資料
-- ************************************************************

INSERT INTO MOVIE VALUES (1600, 'La La Land',  '2017-01-26', 'Musical',    472000000, 'Best Original Song', 8.2);
INSERT INTO MOVIE VALUES (1601, 'Future Wars', '2001-05-10', 'Sci-Fi',       8500000, NULL,                 6.8);
INSERT INTO MOVIE VALUES (1602, 'Love Story',  '2000-02-14', 'Romance',     12000000, NULL,                 7.5);
INSERT INTO MOVIE VALUES (1603, 'Silent Hill', '2005-07-01', 'Thriller',    36000000, NULL,                 7.1);
INSERT INTO MOVIE VALUES (1604, 'Comedy Night','2010-11-20','Comedy',       14000000, 'Best Screenplay',    6.9);
INSERT INTO MOVIE VALUES (1605, 'The Earth', '2015-03-01', 'Sci-Fi',             0, NULL,                 NULL); -- 無演員
INSERT INTO MOVIE VALUES (1606, 'Avengers: Endgame','2019-04-26','Action', 2797800564, 'Best Visual Effects', 8.4);

-- ************************************************************
-- 插入 ACTOR 資料
-- ************************************************************

INSERT INTO ACTOR VALUES (2600, 'Emma Stone',   '1988-11-06', 'F', 'Best Actress');
INSERT INTO ACTOR VALUES (2601, 'Ryan Gosling', '1980-11-12', 'M', NULL);
INSERT INTO ACTOR VALUES (2602, 'Tom Hanks',    '1956-07-09', 'M', 'Best Actor');
INSERT INTO ACTOR VALUES (2603, 'Natalie Portman','1981-06-09','F', NULL);
INSERT INTO ACTOR VALUES (2604, 'Keanu Reeves','1964-09-02','M', NULL);
INSERT INTO ACTOR VALUES (2605, 'Gary Chan',  '1990-01-01', 'M', NULL); -- 從未參演
INSERT INTO ACTOR VALUES (2700, 'Robert Downey Jr.', '1965-04-04', 'M', NULL);
INSERT INTO ACTOR VALUES (2701, 'Chris Evans',      '1981-06-13', 'M', NULL);
INSERT INTO ACTOR VALUES (2702, 'Chris Hemsworth',  '1983-08-11', 'M', NULL);
INSERT INTO ACTOR VALUES (2703, 'Scarlett Johansson','1984-11-22','F', NULL);
INSERT INTO ACTOR VALUES (2704, 'Mark Ruffalo',     '1967-11-22', 'M', NULL);
INSERT INTO ACTOR VALUES (2705, 'Jeremy Renner',    '1971-01-07', 'M', NULL);
INSERT INTO ACTOR VALUES (2706, 'Brie Larson',      '1989-10-01', 'F', 'Best Actress');
INSERT INTO ACTOR VALUES (2707, 'Josh Brolin',      '1968-02-12', 'M', NULL);
-- ************************************************************
-- 插入 CAST 資料
-- ********************************************************----

-- La La Land
INSERT INTO CAST VALUES (1600, 2600, 'Mia',    10000000);
INSERT INTO CAST VALUES (1600, 2601, 'Sebastian', 12000000);

-- Future Wars
INSERT INTO CAST VALUES (1601, 2602, 'Commander', 8000000);
INSERT INTO CAST VALUES (1601, 2604, 'Soldier',   5000000);

-- Love Story
INSERT INTO CAST VALUES (1602, 2601, 'Boyfriend', 4000000);
INSERT INTO CAST VALUES (1602, 2603, 'Girlfriend',3500000);

-- Silent Hill
INSERT INTO CAST VALUES (1603, 2602, 'Detective', 6000000);
INSERT INTO CAST VALUES (1603, 2603, 'Victim',    3000000);

-- Comedy Night
INSERT INTO CAST VALUES (1604, 2604, 'Funny Guy', 2000000);
INSERT INTO CAST VALUES (1604, 2601, 'Joker',     2500000);
INSERT INTO CAST VALUES (1604, 2600, 'Comedian',  3000000);

-- Avengers: Endgame
INSERT INTO CAST VALUES (1606, 2700, 'Tony Stark / Iron Man', 75000000);
INSERT INTO CAST VALUES (1606, 2701, 'Steve Rogers / Captain America', 15000000);
INSERT INTO CAST VALUES (1606, 2702, 'Thor',       20000000);
INSERT INTO CAST VALUES (1606, 2703, 'Natasha Romanoff / Black Widow', 15000000);
INSERT INTO CAST VALUES (1606, 2704, 'Bruce Banner / Hulk',   15000000);
INSERT INTO CAST VALUES (1606, 2705, 'Clint Barton / Hawkeye',12000000);
INSERT INTO CAST VALUES (1606, 2706, 'Carol Danvers / Captain Marvel',10000000);
INSERT INTO CAST VALUES (1606, 2707, 'Thanos',    8000000);

-- The Earth → 沒有任何演員參與

-- ************************************************************
-- End of database file: database exercise 06c.sql
-- ************************************************************