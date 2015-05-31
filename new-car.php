<?php
	new controller();

	class controller {
		protected $data;

		public function __construct() {
			$this->include_function();
                     
            $this->get_banner();
            $this->get_car_maker();
            $this->get_car_body();
            $this->get_review();
            $this->get_forum();
			$this->generate_html();
        }

        public function include_function() {
        	require_once "config.php";
        	require_once BASE_DIR."/class/db.php";

            require_once BASE_DIR."/class/banner.php";
            require_once BASE_DIR."/class/car_body.php";
            require_once BASE_DIR."/class/car_maker.php";
            require_once BASE_DIR."/class/forum.php";
            require_once BASE_DIR."/class/general.php";
            require_once BASE_DIR."/class/review.php";
            require_once BASE_DIR."/class/review-customer.php";
        }

        public function get_banner() {
            $c_banner = new banner();

            $this->data["banner"] = $c_banner->get_banner($page="new-car");
        }

        public function get_car_maker() {
            $c_carMaker = new car_maker();

            $this->data["car_maker"] = $c_carMaker->get_car_maker();
        }

        public function get_car_body() {
            $c_carBody = new car_body();

            $this->data["car_body"] = $c_carBody->get_car_body();
        }

        public function get_review() {
            $c_customer_review = new customer_review();
            $c_review = new review();

            $this->data["customer_review"] = $c_customer_review->get_review($limit=3);
            $this->data["web_review"] = $c_review->get_review($limit=1);
        }

        public function get_forum() {
            $c_forum = new forum();

            $this->data["forum"] = $c_forum->get_forum();
        }

        public function generate_html() {
        	//echo "<pre>";
        	//print_r($this->data);
        	//echo "</pre>";

        	extract($this->data);

        	require_once BASE_DIR."/view/new-car.php";
        }
	}