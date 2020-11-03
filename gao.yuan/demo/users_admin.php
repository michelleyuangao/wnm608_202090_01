<?php

include "../lib/php/functions.php";

$users = file_get_json("users.json");






function showUserPage($user) {

$classes = implode(", ", $user->classes);

echo <<<HTML
<nav class="nav crumbs">
   <ul>
      <li><a href="{$_SERVER['PHP_SELF']}">Back</a></li>
   </ul>
</nav>
<div>
   <h2>$user->name</h2>
   <div>
      <strong>Type</strong>
      <span>$user->type</span>
   </div>
   <div>
      <strong>Email</strong>
      <span>$user->email</span>
   </div>
   <div>
      <strong>Classes</strong>
      <span>$classes</span>


         <form class="user_form" action="aau/wnm608/gao.yuan/demo/users_admin.php?id=0" method="post">
         <br>
         <label>Update your information here:</label>
         <br>
            <input type="user name" placeholder="user name" class="form-input">
            <input type="user type" placeholder="user type" class="form-input">
            <input type="email" placeholder="email adress" class="form-input">
            <input type="class" placeholder="user classes" class="form-input">
            
            <br>
            <button class="primarybutton">submit</button>
           
         </form>



   </div>
</div>
HTML;
}





?><!DOCTYPE html>
<html lang="en">
<head>
   <title>User Administrator</title>

   <?php include "../parts/meta.php"; ?>
</head>
<body>

   <header class="navbar">
      <div class="container display-flex">
         <div class="flex-none">
            <h1>Users Admin</h1>
         </div>
         <div class="flex-stretch"></div>
         <!-- nav.nav.flex-none>ul>li>a[href=#]>{List} -->
         <nav class="nav flex-none">
            <ul>
               <li><a href="<?= $_SERVER['PHP_SELF'] ?>">List</a></li>
            </ul>
         </nav>
      </div>
   </header>

   <div class="container">
      <div class="card soft">

         <?php


         if(isset($_GET['id'])) {

            showUserPage($users[$_GET['id']]);

         } else {

         ?>

         <h2>User List</h2>

         <ul>
         <?php

         for($i=0; $i<count($users); $i++) {
            echo "<li>
            <a href='{$_SERVER['PHP_SELF']}?id=$i'>{$users[$i]->name}</a>
            </li>";
         }

         ?>
         </ul>

         <?php } ?>


         



      </div>
   </div>
</body>
</html>