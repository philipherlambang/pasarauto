<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pasar Auto</title>

      <?php include_once BASE_DIR."/view/inc/favicon.php"; ?>
      <!-- Bootstrap -->
      <link href="<?php echo BASE_URL ?>css/bootstrap.min.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/global.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/page/index.css" rel="stylesheet" />

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
            <?php include_once BASE_DIR."/view/inc/side-search.php"; ?>

            <div id="banner-desc">
               <div class="title"><a href="<?php echo $banner[0]["text"] ?>"><?php echo $banner[0]["title"] ?></a></div>
               <div class="description"><?php echo $banner[0]["text"] ?></div>
            </div>
         </div>

         <div id="content">
            <div class="col">
               <div class="iklan1"><a href="<?php echo $iklan["iklan1"]["url"] ?>" target="_blank"><img alt="<?php echo $iklan["iklan1"]["title"] ?>" src="<?php echo BASE_URL.$iklan["iklan1"]["source"] ?>" /></a></div>

               <div class="table">
                  <div class="option">
                     <a class="selected" data="popular-new-cars"></a>
                     <a data="popular-car-used"></a>
                     <a data="new-car-launches"></a>
                  </div>
                  <div class="content">
                     <div class="tab popular-new-cars">
                        <div class="row1">
                           <div class="image"><a href="<?php echo $iklan["popularnewcars"]["url"] ?>" target="_blank"><img alt="<?php echo $iklan["popularnewcars"]["title"] ?>" src="<?php echo BASE_URL.$iklan["popularnewcars"]["source"] ?>" /></a></div>
                           <div class="title"><a href="<?php echo $iklan["popularnewcars"]["url"] ?>" target="_blank"><?php echo $iklan["popularnewcars"]["title"] ?></a></div>
                           <div class="text"><?php echo $iklan["popularnewcars"]["text"] ?></div>
                        </div>
                        <div class="row2">
                           <div class="title"><a href="#">POPULAR NEW CARS</a></div>
                           <div class="list">
                              <?php foreach($car_new_popular as $item_carnew) : ?>
                                 <a class="item" href="#">
                                    <div class="image" style="background-image:url(<?php echo BASE_URL.$item_carnew["carmodel"]["photo"]["thumb1"]["source"] ?>)"></div>
                                    <div class="text"><?php echo $item_carnew["carmaker"]["name"]." ".$item_carnew["carmodel"]["name"] ?></div>
                                 </a>
                              <?php endforeach; ?>
                              <div class="clear"></div>
                           </div>
                        </div>
                        <div class="clear"></div>
                     </div>

                     <div class="tab new-cars-launces hidden">
                        <div class="row1">
                           <div class="image"><a href="<?php echo $iklan["newcarslaunces"]["url"] ?>" target="_blank"><img alt="<?php echo $iklan["newcarslaunces"]["title"] ?>" src="<?php echo BASE_URL.$iklan["newcarslaunces"]["source"] ?>" /></a></div>
                           <div class="title"><a href="<?php echo $iklan["newcarslaunces"]["url"] ?>" target="_blank"><?php echo $iklan["newcarslaunces"]["title"] ?></a></div>
                           <div class="text"><?php echo $iklan["newcarslaunces"]["text"] ?></div>
                        </div>
                        <div class="row2">
                           <div class="title"><a href="#">NEW CAR LAUNCH</a></div>
                           <div class="list">
                              <?php foreach($car_new_launches as $item_carnew) : ?>
                                 <a class="item" href="#">
                                    <div class="image" style="background-image:url(<?php echo BASE_URL.$item_carnew["carmodel"]["photo"]["thumb1"]["source"] ?>)"></div>
                                    <div class="text"><?php echo $item_carnew["carmaker"]["name"]." ".$item_carnew["carmodel"]["name"] ?></div>
                                 </a>
                              <?php endforeach; ?>
                              <div class="clear"></div>
                           </div>
                        </div>
                        <div class="clear"></div>
                     </div>
                     <div class="tab new-car-promotion"></div>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="review">
                  <div class="title">CAR REVIEWS</div>
                  <div class="review1">
                     <div class="box-image"><a class="image" href="#" style="background-image:url(<?php echo BASE_URL.$review[0]["image"] ?>)" title="<?php echo $review[0]["title"] ?>">
                        <div class="review-title"><?php echo $review[0]["title"] ?></div>
                     </a></div>
                     <div class="desc"><?php echo strip_tags($review[0]["text"]) ?></div>
                  </div>
                  <div class="review2">
                     <a class="image" href="#" style="background-image:url(<?php echo BASE_URL.$review[1]["image"] ?>)" title="<?php echo $review[1]["title"] ?>"></a>
                     <div class="desc">
                        <div class="review-title"><a href="#" title="<?php echo $review[1]["title"] ?>"><?php echo $review[1]["title"] ?></a></div>
                        <div class="review-desc"><?php echo substr(trim(strip_tags($review[1]["text"])), 0, 50) ?></div>
                     </div>
                     <div class="clear"></div>
                  </div>
               </div>
               <div class="clear"></div>
            </div>

            <?php /*
            <div class="col2">
               <div class="latest-promo">
                  <div class="title"><a href="#">LATEST PROMO</a></div>
                  <div class="promo">
                     <div class="item-promo col-xs-4">
                        <a class="image" href="#" style="background-image:url(<?php echo BASE_URL ?>images/promo/promo1.png)">
                           <div class="day-left" style="background:#107f08">20 DAYS LEFT</div>
                        </a>
                        <div class="bot">
                           <div class="car-logo"><a href="#"><img src="<?php echo BASE_URL ?>images/car-logo/mazda.png" /></a></div>
                           <div class="car-name"><a href="#">NEW MAZDA 2 HATCHBACK</a></div>
                           <div class="clear"></div>
                        </div>
                     </div>
                     <div class="item-promo col-xs-4">
                        <a class="image" href="#" style="background-image:url(<?php echo BASE_URL ?>images/promo/promo1.png)">
                           <div class="day-left" style="background:#107f08">20 DAYS LEFT</div>
                        </a>
                        <div class="bot">
                           <div class="car-logo"><a href="#"><img src="<?php echo BASE_URL ?>images/car-logo/mazda.png" /></a></div>
                           <div class="car-name"><a href="#">NEW MAZDA 2 HATCHBACK</a></div>
                           <div class="clear"></div>
                        </div>
                     </div>
                     <div class="item-promo last col-xs-4">
                        <a class="image" href="#" style="background-image:url(<?php echo BASE_URL ?>images/promo/promo1.png)">
                           <div class="day-left" style="background:#107f08">20 DAYS LEFT</div>
                        </a>
                        <div class="bot">
                           <div class="car-logo"><a href="#"><img src="<?php echo BASE_URL ?>images/car-logo/mazda.png" /></a></div>
                           <div class="car-name"><a href="#">NEW MAZDA 2 HATCHBACK</a></div>
                           <div class="clear"></div>
                        </div>
                     </div>
                     <div class="clear"></div>
                  </div>
               </div>
            </div>
            */ ?>

            <div class="col3">
               <div class="forum">
                  <div class="title"><a href="#">FORUM</a></div>
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

               <div class="blog">
                  <div class="title"><a>LATEST BLOG POSTS</a></div>
                  <div class="box-blog">
                     <div class="item">
                        <a class="image" style="background-image:url(<?php echo BASE_URL ?>images/blog/1.png)"></a>
                        <div class="blog-det">
                           <div><a class="blog-title">Unveils new navigation unit</a></div>
                           <div>Racks Up Another Very Positive Review D5 and T8 Plug-In Tested</div>
                        </div>
                     </div>
                     <div class="item">
                        <a class="image" style="background-image:url(<?php echo BASE_URL ?>images/blog/1.png)"></a>
                        <div class="blog-det">
                           <div><a class="blog-title">Unveils new navigation unit</a></div>
                           <div>Racks Up Another Very Positive Review D5 and T8 Plug-In Tested</div>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="clear"></div>
            </div>

            <div id="subscribe">
               <div class="icon"></div>
               <div class="content-subscribe">
                  <div class="title">REGISTER FOR ALERT</div>
                  <div class="desc">Do you want to be the first to know about the latest automotive deals?<br/>Just subsrtibe with your email address and we will send you allert on the most incredible deals as the happen</div>
                  <div class="input-email">
                     <form>
                        <input name="post-email" type="text" placeholder="Email Address" />
                        <input type="submit" value="SUBSCRIBE" />
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="<?php echo BASE_URL ?>js/bootstrap.min.js"></script>

      <?php include_once "js/configjs.php"; ?>
      <script type="text/javascript">
         var banner = <?php echo json_encode($banner) ?>;      
      </script>

      <script src="<?php echo BASE_URL ?>js/index/inc/banner-animation.js"></script>
      <script src="<?php echo BASE_URL ?>js/index/inc/car-maker.js"></script>
      <script src="<?php echo BASE_URL ?>js/index/inc/new-cars.js"></script>
      <script src="<?php echo BASE_URL ?>js/index/inc/forum.js"></script>
      <script src="<?php echo BASE_URL ?>js/index/inc/subscribe.js"></script>
      <script src="<?php echo BASE_URL ?>js/index/index.js"></script>
   </body>
</html>
