<?php

include_once "lib/php/functions.php";


function makeProductList($r,$o) {
return $r.<<<HTML
<div class="col-xs-12 col-md-4">
   <a href="product_item.php?id=$o->id" class="product-item">
      <figure>
         <div class="product-image">
            <img src="/images/store/$o->image_thumb" alt="">
         </div>
         <figcaption class="product-description">
            <div class="product-price">&dollar;$o->price</div>
            <div class="product-title">$o->name</div>
         </figcaption>
      </figure>
   </a>
</div>
HTML;
}



?><!DOCTYPE html>
<html lang="en">
<head>
   <title>Product List</title>

   <?php include "parts/meta.php" ?>
</head>
<body>
   
   <?php include "parts/navbar.php" ?>

   <div class="container">
         <h2>Product List</h2>

         <div class="grid gap">
           
            <?php

            echo array_reduce(
               MYSQLIQuery("
                  SELECT *
                  FROM products
                  ORDER BY date_create DESC
                  LIMIT 12
               "),
               'makeProductList'
            );

            ?>
         </div>
   </div>

</body>
</html>