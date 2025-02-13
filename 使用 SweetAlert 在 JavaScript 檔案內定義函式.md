# 使用 SweetAlert 在 JavaScript 檔案內定義函式

## 📌 簡介
`SweetAlert2` 是一個強大的 JavaScript 提示框函式庫，比原生 `alert()` 更美觀且可自訂。你可以在 `.js` 檔案內定義 `SweetAlert` 的函式，然後在 HTML 或其他 JavaScript 檔案中呼叫它。

---

## 📝 **步驟 1：建立 `alert.js` 並定義函式**

在 `alert.js` 檔案內定義一個 `showAlert` 函式。

```javascript
// alert.js
function showAlert(title, text, icon = "info") {
    Swal.fire({
        title: title,
        text: text,
        icon: icon,
        confirmButtonText: "確定"
    });
}
```

這個函式接收 **標題（title）**、**內容（text）** 和 **圖示類型（icon）**，並顯示一個 `SweetAlert` 提示框。

---

## 📝 **步驟 2：在 HTML 內引入 `SweetAlert2` 和 `alert.js`**

```html
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SweetAlert 測試</title>
    <!-- 引入 SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- 引入 alert.js -->
    <script src="alert.js"></script>
</head>
<body>

    <button onclick="showAlert('成功!', '操作成功執行!', 'success')">顯示提示</button>

</body>
</html>
```

這段 HTML 會：
1. 引入 `SweetAlert2` 的 CDN
2. 載入 `alert.js`
3. 透過 `<button>` 觸發 `showAlert()`

---

## 📝 **步驟 3：在其他 JavaScript 檔案內呼叫 `showAlert`**

如果你有另一個 JavaScript 檔案（例如 `main.js`），可以這樣呼叫 `showAlert`：

```javascript
// main.js
document.addEventListener("DOMContentLoaded", function () {
    showAlert("歡迎!", "這是一個 SweetAlert 測試", "info");
});
```

**⚠️ 注意：**
- 確保 `alert.js` 先載入，`main.js` 再載入！
- 可以用 `console.log()` 測試 `showAlert` 是否正確載入。

---

## ✅ **結論**
這樣就可以在 `.js` 檔案內寫 `SweetAlert` 的函式，並在任何地方使用了！🚀

