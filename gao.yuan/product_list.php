<?php

include_once "lib/php/functions.php";
include_once "parts/templates.php";
include_once "data/api.php";



setDefault('s','');
setDefault('t','products_all');
setDefault('orderby_direction','DESC');
setDefault('orderby','date_create');
setDefault('limit','12');




function makeSortOptions() {
   $options = [
      ["date_create","DESC","Latest Products"],
      ["date_create","ASC","Oldest Products"],
      ["price","DESC","Most Expensive"],
      ["price","ASC","Least Expensive"]
   ];
   foreach($options as [$orderby,$direction,$name]) {
      echo "
      <option data-orderby='$orderby' data-direction='$direction'
      ".($_GET['orderby']==$orderby && $_GET['orderby_direction']==$direction ? "selected" : "").">
      $name
      </option>
      ";
   }
}

function makeHiddenValues($options1,$options2) {
   foreach(array_merge($options1,$options2) as $k=>$v) {
      echo "<input type='hidden' name='$k' value='$v'>\n";
   }
}




$result = makeStatement($_GET['t']);
$products = isset($result['error']) ? [] : $result;




?><!DOCTYPE html>
<html lang="en">
<head>
   <title>Product List</title>

   <?php include "parts/meta.php" ?>
</head>
<body>
   
   <?php include "parts/navbar.php" ?>

   <div class="container">

      <form action="product_list.php" method="get" class="hotdog stack">

         <input type="search" name="s" placeholder="Search for a donuts"
         value="<?= @$_GET['s'] ?>">

         <?
         makeHiddenValues([
            "orderby"=>$_GET['orderby'],
            "orderby_direction"=>$_GET['orderby_direction'],
            "limit"=>$_GET['limit'],
            "t"=>"search"
         ],[]);
         ?>

         <button type="submit" class="btn inline">Search</button>
      </form>

      <div class="display-flex" style="margin:1em 0">
         <div class="flex-none display-flex">
            <form action="product_list.php" method="get">
               <?
               makeHiddenValues($_GET,[
                  "category"=>"Raised Donuts",
                  "t"=>"products_by_category"
               ]);
               ?>

               <input type="submit" value="Raised Donuts" class="form-button">
            </form>
            <form action="product_list.php" method="get">
               <?
               makeHiddenValues($_GET,[
                  "category"=>"Glazed Donuts",
                  "t"=>"products_by_category"
               ]);
               ?>

               <input type="submit" value="Glazed Donuts" class="form-button">
            </form>
         </div>
         <div class="flex-stretch"></div>
         <div class="flex-none">
            
            <form action="product_list.php" method="get">

               <?
               makeHiddenValues($_GET,[]);
               ?>
               <div class="form-select">
                  <select onchange="checkSort(this)">
                     <?=makeSortOptions()?>
                  </select>
               </div>
            </form>
         </div>
      </div>


      <h2>Product List</h2>

      <div class="grid gap">
        
         <?php

         echo array_reduce(
            $products,
            'makeProductList'
         );

         ?>
      </div>
   </div>

   <div class="container">
      <div class="card soft">
         <a href="admin">Product Admin</a>
      </div>
   </div>


<div class="footer">
  <p>Copyright © 2020 Yum Donuts - All Rights Reserved.</p>
</div>

</body>
</html>







