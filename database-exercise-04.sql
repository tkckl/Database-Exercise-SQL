-- ************************************************************
-- Database file for: database exercise 04.sql
-- 資訊及通訊科技 - 數據庫 練習4 (equal join)
-- ************************************************************

DROP TABLE IF EXISTS ENROLL;
DROP TABLE IF EXISTS COURSE;
DROP TABLE IF EXISTS STUDENT;
DROP TABLE IF EXISTS TEACHER;

-- ************************************************************
-- 建立表格
-- ************************************************************
CREATE TABLE STUDENT (
   sid    INT PRIMARY KEY,      -- 學生編號
   sname  CHAR(50),             -- 學生姓名
   class  CHAR(10),             -- 班別
   age    INT                   -- 年齡
);

CREATE TABLE TEACHER (
   tid    INT PRIMARY KEY,      -- 導師編號
   tname  CHAR(50)              -- 導師姓名
);

CREATE TABLE COURSE (
   code   CHAR(10) PRIMARY KEY, -- 課程代碼
   title  CHAR(50),             -- 課程名稱
   tid    INT,                  -- 導師編號
   FOREIGN KEY (tid) REFERENCES TEACHER(tid)
);

CREATE TABLE ENROLL (
   sid    INT,                  -- 學生編號
   code   CHAR(10),             -- 課程代碼
   grade  CHAR(2),              -- 成績
   PRIMARY KEY (sid, code),
   FOREIGN KEY (sid) REFERENCES STUDENT(sid),
   FOREIGN KEY (code) REFERENCES COURSE(code)
);

-- ************************************************************
-- 插入 TEACHER 資料
-- ************************************************************
INSERT INTO TEACHER VALUES (9001, '陳美華');
INSERT INTO TEACHER VALUES (9002, '王嘉恩');
INSERT INTO TEACHER VALUES (9003, '李志強');

-- ************************************************************
-- 插入 COURSE 資料
-- ************************************************************
INSERT INTO COURSE VALUES ('CS701', 'Python 入門', 9002);
INSERT INTO COURSE VALUES ('CS702', '資料庫基礎', 9002);
INSERT INTO COURSE VALUES ('SC201', '物理', 9001);
INSERT INTO COURSE VALUES ('MA301', '數學', 9003);

-- ************************************************************
-- 插入 STUDENT 資料
-- ************************************************************
INSERT INTO STUDENT VALUES (1001, 'Chan Tai Man', '3A', 15);
INSERT INTO STUDENT VALUES (1002, 'Gary Lee',     '4A', 15);
INSERT INTO STUDENT VALUES (1003, 'Fiona Fong',   '4B', 14);
INSERT INTO STUDENT VALUES (1004, 'Helen Wong',   '4B', 17);
INSERT INTO STUDENT VALUES (1005, 'Andy Lau',     '4C', 16);
INSERT INTO STUDENT VALUES (1006, 'Sally Chow',   '4C', 15);
INSERT INTO STUDENT VALUES (1007, 'Grace Yip',    '4A', 16);
INSERT INTO STUDENT VALUES (1008, 'Ray Tong',     '4E', 16);

-- ************************************************************
-- 插入 ENROLL 資料 (選課紀錄 + 成績)
-- ************************************************************
-- Python 入門 (CS701)
INSERT INTO ENROLL VALUES (1001, 'CS701', 'A');
INSERT INTO ENROLL VALUES (1002, 'CS701', 'C');
INSERT INTO ENROLL VALUES (1003, 'CS701', 'A');
INSERT INTO ENROLL VALUES (1004, 'CS701', 'D');

-- 資料庫基礎 (CS702)
INSERT INTO ENROLL VALUES (1001, 'CS702', 'B');
INSERT INTO ENROLL VALUES (1005, 'CS702', 'A');
INSERT INTO ENROLL VALUES (1006, 'CS702', 'D');

-- 物理 (SC201)
INSERT INTO ENROLL VALUES (1002, 'SC201', 'A');
INSERT INTO ENROLL VALUES (1003, 'SC201', 'C');
INSERT INTO ENROLL VALUES (1007, 'SC201', 'B');

-- 數學 (MA301)
INSERT INTO ENROLL VALUES (1004, 'MA301', 'B');
INSERT INTO ENROLL VALUES (1005, 'MA301', 'C');

-- ************************************************************
-- End of database file: database exercise 04c.sql
-- ************************************************************
