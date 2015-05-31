<?php
	new controller();

	class controller {
        protected $get_data;
		protected $data;

		public function __construct() {
			$this->include_function();

            $this->get_data();

            $this->get_search_data();
            $this->calculate_page();
            $this->generate_html();
        }

        public function include_function() {
        	require_once "config.php";
        	require_once BASE_DIR."/class/db.php";

            require_once BASE_DIR."/class/car_used.php";            
        }

        public function get_data() {
            $this->get_data["id_carmaker"] = filter_input(INPUT_GET, 'post-maker');
            $this->get_data["id_carmodel"] = filter_input(INPUT_GET, 'post-model');
            $this->get_data["min_year"] = filter_input(INPUT_GET, 'post-minyear');
            $this->get_data["max_year"] = filter_input(INPUT_GET, 'post-maxyear');
            $this->get_data["min_price"] = filter_input(INPUT_GET, 'post-minprice');
            $this->get_data["max_price"] = filter_input(INPUT_GET, 'post-maxprice');

            $this->data["id_carmaker"] = $this->get_data["id_carmaker"];
            $this->data["id_carmodel"] = $this->get_data["id_carmodel"];
            $this->data["min_year"] = $this->get_data["min_year"];
            $this->data["max_year"] = $this->get_data["max_year"];
            $this->data["min_price"] = $this->get_data["min_price"];
            $this->data["max_price"] = $this->get_data["max_price"];

            $this->get_data["page"] = (empty(filter_input(INPUT_GET, 'page')) ? "1" : filter_input(INPUT_GET, 'page'));
        }

        public function get_search_data() {
            $c_carused = new car_used();

            $start = ($this->get_data["page"] - 1) * 10;
            $this->data["search_result"] = $c_carused->get_used_car(
                $maker = $this->get_data["id_carmaker"], 
                $model = $this->get_data["id_carmodel"], 
                $min_year = $this->get_data["min_year"], 
                $max_year = $this->get_data["max_year"], 
                $min_price = $this->get_data["min_price"], 
                $max_price = $this->get_data["max_price"],
                $start = $start,
                $limit = 10
            );
        }

        public function calculate_page() {
            $c_carused = new car_used();

            $total_data = $c_carused->count_used_car(
                $maker = $this->get_data["id_carmaker"], 
                $model = $this->get_data["id_carmodel"], 
                $min_year = $this->get_data["min_year"], 
                $max_year = $this->get_data["max_year"], 
                $min_price = $this->get_data["min_price"], 
                $max_price = $this->get_data["max_price"]
            );
            $total_page = ceil($total_data / 10);

            $this->data["curr_page"] = $this->get_data["page"];
            $this->data["start_page"] = ($this->data["curr_page"] - 3 <= 1) ? 1 :  $this->data["curr_page"] - 3;
            $this->data["max_page"] = ($total_page < $this->data["curr_page"] + 3) ? $total_page : $this->data["curr_page"] + 5;
        }

        public function generate_html() {
        	//echo "<pre>";
        	//print_r($this->data);
        	//echo "</pre>";

        	extract($this->data);

        	require_once BASE_DIR."/view/search.php";
        }
	}