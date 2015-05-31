<?php
	new controller();

	class controller {
		protected $data;

		public function __construct() {
			$this->include_function();

            $this->get_banner();
            $this->get_category();
        }

        public function include_function() {
        	require_once "config.php";
        	require_once BASE_DIR."/class/db.php";

            require_once BASE_DIR."/class/banner.php";
            require_once BASE_DIR."/class/tips_and_trick.php";
            require_once BASE_DIR."/class/tips_and_trick_category.php";  
        }

        public function get_banner() {
            $c_banner = new banner();

            $this->data["banner"] = $c_banner->get_banner($page="tips-and-trick-category");
        }

        public function get_category() {
            $c_tips_and_trick_category = new tips_and_trick_category();

            $category = $c_tips_and_trick_category->get_category_detail($_GET["idcategory"]);
            if($category) {
                $this->data["parent_category"] = $c_tips_and_trick_category->get_category();
                if($category["id_parent"] == 0) $this->data["child_category"] = $c_tips_and_trick_category->get_category($category["id_category"]);
                else $this->data["child_category"] = $c_tips_and_trick_category->get_category($category["id_parent"]);
                $this->data["category"] = $category;
                
                $this->get_tips_and_trick_data();
                $this->generate_html();
            }
            else header("Location:".BASE_URL);
        }

        public function get_tips_and_trick_data() {
            $c_tips_and_trick = new tips_and_trick();

            $this->data["data_list"] = $c_tips_and_trick->get_data($_GET["idcategory"], $start=0, $limit=10);
        }

        public function generate_html() {
        	//echo "<pre>";
        	//print_r($this->data);
        	//echo "</pre>";

        	extract($this->data);

        	require_once BASE_DIR."/view/tips-and-trick-category.php";
        }
	}