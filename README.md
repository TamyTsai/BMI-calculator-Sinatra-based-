# BMI計算器
![截圖 2024-05-25 初始畫面](https://github.com/user-attachments/assets/c06f579b-2089-42cc-8960-e14737e867bd)

## 關於BMI計算器
- 本計算器可以讓你計算出自己的BMI，並看看自己的體位是否符合衛福部標準

## 專案目的
- 改寫自自己的專案[BMI-Calculator](https://github.com/TamyTsai/BMI-Calculator)
- 透過將靜態網頁改寫為動態網頁，練習Sinatra框架之使用

## 專案畫面與功能介紹
### 初始畫面
輸入身高、體重（可有小數點），按下計算按鈕，將跳轉BMI計算結果頁面

![截圖 2024-05-25 初始畫面](https://github.com/TamyTsai/Sinatra-based-BMI-calculator/assets/97825677/35b5d3cb-2d51-4181-ae54-9ab57a434761)

<hr>

### 有輸入框未輸入時
未輸入身高或體重時，將跳出對應提醒視窗，停止將表單送往後端

![截圖 2024-05-25 未輸入體重](https://github.com/TamyTsai/Sinatra-based-BMI-calculator/assets/97825677/096d9f13-4a9e-45bd-aa31-6897c849518a)

<hr>

### BMI計算結果頁面-體位正常
體位正常時，體位判斷結果為黑字

![截圖 2024-05-25 健康體位](https://github.com/TamyTsai/Sinatra-based-BMI-calculator/assets/97825677/77015a40-dce3-4ab2-a86e-d5573f1ca7f5)

<hr>

### BMI計算結果頁面-體位異常
體位異常時，體位判斷結果為紅字

![截圖 2024-05-25 異常體位](https://github.com/TamyTsai/Sinatra-based-BMI-calculator/assets/97825677/a1bb205d-85e4-4299-9cab-804d6ab0a607)



## 安裝
以下皆為於macOS環境運行
### 安裝Ruby v2.7.8
```bash
$ ruby-install ruby 2.7.8
```
### 安裝Sinatra、puma、Sinatra contrib
```bash
$ bundle install
```
<!-- ### 取得專案
```bash
$ git clone https://github.com/TamyTsai/Sinatra-based-BMI-calculator.git
```
### 移動到專案內
```bash
$ cd Sinatra-based-BMI-calculator
``` -->
### 請Ruby啟動主程式
```bash
$ ruby function.rb
```
### 開啟專案
在瀏覽器網址列輸入以下網址即可看到畫面
```bash
http://localhost:4567/
```

<!-- ## 資料夾及檔案說明
- static - 靜態資源放置處
  - scripts - JS檔案放置處
    - jquery-3.7.1.min.js - jQuery檔案
    - script.js - 頁面JS檔案，負責部分網頁功能（前端驗證）
  - styles - 樣式放置處
    - normalize.css - normalize檔案
    - style.css - 頁面樣式檔案
- views - 畫面放置處
  - index.erb - 首頁
  - layout.erb - 共用版面
  - result.erb - 計算結果頁面
- config.ru - Rack
- function.rb - 主程式（Ruby）
- Gemfile - 描述Ruby程式中gem相依賴關係的檔案
- Gemfile.lock - 實際安裝的gem版本紀錄 -->


<!-- ## 專案技術
- HTML
- CSS
  - Normalize v8.0.1
  - FlexBox
- JavaScript
  - ES6
  - jQuery v3.7.1
  - MathJax v3.2.1
- Ruby v2.7.8
  - Sinatra v4.0.0
  - Sinatra-contrib v4.0.0
  - puma v6.4.2 -->

## 專案技術
- 前端：HTML、CSS、jQurey
- 後端：Sinatra
- 版本控制：Git

## 使用技術詳細說明
- 以HTML、CSS、JavaScript及Ruby撰寫，為動態網頁
- 應用Normalize解決不同瀏覽器預設CSS樣式不同的問題
- 運用Flexbox操縱部分元素排版
- 使用ES6、jQuery使JavaScript語法變得簡潔（箭頭函式、簡化DOM控制等）
- 採用UJS寫法，維持HTML簡潔
- 使用MathJax以顯示BMI計算公式
- 使用Sinatra輕量網頁框架製作網頁
- 使用Sinatra-contrib來免除程式碼更動後，需重啟伺服器的困擾

## 聯絡作者
你可以透過email與我聯絡：tamy8677@gmail.com

<i>最後更新：2024.5.25</i>
