<?php

  $title = trim(filter_var($_POST['title'], FILTER_SANITIZE_STRING));
  $intro = trim(filter_var($_POST['intro'], FILTER_SANITIZE_STRING));
  $dateofbirth = trim($_POST['dateofbirth']);
  
  $error = '';
  if(strlen($title) <= 1)
    $error = 'Введите название статьи';
  else if(strlen($intro) <= 1)
    $error = 'Введите cтатью';
  else if(strlen($dateofbirth) <= 1)
    $error = 'Введите Дату';


  if($error != '') {
    echo $error;
    exit();
  }
    
  require_once '../mysql_connect.php';

  $sql = 'INSERT INTO article(title, intro, dateofbirth) VALUES(?, ?, ?)';
  $query = $pdo->prepare($sql);
  $query->execute([$title, $intro, $dateofbirth]);
  

  echo 'Готово';

?>