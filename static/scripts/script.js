// 判斷是否有欄位未輸入，並跳出對應警示視窗
function Empty() {
    var height = document.querySelector('#bodyHeight').value; // 指定 HTML中id為bodyHeight輸入框 的 輸入值 給 變數height
    var weight = document.querySelector('#bodyWeight').value;
    
    // 如果身高、體重輸入的值 有空的，就跳對應提醒視窗
    if ((height != '') && (weight != '')) {
        // 不跳提醒
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

// function prevent(evt) {
//     if ((height == '') || (weight == '')){
//         evt.preventDefault(); // 使用 event.preventDefault() 來中止原本的行為，然後做你想做的事
//     }
// }

$('#calculateButton').click( evt => {
    // evt.preventDefault(); // 使用 event.preventDefault() 來中止原本的行為，然後做你想做的事
    Empty();
});
// jQuery DOM元素操作
// ES6箭頭函式
// UJS
