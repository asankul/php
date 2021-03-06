
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Создание статей</title>

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
      <h4 class="mb-3">Добавление новой статьи</h4>
      <form onsubmit="return false;" method="post">
        <div class="mb-3">
        <label for="dateofbirth">Дата</label>
        <input type="date" name="dateofbirth" id="dateofbirth">
        </div>
        <div class="mb-3">
          <label for="title">Введите тему статьи</label>
          <div class="input-group">
            <input type="text" class="form-control" id="title" name='title' >
          </div>
        </div>

        <div class="mb-3">
          <label for="intro">Введите текст статьи</label>
          <div class="input-group">
            <textarea class="form-control" rows="8" cols="80" id="intro" name='intro'></textarea>
          </div>
        </div>
        <div class="mb-3">
          <div class="alert alert-danger" id="errorBlock"></div>
        </div>

        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" id="article" >Добавить статью</button>
      </form>
    </div>
  </div>

  <?php require 'blocks/footer.php'; ?>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  $('#article').click(function() {
    var title = $('#title').val();
    var intro = $('#intro').val();
    var dateofbirth = $('#dateofbirth').val();
    
    
    $.ajax({
      url: 'ajax/article.php',
      type: 'POST',
      cache: false,
      data: {'title' : title, 'intro' : intro, 'dateofbirth' : dateofbirth},
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
