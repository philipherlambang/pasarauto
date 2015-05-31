<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pasar Auto - Search</title>

      <!-- Bootstrap -->
      <link href="<?php echo BASE_URL ?>css/bootstrap.min.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/global.css" rel="stylesheet" />
      <link href="<?php echo BASE_URL ?>css/page/search.css" rel="stylesheet" />

      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <div id="container">
         <div id="banner" style="background-image:url(<?php echo BASE_URL ?>images/banner/3.jpg)">
            <?php include_once BASE_DIR."/view/inc/header.php"; ?>

            <div id="side-search">
               <form action="search.php">
                  <div class="item">
                     <div class="title">MAKER</div>
                     <div class="input">
                        <select name="post-maker">
                           <option value="">ANY MAKER</option>
                           <?php foreach($car_maker as $item_carMaker) : ?>
                              <option value="<?php echo $item_carMaker["id"] ?>"><?php echo $item_carMaker["name"] ?></option>
                           <?php endforeach; ?>
                        </select>
                     </div>
                  </div>

                  <div class="item">
                     <div class="title">MODEL</div>
                     <div class="input">
                        <select name="post-model">
                           <option value="">ANY MODEL</option>
                        </select>
                     </div>
                  </div>

                  <div class="item min-year">
                     <div class="title">MIN YEAR</div>
                     <div class="input">
                        <select name="post-minyear">
                           <?php for($year = 1990; $year <= date("Y"); $year++) : ?>
                              <option value="<?php echo $year ?>"><?php echo $year ?></option>
                           <?php endfor; ?>
                        </select>
                     </div>
                  </div>

                  <div class="item">
                     <div class="title">MAX YEAR</div>
                     <div class="input">
                        <select name="post-maxyear">
                           <?php for($year = 1990; $year <= date("Y"); $year++) : ?>
                              <option value="<?php echo $year ?>"<?php echo ($year == date("Y")) ? " selected" : "" ?>><?php echo $year ?></option>
                           <?php endfor; ?>
                        </select>
                     </div>
                  </div>

                  <div class="item">
                     <div class="title">MIN PRICE</div>
                     <div class="input">
                        <select name="post-minprice">
                           <option value="">ANY PRICE</option>
                           <option value="50000000">Rp. <?php echo number_format(50000000, 2, ',', ' '); ?></option>
                           <?php for($price = 100000000; $price <= 1000000000; $price = $price + 100000000) : ?>
                              <option value="<?php echo $price ?>">Rp. <?php echo number_format($price, 2, ',', ' '); ?></option>
                           <?php endfor; ?>
                        </select>
                     </div>
                  </div>

                  <div class="item max-price">
                     <div class="title">MAX PRICE</div>
                     <div class="input">
                        <select name="post-maxprice">
                           <option value="">ANY PRICE</option>
                           <option value="50000000">Rp. <?php echo number_format(50000000, 2, ',', ' '); ?></option>
                           <?php for($price = 100000000; $price <= 1000000000; $price = $price + 100000000) : ?>
                              <option value="<?php echo $price ?>">Rp. <?php echo number_format($price, 2, ',', ' '); ?></option>
                           <?php endfor; ?>
                        </select>
                     </div>
                  </div>

                  <div class="submit">
                     <input type="submit" value="REFINE SEARCH" />
                  </div>
              </form>
            </div>
         </div>

         <div id="content">
            <div id="promotion">
               <div class="box-button">
                  <a class="selected" href="#" data="new-car">NEW CAR</a>
                  <a href="#" data="used-car">USED CAR</a>
                  <a href="#" data="articles">ARTICLES</a>
               </div>
               <div class="content">
                  <div class="page new-car">
                     <div class="main-image" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1-main.jpg)">
                        <div class="shadow">
                           <a class="btn-promotion" href="#"></a>
                           <div class="text">
                              <div class="carname">BMW 3 SERIES CONVERTIBLE</div>
                              <div class="price">Rp. 1.224.200.000</div>
                           </div>
                           <div class="icon-new"></div>
                        </div>
                     </div>
                     <div class="thumb-photo">
                        <div class="title">6 images found</div>
                        <div class="photo">
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1a.jpg)"></div>
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1b.jpg)"></div>
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1c.jpg)"></div>
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1d.jpg)"></div>
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1e.jpg)"></div>
                           <div class="thumb" style="background-image:url(<?php echo BASE_URL ?>images/newcar/1f.jpg)"></div>
                        </div>
                     </div>
                     <div class="desc">
                        <div class="title">Retractable hardtop</div>
                        <div class="content-desc">
                           <p>Here comes the sun: the retractable hardtop disappears in just 23 seconds. The optimally designed windblock leaves the driver and passenger plenty of freedom to enjoy a pure and exhilarating open-air experience. And the hardtop closes just as quickly as the weather can change.</p>
                           <p><a>Read More</a></p>
                           <p>
                              dijual oleh : <br/>
                              BMW Pluit<br/>
                              Jl. Raya Pluit Selatan No.6 Jakarta 14450<br/>
                              Telp. (021) 6622000 / 6672000<br/>
                              Fax. (021) 6603526
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="page used-car hidden"></div>
                  <div class="page articles-car hidden"></div>
               </div>
            </div>

            <div id="search-result">
               <div class="top">
                  <div class="col1">RESULT</div>
                  <div class="col2">DATE</div>
                  <div class="col3">MAKER</div>
                  <div class="col4">MODEL</div>
                  <div class="col5">TAHUN</div>
                  <div class="col6">PRICE</div>
                  <div class="col7">TRANSMISI</div>
                  <div class="col8">KM</div>
                  <div class="col9">VEH TYPE</div> 
               </div>
               <div class="result">
                  <?php $ctr = 0; ?>
                  <?php foreach($search_result as $item_result) : ?>
                     <?php $ctr++; ?>
                     <div class="item <?php echo ($ctr%2==0) ? "even" : "odd" ?>">
                        <div class="photo" style="background-image:url(<?php echo BASE_URL ?>images/usedcar/<?php echo $item_result["carused"]["photo"][0] ?>)"></div>
                        <div class="detail">
                           <div class="top-detail">
                              <div class="box-date"><?php echo date("d M Y", strtotime($item_result["carused"]["date_added"])) ?></div>
                              <div class="box-maker"><?php echo $item_result["car_maker"]["name"] ?></div>
                              <div class="box-model"><?php echo $item_result["car_submodel"]["name"] ?></div>
                              <div class="box-tahun"><?php echo $item_result["carused"]["tahun"] ?></div>
                              <div class="box-price">Rp. <?php echo number_format($item_result["carused"]["price"]) ?></div>
                              <div class="box-transmisi"><?php echo $item_result["carused"]["transmisi"] ?></div>
                              <div class="box-mileage"><?php echo $item_result["carused"]["mileage"] ?></div>
                              <div class="box-body"><?php echo $item_result["car_body"]["name"] ?></div>
                           </div>

                           <div class="desc"><?php echo strip_tags($item_result["carused"]["title"]) ?></div>
                           <div class="box-user">Posted By : <?php echo $item_result["user"]["fname"] ?></div>
                           <div class="tag">Tags : <?php echo $item_result["carused"]["tags"] ?></div>
                           <div class="box-btndetail"><a href="<?php echo BASE_URL ?>used-car/<?php echo $item_result[""] ?>">DETAILS</a></div>
                        </div>
                     </div>
                  <?php endforeach; ?>
               </div>
            </div>

            <nav id="pagination">
               <ul class="pagination">
                  <?php for($i=$start_page; $i<=$max_page; $i++) : ?>
                     <li<?php echo ($i == $curr_page) ? " class='active' " : "" ?> ><a href="<?php echo BASE_URL ?>search.php?post-maker=<?php echo $id_carmaker ?>&post-model=<?php echo $id_carmodel ?>&post-minyear=<?php echo $min_year ?>&post-maxyear=<?php echo $max_year ?>&post-minprice=<?php echo $min_price ?>&post-maxprice=<?php echo $max_price ?>&page=<?php echo $i ?>"><?php echo $i ?></a></li>
                  <?php endfor; ?>
               </ul>
            </nav>
         </div>
      </div>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="<?php echo BASE_URL ?>js/bootstrap.min.js"></script>

      <?php include_once "js/configjs.php"; ?>
   </body>
</html>
