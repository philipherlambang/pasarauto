<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pasar Auto - <?php echo $category["category"] ?></title>

      <!-- Bootstrap -->
      <link href="<?php echo BASE_URL ?>css/bootstrap.min.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/global.css" rel="stylesheet" />

      <link href="<?php echo BASE_URL ?>css/page/tips-and-trick-category.css" rel="stylesheet" />

      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <div id="container">
         <?php include_once BASE_DIR."/view/inc/header.php"; ?>
         
         <div id="wrapper">
            <div id="left">
               <div id="banner" style="background-image:url(<?php echo BASE_URL.$banner[0]["source"] ?>)"></div>
               <div id="parent-category">
                  <?php foreach($parent_category as $item_category) : ?>
                     <a class="<?php echo ($item_category["id_category"] == $category["id_category"] || $item_category["id_category"] == $category["id_parent"]) ? "active" : "" ?>" href="<?php echo BASE_URL ?>tips-and-trick/<?php echo $item_category["id_category"] ?>"><?php echo $item_category["category"] ?></a>
                  <?php endforeach; ?>
               </div>
               <div id="category-title"><h1><?php echo $category["category"] ?></h1></div>
               <div id="child-category">
                  <?php foreach($child_category as $item_category) : ?>
                     <a class="<?php echo ($item_category["id_category"] == $category["id_category"] || $item_category["id_category"] == $category["id_parent"]) ? "active" : "" ?>" href="<?php echo BASE_URL ?>tips-and-trick/<?php echo $item_category["id_category"] ?>"><?php echo $item_category["category"] ?></a>
                  <?php endforeach; ?>
               </div>
               <div id="data-list">
                  <?php foreach($data_list as $item_list) : ?>
                     <div class="item-data">
                        <div class="image">
                           <a href="#" style="background-image:url(<?php echo BASE_URL.$item_list["image"] ?>)" title="<?php echo $item_list["title"] ?>"></a>
                        </div>
                        <div class="detail">
                           <div class="title"><a href="#" title="<?php echo $item_list["title"] ?>"><h2><?php echo $item_list["title"] ?></h2></a></div>
                           <div class="date"><p><?php echo $item_list["date"] ?></p></div>
                           <div class="desc"><p><?php echo $item_list["small_desc"] ?></p></div>
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
