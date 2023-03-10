<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div  style="background: #4BB543; padding-bottom:1%;color: rgb(255, 255, 255);font-weight: bold;font-size: 100%;">
<?php

if(isset($_SESSION['username']))
	{

		echo "<center><h2>Hello ".$_SESSION['username']."</h2></center>";
	}
?>

    	
        <p class="nav-item">
        	
            <a class="nav-link custom1" href="logout.php" style="color: white;"><i class="fa fa-sign-out" style="font-size:22px">Logout</i></a>
        </p>  
    </div>
  </div>
</nav>
</div>

<footer style="background: #4BB543; padding-bottom:1%;color: rgb(255, 255, 255);font-weight: bold;font-size: 100%;">
  <p>&copy;2023<br>
    contact : 9999999999<br>
    address : BMSIT Bengaluru
  </p>
</footer>

</html>