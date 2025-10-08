-- ************************************************************
-- Database file for: database exercise 08.sql
-- 資訊及通訊科技 - 數據庫 練習8 (綜合)
-- ************************************************************

DROP TABLE IF EXISTS TRANS;
DROP TABLE IF EXISTS GUEST;

-- ************************************************************
-- 建立表格
-- ************************************************************

CREATE TABLE GUEST (
   gid     CHAR(4) PRIMARY KEY,        -- 客戶識別碼
   name    CHAR(50),                   -- 客戶名字
   email   CHAR(100),                  -- 電子郵件
   phone   CHAR(15),                   -- 電話
   yob     INT,                        -- 出生年份
   country CHAR(50)                    -- 國家
);

CREATE TABLE TRANS (
   tid      CHAR(5) PRIMARY KEY,       -- 交易識別碼
   gid      CHAR(4),                   -- 客戶識別碼
   checkin  DATE,                      -- 入住日期
   checkout DATE,                      -- 退房日期
   rmno     INT,                       -- 房間號碼
   amount   INT,                       -- 消費金額
   FOREIGN KEY (gid) REFERENCES GUEST(gid)
);

-- ************************************************************
-- 插入 GUEST 資料
-- ************************************************************

INSERT INTO GUEST VALUES ('G001','Alice Chan','alice@example.com','91234567',1990,'Australia');
INSERT INTO GUEST VALUES ('G002','Bob Lee','bob@example.com','91230002',1985,'Japan');
INSERT INTO GUEST VALUES ('G003','Charlie Wong','charlie@example.com','91230003',1992,'China');
INSERT INTO GUEST VALUES ('G004','David Lam','david@example.com','91230004',1978,'USA');
INSERT INTO GUEST VALUES ('G005','Eva Ng','eva@example.com','91230005',1995,'UK');
INSERT INTO GUEST VALUES ('G006','Frank Ho','frank@example.com','91230006',1988,'Australia'); -- 測試未消費客戶
INSERT INTO GUEST VALUES ('G007','Grace Lee','grace@example.com','92340007',1991,'Australia');
INSERT INTO GUEST VALUES ('G008','Henry Ma','henry@example.com','92340008',1984,'Australia');
INSERT INTO GUEST VALUES ('G009','Yuki Tanaka','yuki@example.com','93330009',1993,'Japan');
INSERT INTO GUEST VALUES ('G010','Kenji Ito','kenji@example.com','93330010',1987,'Japan');
INSERT INTO GUEST VALUES ('G011','Li Wei','liwei@example.com','94440011',1990,'China');
INSERT INTO GUEST VALUES ('G013','Michael Johnson','mjohnson@example.com','95550013',1975,'USA');
INSERT INTO GUEST VALUES ('G014','Emily Davis','edavis@example.com','95550014',1998,'USA');
INSERT INTO GUEST VALUES ('G015','Oliver Smith','osmith@example.com','96660015',1992,'USA');
INSERT INTO GUEST VALUES ('G016','Sophia Taylor','staylor@example.com','96660016',1989,'USA');
-- ************************************************************
-- 插入 TRANS 資料
-- ************************************************************

-- 1. Alice 2023年11月住過房間207
INSERT INTO TRANS VALUES ('T0001','G001','2023-11-10','2023-11-12',207,1500);
INSERT INTO TRANS VALUES ('T0002','G001','2024-01-05','2024-01-07',301,2000);

-- 2. Bob 多次交易 (≥10次), 金額較小
INSERT INTO TRANS VALUES ('T0101','G002','2023-02-01','2023-02-02',201,500);
INSERT INTO TRANS VALUES ('T0102','G002','2023-03-01','2023-03-03',202,600);
INSERT INTO TRANS VALUES ('T0103','G002','2023-04-10','2023-04-12',203,650);
INSERT INTO TRANS VALUES ('T0104','G002','2023-05-05','2023-05-07',204,700);
INSERT INTO TRANS VALUES ('T0105','G002','2023-06-08','2023-06-10',205,550);
INSERT INTO TRANS VALUES ('T0106','G002','2023-07-01','2023-07-02',206,500);
INSERT INTO TRANS VALUES ('T0107','G002','2023-08-15','2023-08-17',207,450);
INSERT INTO TRANS VALUES ('T0108','G002','2023-09-09','2023-09-11',208,600);
INSERT INTO TRANS VALUES ('T0109','G002','2023-10-02','2023-10-03',209,800);
INSERT INTO TRANS VALUES ('T0110','G002','2023-11-20','2023-11-22',210,700);
INSERT INTO TRANS VALUES ('T0111','G002','2023-11-25','2023-11-28',207,700);

-- 3. Charlie 多次交易 (消費金額不同)
INSERT INTO TRANS VALUES ('T0201','G003','2023-01-15','2023-01-16',301,2000);
INSERT INTO TRANS VALUES ('T0202','G003','2024-02-01','2024-02-03',302,2500);
INSERT INTO TRANS VALUES ('T0203','G003','2023-12-05','2023-12-08',303,2700);

-- 4. David (USA) 消費額大，用嚟拉高平均值
INSERT INTO TRANS VALUES ('T0301','G004','2023-11-01','2023-11-05',401,5000);
INSERT INTO TRANS VALUES ('T0302','G004','2024-03-15','2024-03-18',402,4500);

-- 5. Eva (UK) 少量交易
INSERT INTO TRANS VALUES ('T0401','G005','2023-07-01','2023-07-02',501,800);

-- 6. Frank (G006) 無任何交易 → 測試題目(7)

-- 7. Emily Davis 的交易紀錄
INSERT INTO TRANS VALUES ('T0501','G014','2023-03-10','2023-03-12',305,1800);
INSERT INTO TRANS VALUES ('T0502','G014','2023-07-20','2023-07-23',402,2500);
INSERT INTO TRANS VALUES ('T0503','G014','2023-11-15','2023-11-18',407,2200);
INSERT INTO TRANS VALUES ('T0504','G014','2024-02-05','2024-02-09',410,4000);
INSERT INTO TRANS VALUES ('T0505','G014','2024-09-01','2024-09-03',210,1700);
-- ************************************************************
-- End of database exercise 08c.sql
-- ************************************************************