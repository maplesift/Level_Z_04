<?php include_once "db.php";

// 增加判斷式:如果管理者權限為空-增加空陣列 (考試可不加)
if(!empty($_POST['pr'])){

    $_POST['pr']=serialize($_POST['pr']);
}else{
    $_POST['pr']=serialize([]);
}

$Admin->save($_POST);

to("../admin.php?do=admin");