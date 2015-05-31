<?php
	class tips_and_trick_category extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_category($id_parent=0) {
			$return = [];
			$sql_parent = "";

			$sql = sprintf("SELECT `id_category`, `category`, `image`, `id_parent`
				FROM `tips_category`
				WHERE `id_parent` = '%d'",
				$this->connection->real_escape_string($id_parent));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$temp_return = [];

				$temp_return["id_category"] = $data->id_category;
				$temp_return["category"] = $data->category;
				$temp_return["image"] = $data->image;
				$temp_return["subcategory"] = $this->get_category($data->id_category);

				array_push($return, $temp_return);
			}
			return $return;
		}

		public function get_category_detail($id_category) {
			$return = [];

			$sql = sprintf("SELECT `category`, `id_category`, `id_parent`
				FROM `tips_category`
				WHERE `id_category` = '%d'",
				$this->connection->real_escape_string($id_category));
			$exec = $this->connection->query($sql);
			$data = $exec->fetch_object();

			$return["id_category"] = $data->id_category;
			$return["id_parent"] = $data->id_parent;
			$return["category"] = $data->category;
			
			return $return;
		}
	}