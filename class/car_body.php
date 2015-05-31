<?php
	class car_body extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_car_body() {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `id_carbody`, `body_name`, `image` FROM `car_body` ORDER BY `body_name` ASC");
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["id"] = $data->id_carbody;
				$return[$ctr]["name"] = $data->body_name;
				$return[$ctr]["image"] = $data->image;

				$ctr++;
			}
			return $return;
		}
	}