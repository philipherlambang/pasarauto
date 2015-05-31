<?php
	class tips_and_trick extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_data($id_category, $start=0, $limit=10) {
			$return = [];
			
			$sql = sprintf("SELECT `id_tips`, `image`, `title`, `small_desc`, `date`
				FROM `tips`
				WHERE `id_category` = '%d'
				LIMIT %d, %d",
				$this->connection->real_escape_string($id_category),
				$this->connection->real_escape_string($start),
				$this->connection->real_escape_string($limit));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$temp_return = [];

				$temp_return["id_tips"] = $data->id_tips;
				$temp_return["image"] = $data->image;
				$temp_return["title"] = $data->title;
				$temp_return["small_desc"] = $data->small_desc;
				$temp_return["date"] = $data->date;

				array_push($return, $temp_return);
			}
			return $return;
		}
	}