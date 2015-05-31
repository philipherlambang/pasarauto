<?php
	class review extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_review($limit="all") {
			$return = false;
			$ctr = 0;

			$sql_added = ($limit == "all") ? "" : " LIMIT 0,".$limit; 
			$sql = sprintf("SELECT `id_review`, `title`, `image`, `text`, `date` 
				FROM `review` 
				WHERE `show` = '1'
				ORDER BY `date` DESC".$sql_added);
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["id"] = $data->id_review;
				$return[$ctr]["title"] = $data->title;
				$return[$ctr]["image"] = $data->image;
				$return[$ctr]["text"] = $data->text;
				$return[$ctr]["date"] = $data->date;
				$ctr++;
			}
			return $return;
		}
	}