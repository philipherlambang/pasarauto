<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pasar Auto - Tips and Trick</title>

      <!-- Bootstrap -->
      <link href="<?php echo BASE_URL ?>css/bootstrap.min.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/global.css" rel="stylesheet" />

      <link href="<?php echo BASE_URL ?>css/page/tips-and-trick.css" rel="stylesheet" />

      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <div id="container">
         <div id="banner" style="background-image:url(<?php echo BASE_URL.$banner[0]["source"] ?>)">
            <?php include_once BASE_DIR."/view/inc/header.php"; ?>
         </div>

         <div id="container-list">
            <div id="left">
               <div id="category-list">
                  <?php foreach($category as $item_category): ?>
                     <div class="item-category" style="background-image:url(<?php echo BASE_URL ?>images/tips-and-trick-category/<?php echo $item_category["image"] ?>)">
                        <div class="parent-category-name"><a href="<?php echo BASE_URL ?>tips-and-trick/<?php echo $item_category["id_category"] ?>"><?php echo $item_category["category"] ?></a></div>
                        <div class="child-category">
                           <?php foreach($item_category["subcategory"] as $item_subcategory): ?>
                              <div><a href="<?php echo BASE_URL ?>tips-and-trick/<?php echo $item_subcategory["id_category"] ?>"><?php echo $item_subcategory["category"] ?></a></div>
                           <?php endforeach; ?>
                        </div>
                     </div>
                  <?php endforeach; ?>
               </div>
            </div>
            <div id="right"></div>
         </div>
      </div>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="<?php echo BASE_URL ?>js/bootstrap.min.js"></script>

      <?php include_once "js/configjs.php"; ?>
   </body>
</html>
