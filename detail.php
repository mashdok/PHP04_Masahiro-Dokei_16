<?php
session_start();
require_once('funcs.php');
loginCheck();


$id = $_GET['id'];
$pdo = db_conn();


//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM log_table WHERE id=:id;');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status === false) {
    sql_error($stmt);
} else {
    $view = $stmt->fetch();
}

?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ更新</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="POST" action="update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>[編集]</legend>
                <label>店名：<input type="text" name="name" value=<?= $view['name'] ?>></label><br>
                <label>ジャンル：<input type="text" name="category" value=<?= $view['category'] ?>></label><br>
                <label>コメント：<input type="text" name="comment" value=<?= $view['comment'] ?>></label><br>
                <input type="submit" value="送信">
                <input type="hidden" name="id" value="<?= $id ?>">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>