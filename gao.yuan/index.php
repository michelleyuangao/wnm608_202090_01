<?php

include_once "lib/php/functions.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>Store</title>

   <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="lib/css/styleguide.css">
<link rel="stylesheet" href="lib/css/gridsystem.css">
<link rel="stylesheet" href="css/storetheme.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script></head>
<body>
   
   <header class="navbar">
   <div class="container display-flex flex-align-center">
      <div class="flex-none"><h1>Yum Donuts</h1></div>
      <div class="flex-stretch"></div>
      
      <!-- nav.nav>ul>li*4>a[href=#article$]>{Link $} -->
      <nav class="nav flex-none">
         <ul class="display-flex">
            <li><a href="index.php">Home</a></li>
            <li><a href="product_list.php">Donuts</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="product_cart.php">Cart</a></li>
         </ul>
      </nav>
   </div>
</header>


   <div class="view-window" style="background-image:url(img/background.jpg)">
      <h2>Walcom to the store</h2>
   </div>
   <div class="container">
      <div class="card soft">
         
         <h2>Explore Our Popular Donuts: </h2>


         <div class="grid gap">
            <div class="col-xs-12 col-md-4">
               <figure class="product-item">
                  <div class="product-image">
                     <img src="img/chocolate_donuts_main.jpg" alt="">
                  </div>
                  <figcaption class="product-description">
                     <div class="product-price">&dollar;3.50</div>
                     <div class="product-title">Chocolate Cake</div>
                     <div class="product-description">Moist and fluffy donuts that are baked, not fried, and full of chocolate. Covered in thick chocolate, these are perfect for any chocoholic who wants a chocolate version of this classic treat.</div>
                     <a href="product_item.php?id=10" class="primarybutton">View Detail</a>
                  </figcaption>
               </figure>
            </div>
                        <div class="col-xs-12 col-md-4">
               <figure class="product-item">
                  <div class="product-image">
                     <img src="img/raised_strawberry_main.jpg" alt="">
                  </div>
                  <figcaption class="product-description">
                     <div class="product-price">&dollar;4.50</div>
                     <div class="product-title">Berry Rainbow</div>
                     <div class="product-description">They’re sweet & crisp on the outside, a cross between a cake donut & an old-fashioned donut on the inside, and packed with blueberry bliss. Mmmm…yumberry donuts!</div>
                     <a href="product_item.php?id=7" class="primarybutton">View Detail</a>
                  </figcaption>
               </figure>
            </div>

                        <div class="col-xs-12 col-md-4">
               <figure class="product-item">
                  <div class="product-image">
                     <img src="img/rainbow_sprinkle_main.jpg" alt="">
                  </div>
                  <figcaption class="product-description">
                     <div class="product-price">&dollar;5.00</div>
                     <div class="product-title">Vanilla Rainbow</div>
                     <div class="product-description">Tasting the rainbow is better with frosting and sprinkles. They're the perfect size donuts that taste fantastic, and are great to share with your friends, family, or coworkers any time of the year!</div>
                     <a href="product_item.php?id=4" class="primarybutton">View Detail</a>
                  </figcaption>
               </figure>
            </div>




      </div>
   </div>


<div class="footer">
  <p>Copyright © 2020 Yum Donuts - All Rights Reserved.</p>
</div>



</body>
</html>





