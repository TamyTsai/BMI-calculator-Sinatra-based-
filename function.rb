require 'sinatra' # require引入 檔案
require 'sinatra/reloader' if development? # 流程控制倒裝句 ＃如果在開發模式下，才引入此套件（效能較差）

get '/' do #當網址於根目錄
    erb :index, layout: :layout
    # erb :index 會去讀取views/index.erb檔案 # 交給前端 ＃:index為符號
    # 套用layout版型（公版）
end

post '/' do #當網址於根目錄 且使用POST方法
    # 以name接收表單傳過來的值 進行計算處理，把處理結果指定給一個變數，再把變數的值指定給區域變數，把區域變數寫在html供顯示計算結果
    h = params[:height].to_f / 100
    # params[:height]會產生一個Hash，並去找出:height（name屬性為height 的input標籤 中 所輸入的值） key所對應的value
    # 透過網路傳輸過來的東西 都是字串，所以要轉成數字
    # Ruby的數字運算 整數/整數只會得到整數 故 浮點的數字 而非轉成整數
    w = params[:weight].to_f
    bmi = w / (h * h) #　在ruby檔做運算，把運算結果存放到 變數，讓html去呈現 變數
    erb :result, layout: :layout, locals: {result: bmi}
    # 讀取views/result.erb檔案（沒有說網址設/form就會讀form.erb檔，什麼路徑對應讀哪一個erb檔都可以）
    # 帶一個 區域變數result（裝的值 是這裡 bmi存放的運算後值） 給views/result.erb檔案
    # 區域變數生命週期較實體變數短 比較不會污染其他地方
end