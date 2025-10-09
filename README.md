# 資料庫練習 - SQL

此儲存庫包含資料庫練習的 SQL 檔案。所有檔案使用標準的 SQL-92 相容語法。

## 檔案
直接 raw 連結至 .sql 檔案（點擊開啟程式碼於瀏覽器，複製貼上至 sqliteonline.com 執行）。

- **[database-exercise-01.sql](./database-exercise-01.sql)**  
  Q3c: 若欄位的數據類型是 Boolean, 於 WHERE 內的比較條件可省略 TRUE, 如: COOKED，可以省略 "= TRUE"，直接寫 WHERE COOKED 即可。
  
- **[database-exercise-02.sql](./database-exercise-02.sql)**  
  Q9: 日期格式應使用 ISO 標準 (YYYY-MM-DD)，如 '1988-10-01'。題目中的例子為 '1/10/1988' (MM/DD/YYYY)，需轉換為 '1988-10-01' 才能正確比較範圍。

- **[database-exercise-03.sql](./database-exercise-03.sql)**
- **[database-exercise-04.sql](./database-exercise-04.sql)**
- **[database-exercise-05.sql](./database-exercise-05.sql)**
- **[database-exercise-06.sql](./database-exercise-06.sql)**
- **[database-exercise-07.sql](./database-exercise-07.sql)**
- **[database-exercise-08.sql](./database-exercise-08.sql)**

## 在 sqliteonline.com 的使用方式
1. 點擊上方 raw 連結 > SQL 陳述開啟（檢視 raw）。
2. 複製 SQL：
   - 全選 > 複製（Ctrl+A > Ctrl+C） 或
   - 點擊 "copy" 圖示 (images/icon-copy.png)
4. 前往 [sqliteonline.com](https://sqliteonline.com/) > 點擊 "MariaDB"（左側面板） > 點擊 "Click to connect" > 前往名為 "MariaDB" 的分頁 > 將程式碼貼上（Ctrl+V）至編輯器 > 點擊 "Run"（或 Shift+Enter）建立表格並插入記錄。
   (./images/screen-capture-1.png)
6. 透過建立新分頁測試您的 SQL 以提取資料：點擊 "+" 圖示建立新分頁
   (images/screen-capture-2.png)
8. 您可以使用網站提供的其他功能，例如
   - 點擊左側面板的表格名稱，以檢視表格結構和欄位資料類型 (data type)
   - 在 "History" 中檢視您先前輸入的 SQL
   - 重新執行您的 SQL
   - 編輯您的 SQL
   - 檢視您先前 SQL 的結果
   (images/screen-capture-3.png)



# Database Exercise - SQL

This repository contains SQL files for database exercises. All files use standard SQL-92 syntax.

## Files
Direct raw links to .sql files (click to open code in browser, copy-paste to sqliteonline.com for running).

- **[database-exercise-01.sql](./database-exercise-01.sql)**  
  Q3c: 若欄位的數據類型是 Boolean, 於 WHERE 內的比較條件可省略 TRUE, 如: COOKED，可以省略 "= TRUE"，直接寫 WHERE COOKED 即可。
  
- **[database-exercise-02.sql](./database-exercise-02.sql)**  
  Q9: 日期格式應使用 ISO 標準 (YYYY-MM-DD)，如 '1988-10-01'。題目中的例子為 '1/10/1988' (MM/DD/YYYY)，需轉換為 '1988-10-01' 才能正確比較範圍*

- **[database-exercise-03.sql](./database-exercise-03.sql)**
- **[database-exercise-04.sql](./database-exercise-04.sql)**
- **[database-exercise-05.sql](./database-exercise-05.sql)**
- **[database-exercise-06.sql](./database-exercise-06.sql)**
- **[database-exercise-07.sql](./database-exercise-07.sql)**
- **[database-exercise-08.sql](./database-exercise-08.sql)**

## Usage in sqliteonline.com
1. Click a raw link above > SQL statment opens (view raw).
2. Copy the SQL:
   - Select all > Copy (Ctrl+A > Ctrl+C) OR
   - Click the "copy" icon (images/icon-copy.png)
4. Go to [sqliteonline.com](https://sqliteonline.com/) > Click "MariaDB" (left pane) > Click "Click to connect" > Go to tab named "MariaDB" > Paste (Ctrl+V) the code to the editor > Click "Run" (or Shift+Enter) to create the table(s) and insert records.
   (images/screen-capture-1.png)
6. Try your SQL to extract data by creating a new tab: Click "+" icon to create a new tab
   (images/screen-capture-2.png)
8. You can use other functions provided by the web site like
   - View the table structure and fields data type by click the table name in left pane
   - View the SQL you typed before in "History"
   - Re-run your SQL
   - Edit your SQL
     (images/screen-capture-3.png)
   - View the previous result of your SQL
   (./images/screen-capture-1.png)
