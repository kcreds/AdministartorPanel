<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Administrator Panel</title>
    </head>
    <body>
        <div class="loginbox">
            <a href="index.php"><img src="userimg.png" alt="userimg"></a>
            <form action="login.php" method="POST">
                <input type="text" name="uname" placeholder="Your Username">
                <input type="password" name="password" placeholder="Your Password" id="">
                <input type="submit" value="Login">
             </form>

            <?php if (isset($_GET['error'])) { ?>
     		        <p class="error"><?php echo $_GET['error']; ?></p>
     	        <?php } ?>

        </div>


    </div>
    </body>
    </html>