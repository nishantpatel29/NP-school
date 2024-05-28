<?php

$dir = scandir("./");
array_shift($dir);
array_shift($dir);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>total avilable things</title>
  <script>
  //  const j =  confirm("want to lanch onmet");
  //  if(j==true){
  //    location.replace("./onmet");
  //  }
  </script>
  <link rel="stylesheet" href="http://localhost/globle/Bootstrap/css/bootstrap.min.css">
  <style>
    *{margin: 0;padding: 0;}
a.oo {
    color: #0d6efd;
    text-decoration: none;
    transition: all .1145s linear;
    width: 100vw;
    display: flex;
    justify-content: center;
    align-items: center; 
    margin-bottom: 0;
} 
a.oo:hover { 
    text-decoration: underline;
    color: #f8f9fa;
    /*  transform: rotate(.6deg);  */
    font-size: 1.52rem;
    font-weight: bolder;
    text-shadow: 2px 2px 2px #0d6efd;
    border-left:5xp solid yellow;
    border-right:5xp solid yellow;
    border-radius: 4px;
    background-image: linear-gradient(#fff,#ccc);
} 
  </style>
</head>
<body> 
    <ul class="list-group list-group-flush p-0">
   <?php
   $f =  '<li class="list-group-item my-0 px-0"><a class="oo" href="./';
   $l = "</a></li>";
    for($i=0;$i<sizeof($dir);$i++){
      echo $f.$dir[$i].'">'.$dir[$i].$l;
    }
   ?>
</ul> 

  <script src="globle/Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>