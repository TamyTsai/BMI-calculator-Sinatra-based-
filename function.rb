require 'sinatra' # require引入 檔案
require 'sinatra/reloader' if development? # 流程控制倒裝句 ＃如果在開發模式下，才引入此套件（效能較差）

set :public_folder, __dir__ + '/static'
# https://stackoverflow.com/questions/70719976/why-wont-my-css-stylesheet-work-in-sinatra
# 不寫這個的話，html無法引入css與js
# 將css與js都放進static資料夾

get '/' do # 當網址於根目錄
    erb :index, layout: :layout
    # erb :index 會去讀取views/index.erb檔案 # 交給前端 ＃:index為符號
    # 套用layout版型（公版）
end

post '/' do # 當網址於根目錄 且使用POST方法
    # 以name接收表單傳過來的值 進行計算處理，把處理結果指定給一個變數，再把變數的值指定給區域變數，把區域變數寫在html供顯示計算結果
    h = params[:height].to_f / 100
    # params[:height]會產生一個Hash，並去找出:height（name屬性為height 的input標籤 中 所輸入的值） key所對應的value
    # 透過網路傳輸過來的東西 都是字串，所以要轉成數字
    # Ruby的數字運算 整數/整數只會得到整數 故 浮點的數字 而非轉成整數
    w = params[:weight].to_f
    bmi = sprintf("%.2f", w / (h * h)).to_f
    #　在ruby檔做運算，把運算結果存放到 變數，讓html去呈現 變數
    # sprintf("%.2f", w / (h * h))方法讓計算結果取到 小數點後兩位，但會變成字串，為了與BMI標準作比較，要轉回數字

    if bmi < 18.5
        resultTextNormal = ''
        resultTextAbnormal = '體重過輕'
    elsif bmi >= 18.5 && bmi < 24
        resultTextNormal = '健康體位'
        resultTextAbnormal = ''
    elsif bmi >= 24 && bmi < 27 
        resultTextNormal = ''
        resultTextAbnormal = '過重'
    elsif bmi >= 27 && bmi < 30
        resultTextNormal = ''
        resultTextAbnormal = '輕度肥胖'
    elsif bmi >= 30 && bmi < 35 
        resultTextNormal = ''
        resultTextAbnormal = '中度肥胖'
    else 
        resultTextNormal = ''
        resultTextAbnormal = '重度肥胖'
    end # 記得寫end
        
    erb :result, layout: :layout, locals: {result: bmi, resultTextNormal: resultTextNormal, resultTextAbnormal: resultTextAbnormal}
    # 讀取views/result.erb檔案
    # 帶一個 區域變數result（裝的值 是這裡 bmi存放的運算後值） 給views/result.erb檔案
    # 冒號左邊是要給html用的區域變數名稱 冒號右邊是本程式碼區塊中的變數
    # 區域變數生命週期較實體變數短 比較不會污染其他地方
end