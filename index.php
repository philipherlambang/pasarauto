<?php
	new controller();

	class controller {
		protected $data;

		public function __construct() {
			$this->include_function();
                     
			$urlAction = isset($_GET['action']) ? $_GET['action'] : null;
            if(!isset($_GET['action'])) {
            	$this->get_banner();
                $this->get_iklan();
                $this->get_car_maker();
                $this->get_car_new();
                $this->get_review();
                $this->get_forum();
            	$this->generate_html();
            }

            else if($_GET["action"] == "subscribe" && !empty($_GET["email"])) {
            	$this->insert_subscribe();            	
            }

            else if($_GET["action"] == "get_car_model" && !empty($_GET["id_carmaker"])) {
                $this->get_car_model();
            }
        }

        public function include_function() {
        	require_once "config.php";
        	require_once BASE_DIR."/class/db.php";

        	require_once BASE_DIR."/class/banner.php";
            require_once BASE_DIR."/class/car_maker.php";
            require_once BASE_DIR."/class/car_new.php";
            require_once BASE_DIR."/class/car_model.php";
            require_once BASE_DIR."/class/forum.php";
            require_once BASE_DIR."/class/general.php";
            require_once BASE_DIR."/class/iklan.php";
            require_once BASE_DIR."/class/review.php";
        	require_once BASE_DIR."/class/subscribe.php";
        }

        public function get_banner() {
        	$c_banner = new banner();

        	$this->data["banner"] = $c_banner->get_banner($page="index");
        }

        public function get_iklan() {
            $c_iklan = new iklan();

            $this->data["iklan"] = $c_iklan->get_iklan($page="index");
        }

        public function get_car_maker() {
            $c_carMaker = new car_maker();

            $this->data["car_maker"] = $c_carMaker->get_car_maker();
        }

        public function get_car_new() {
            $c_carNew = new car_new();

            $this->data["car_new_popular"] = $c_carNew->get_newcar_popular($limit=10, $need_photo=true);
            $this->data["car_new_launches"] = $c_carNew->get_newcar_launches($limit=10, $need_photo=true);
        }

        public function get_review() {
            $c_review = new review();

            $this->data["review"] = $c_review->get_review($limit=2);
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

        	require_once BASE_DIR."/view/index.php";
        }

        public function insert_subscribe() {
        	$return["t"] = 0;

        	$email = filter_input(INPUT_GET, 'email');
        	if(!filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
				$c_subscribe = new subscribe();

        		$c_subscribe->insert_subscribe($email);

                $return["t"] = 1;
			} 
			else {
				$return["msg"] = "Please enter valid email address";
			}
			echo json_encode($return);
        }

        public function get_car_model() {
            $return["t"] = 0;

            $id_carmaker = filter_input(INPUT_GET, 'id_carmaker');
            if(!filter_var($id_carmaker, FILTER_VALIDATE_INT) === false) {
                $c_carModel = new car_model();

                $data = $c_carModel->get_car_model($id_carmaker);
                $return["car_model"] = $data;
            }
            echo json_encode($return);
        }
	}