<?php

  $title = trim(filter_var($_POST['title'], FILTER_SANITIZE_STRING));
  $intro = trim(filter_var($_POST['intro'], FILTER_SANITIZE_STRING));
  
  
  $error = '';
  if(strlen($title) <= 1)
    $error = 'Введите название статьи';
  else if(strlen($intro) <= 1)
    $error = 'Введите cтатью';


  if($error != '') {
    echo $error;
    exit();
  }
    
  require_once '../mysql_connect.php';

  $sql = 'INSERT INTO article(title, intro) VALUES(?, ?)';
  $query = $pdo->prepare($sql);
  $query->execute([$title, $intro]);

  echo 'Готово';

?>