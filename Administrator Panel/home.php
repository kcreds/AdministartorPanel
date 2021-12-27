<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="style2.css">
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="script.js"></script>
     
     <title>Home</title>
</head>
<body>
     
<div class="content">
     <?php
     session_start();
     if (isset($_SESSION['id']) && isset($_SESSION['user_name'])) {
     ?>
          <a href="logout.php" class="buttonout" >Logout</a>

          <div class = "welcome">  
          <p>Welcome,<br>
          <?php echo $_SESSION['name']; ?></p>
          </div>

          <div class="line"></div>
          <div id="clock" class="clock"><script>currentTime();</script></div>

        <div class = "search">
          <div class="container">
            <input type="text" name="search_text" size id="search_text" size="50" placeholder="Search by Details" class="search-text" />
            <br>
            <div id="result" class = "result"></div>
          </div>
        </div>

     <?php 
     }else{
          header("Location: index.php");
          exit();
     }
?>


</div>  

<div class="menu">
  <input type="checkbox" id="toggle" class="toggle" />
  <label id="show-menu" for="toggle">
    <div class="mbtn">
      <i class="material-icons md-36 toggleBtn menuBtn">menu</i>
      <i class="material-icons md-36 toggleBtn closeBtn">close</i>
    </div>
    <div class="mbtn">
     <a href="home.php"><i class="material-icons md-36">storage</i></a>
    </div>
    <div class="mbtn">
      <a href="#"><i class="material-icons md-36">library_add</i></a>
    </div>
    <div class="mbtn">
      <a href="#"><i class="material-icons md-36">person</i></a>
    </div>
    <div class="mbtn">
      <a href="#"><i class="material-icons md-36">person_add</i></a>
    </div>
    <div class="mbtn">
      <a href="#"><i class="material-icons md-36">rocket_launch</i></a>
    </div>
  </label>
</div>

<footer>
</footer>
<script>

      $(document).ready(function(){

      load_data();

      function load_data(query)
      {
      $.ajax({
        url:"fetch.php",
        method:"POST",
        data:{query:query},
        success:function(data)
        {
        $('#result').html(data);
        }
      });
      }
      $('#search_text').keyup(function(){
      var search = $(this).val();
      if(search != '')
      {
        load_data(search);
      }
      else
      {
        load_data();
      }
      });
      });

</script>
</body>
</html>

