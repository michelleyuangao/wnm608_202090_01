<?php

include_once "lib/php/functions.php";
include_once "parts/templates.php";



$cart = getCartItems();

//print_p($cart);



?><!DOCTYPE html>
<html lang="en">
<head>
   <title>Product Cart</title>

   <?php include "parts/meta.php" ?>
</head>
<body>
   
   <?php include "parts/navbar.php" ?>


   <div class="container">
      <div class="grid gap">
         <div class="col-xs-12 col-md-8">
            <div class="card soft">
               <h2>Product Cart</h2>
               <?

               echo array_reduce($cart,'makeCartList');

               ?>
            </div>
         </div>
         <div class="col-xs-12 col-md-4">
            <div class="card soft flat">
               <div class="card-section">
                  <h2>Totals</h2>
               </div>
               <?= cartTotals() ?>
            </div>
         </div>
      </div>
   </div>


<div class="footer">
  <p>Copyright © 2020 Yum Donuts - All Rights Reserved.</p>
</div>


</body>
</html>










