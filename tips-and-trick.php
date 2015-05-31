<?php
	new controller();

	class controller {
		protected $data;

		public function __construct() {
			$this->include_function();

            $this->get_banner();
            $this->get_category();
            $this->generate_html();
        }

        public function include_function() {
        	require_once "config.php";
        	require_once BASE_DIR."/class/db.php";

            require_once BASE_DIR."/class/banner.php";
            require_once BASE_DIR."/class/tips_and_trick_category.php";
        }

        public function get_banner() {
            $c_banner = new banner();

            $this->data["banner"] = $c_banner->get_banner($page="tips-and-trick");
        }

        public function get_category() {
            $c_tips_and_trick_category = new tips_and_trick_category();

            $this->data["category"] = $c_tips_and_trick_category->get_category();
        }

        public function generate_html() {
        	//echo "<pre>";
        	//print_r($this->data);
        	//echo "</pre>";

        	extract($this->data);

        	require_once BASE_DIR."/view/tips-and-trick.php";
        }
	}