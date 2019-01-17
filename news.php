
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <?php 
      require_once 'mysql_connect.php';
      $sql = 'SELECT * FROM `article` WHERE `id` = :id';
      $id = $_GET['id'];
      $query = $pdo->prepare($sql);
      $query->execute(['id' => $_GET['id']]);
      $article = $query->fetch(PDO::FETCH_OBJ);
      
    ?>
    <title>
      <?= $article->title; ?>
    </title>

    <!-- Bootstrap core CSS -->
<link href="/docs/4.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    <div class="container">
  <?php require 'blocks/header.php'; ?>

  <div class="row">
    <?php require 'blocks/tags.php'; ?>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3"><?= $article->title; ?></h4>
      <p><?= $article->dateofbirth; ?></p>
      <p><?= $article->intro; ?></p>
    </div>
  </div>

  <?php require 'blocks/footer.php'; ?>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  $('#article').click(function() {
    var title = $('#title').val();
    var intro = $('#intro').val();
    
    
    $.ajax({
      url: 'ajax/article.php',
      type: 'POST',
      cache: false,
      data: {'title' : title, 'intro' : intro},
      dataType: 'html',
      success: function(data) {
        if(data == "Готово") {
          $('#article').text('Готово');
          $('#errorBlock').hide();
        }
        else {
          $('#errorBlock').show();
          $('#errorBlock').text(data);
        }
      }
    });  
  });
</script>

</body>
</html>
