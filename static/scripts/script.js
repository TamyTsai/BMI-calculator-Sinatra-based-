// 判斷是否有欄位未輸入，並跳出對應警示視窗，皆有輸入就送到後端
function Empty() {
    var height = document.querySelector('#bodyHeight').value; // 指定 HTML中id為bodyHeight輸入框 的 輸入值 給 變數height
    var weight = document.querySelector('#bodyWeight').value;
    
    // 如果身高、體重輸入的值 有空的，就跳對應提醒視窗
    if ((height != '') && (weight != '')) {
        document.bodyform.submit();	// 都有填寫，就送出表單（name為bodyform的form標籤）
    }
    else if ((height == '') && (weight != '')){
        alert('請輸入身高！');
    } // 如果身高為空字串 體重非空字串（沒輸入身高 有輸入體重）
    else if ((height != '') && (weight == '')){
        alert('請輸入體重！');
    } // 如果身高非空字串 體重為空字串（有輸入身高 沒輸入體重）
    else {
        alert('請輸入身高及體重！');
    } // 如果身高體重輸入的值 皆 為 空字串（身高、體重 皆未輸入）
}

$('#calculateButton').click( evt => {
    evt.preventDefault(); // 用 preventDefault 來取消「元素的預設行為」
    Empty(); // 先透過 JS 去查詢表單有無錯誤（先做驗證，表單填寫有錯誤–> 就會彈跳提醒訊息），驗證完成後再透過 post 去傳送
});
// jQuery DOM元素操作
// ES6箭頭函式
// UJS
