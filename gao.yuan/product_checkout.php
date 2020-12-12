<?php

include_once "lib/php/functions.php";
include_once "parts/templates.php";




?><!DOCTYPE html>
<html lang="en">
<head>
   <title>Product Checkout</title>

   <?php include "parts/meta.php" ?>
</head>
<body>

   <?php include "parts/navbar.php" ?>



   <div class="container">
   
   <div class="card soft">
   <form action="action_page.php" style="border:1px solid #ccc">
    <div class="container">
    <h1>Product Checkout</h1>
    <p>Please fill in your information.</p>
    <hr>

    <label for="email"><b>Email Address</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Your Password" name="Password" required>

    <label for="name"><b>Full Name</b></label>
    <input type="password" placeholder="Enter Your Full Name" name="name" required>

     <label for="address"><b>Your Address</b></label>
    <input type="password" placeholder="Enter Your Address" name="name" required>

    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>

    <br>


    <div class="display-flex">
            <div class="flex-none">
               <a href="product_list.php" class="form-button">Cancel</a>
            </div>
            <div class="flex-stretch"></div>
            <div class="flex-none">
               <a href="product_actions.php?action=reset-cart" class="form-button">pay</a>
            </div>
         </div>






</form>
</div>
</div>


<div class="footer">
  <p>Copyright © 2020 Yum Donuts - All Rights Reserved.</p>
</div>


</body>
</html>