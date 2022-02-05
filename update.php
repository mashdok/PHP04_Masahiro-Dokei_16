<?php
//1. POSTデータ取得
$name   = $_POST['name'];
$category  = $_POST['category'];
$comment = $_POST['comment'];
$id     = $_POST['id'];

//2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare('UPDATE log_table SET name=:name,category=:category,comment=:comment WHERE id=:id;');
$stmt->bindValue('name',   $name,   PDO::PARAM_STR);
$stmt->bindValue(':category',  $category,  PDO::PARAM_STR);
$stmt->bindValue(':comment',    $comment,    PDO::PARAM_STR);
$stmt->bindValue(':id',     $id,     PDO::PARAM_INT);
$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    sql_error($stmt);
} else {
    redirect('select.php');
}