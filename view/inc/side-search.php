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
      <input type="submit" value="SUBMIT" />
    </div>
  </form>
</div>