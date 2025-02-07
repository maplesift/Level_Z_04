<h2 class="ct">管理者登入</h2>
<table class="all">
    <tr>
        <td class="tt ct">帳號</td>
        <td class="pp"><input type="text" name="acc" id="acc"></td>
    </tr>
    <tr>
        <td class="tt ct">密碼</td>
        <td class="pp"><input type="text" name="pw" id="pw"></td>
    </tr>
    <tr>
        <td class="tt ct">驗證碼</td>
        <td class="pp"> 
        <?php
        $a=rand(10,50);
        $b=rand(10,50);
        $_SESSION['ans']=$a+$b;
        echo $a ." + ". $b ." = ";
        ?>
        <input type="text" name="ans" id="ans"></td>
    </tr>
</table>
<div class="ct"><button onclick="login()">確認</button></div>
<script>
function login() {
    let ans = $(
        "#ans"
    ).val();
    $.get("./api/chk_ans.php", {
        ans
    }, function(res) {
        if (parseInt(res)) {
            console.log(res);
            // alert("正確")
            $.get("api/chk_pw.php", {
                acc: $("#acc").val(),
                pw: $("#pw").val(),
                table:"Admin"

            }, function(res) {
                if (parseInt(res)) {
                    location.href = 'admin.php';
                } else {
                    alert("帳號密碼錯誤")
                }
            })
        } else {
            console.log(res);
            alert("驗證碼錯誤 請重新輸入")
        }
    })
}
</script>