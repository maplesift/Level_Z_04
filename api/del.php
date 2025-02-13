<?php include_once "db.php";
$table=$_POST['table'];
// ucfirst($table);

$$table->del($_POST['id']);