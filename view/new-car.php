<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pasar Auto - New Car</title>

      <!-- Bootstrap -->
      <link href="<?php echo BASE_URL ?>css/bootstrap.min.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/global.css" rel="stylesheet" />

      <link href="<?php echo BASE_URL ?>css/page/new-car.css" rel="stylesheet" />

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

         <div id="content">
            <div id="form">
               <form action="#">
                  <div class="item">
                     <select name="post-maker">
                        <option value="">ANY MAKER</option>
                        <?php foreach($car_maker as $item_carMaker) : ?>
                           <option value="<?php echo $item_carMaker["id"] ?>"><?php echo $item_carMaker["name"] ?></option>
                        <?php endforeach; ?>
                     </select>
                  </div>

                  <div class="item">
                     <select name="post-minprice">
                        <option value="">ANY PRICE</option>
                        <option value="50000000">Rp. <?php echo number_format(50000000, 2, ',', ' '); ?></option>
                        <?php for($price = 100000000; $price <= 1000000000; $price = $price + 100000000) : ?>
                           <option value="<?php echo $price ?>">Rp. <?php echo number_format($price, 2, ',', ' '); ?></option>
                        <?php endfor; ?>
                     </select>
                  </div>

                  <div class="item max-price">
                     <select name="post-maxprice">
                        <option value="">ANY PRICE</option>
                        <option value="50000000">Rp. <?php echo number_format(50000000, 2, ',', ' '); ?></option>
                        <?php for($price = 100000000; $price <= 1000000000; $price = $price + 100000000) : ?>
                           <option value="<?php echo $price ?>">Rp. <?php echo number_format($price, 2, ',', ' '); ?></option>
                        <?php endfor; ?>
                     </select>
                  </div>

                  <div class="item">
                     <select name="post-depreciation">
                        <option value="">ANY DEPRECIATION</option>
                     </select>
                  </div>

                  <div class="item">
                     <select name="post-vehicletype">
                        <option value="">ANY VEHICYLE TYPE</option>
                     </select>
                  </div>

                  <div class="item">
                     <select name="post-dealertype">
                        <option value="">ANY DEALER TYPE</option>
                     </select>
                  </div>

                  <div class="submit">
                     <input type="submit" value="SUBMIT" />
                     <a class="btn-viewall" title="View All">VIEW ALL</a>
                     <a class="btn-advanced-search" title="Advanced Search">Advanced Search</a>
                  </div>
               </form>
            </div>

            <div id="left">
               <div id="maker">
                  <div class="list">
                     <?php for($i=0; $i<16; $i++): ?>
                        <a href="#" style="background-image:url(<?php echo BASE_URL."images/car-logo/".$car_maker[$i]["logo"] ?>)"></a>
                     <?php endfor; ?>
                  </div>

                  <div class="btn-seemore"><a title="See More">See More</a></div>
               </div>

               <div id="vehicle-type">
                  <div class="title">BROSE BY TYPE</div>
                  <div class="list">
                     <?php foreach($car_body as $item_body) : ?>
                        <a class="item" title="<?php echo $item_body["name"] ?>">
                           <div class="image" style="background-image:url(<?PHP echo BASE_URL.$item_body["image"] ?>)"></div>
                           <div class="name"><?php echo $item_body["name"] ?></div>
                        </a>
                     <?php endforeach; ?>
                  </div>
               </div>

               <div id="review">
                  <div class="title">CAR REVIEW</div>
                  <div class="web-review">
                     <div class="box-image"><a class="image" href="#" style="background-image:url(<?php echo BASE_URL.$web_review[0]["image"] ?>)" title="<?php echo $review[0]["title"] ?>">
                        <div class="review-title"><?php echo $web_review[0]["title"] ?></div>
                     </a></div>
                  </div>
                  <div class="cust-review">
                     <?php foreach($customer_review as $item_review): ?>
                        <div class="item">
                           <a class="image" href="#" style="background-image:url(<?php echo BASE_URL.$item_review["image"] ?>)" title="<?php echo $item_review["title"] ?>"></a>
                           <div class="detail">
                              <div class="review-title"><h3><?php echo $item_review["title"] ?></h3></div>
                              <div class="review-desc"><?php echo substr(strip_tags($item_review["text"]), 0, 100) ?></div>
                           </div>
                        </div>
                     <?php endforeach; ?>
                  </div>
               </div>

               <div id="forum">
                  <div class="title">FORUM</div>

                  <div class="forum">
                     <div class="box-forum">
                        <?php $ctr = 0; ?>
                        <?php foreach($forum as $item_forum): ?>
                           <a class="btn-item-forum<?php echo ($ctr == 0) ? " selected" : "" ?>" data-id="<?php echo $item_forum["forum"]["id"] ?>"><?php echo $item_forum["forum"]["name"] ?></a>
                           <?php $ctr++; ?>
                        <?php endforeach; ?>
                     </div>
                     <div class="box-thread">
                        <?php $ctr = 0; ?>
                        <?php foreach($forum as $item_forum): ?>
                        <div class="item-forum<?php echo ($ctr == 0) ? "" : " hidden" ?>" data-id="<?php echo $item_forum["forum"]["id"] ?>">
                           <div class="forum-title"><a href="<?php echo FORUM_URL ?>viewforum.php?f=<?php echo $item_forum["forum"]["id"] ?>"><?php echo strtoupper($item_forum["forum"]["name"]) ?> DISCUSSIONS</a></div>
                           <div class="box-thread-item">
                              <?php foreach($item_forum["topics"] as $item_topic) : ?>
                                 <div class="item">
                                    <div class="time">
                                       <?php $time_diff = general::time_diff($item_topic["time"]); ?>
                                       <?php echo general::time_since($time_diff) ?> Ago
                                    </div>
                                    <a class="thread-title"  href="<?php echo FORUM_URL ?>viewtopic.php?f=<?php echo $item_forum["forum"]["id"] ?>&t=<?php echo $item_topic["id"] ?>"><?php echo $item_topic["title"] ?></a>
                                 </div>
                              <?php endforeach; ?>
                           </div>
                        </div>
                        <?php $ctr++; ?>
                        <?php endforeach; ?>
                     </div>
                  </div>
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
