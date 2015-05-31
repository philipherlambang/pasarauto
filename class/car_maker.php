<?php
	class car_maker extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_car_maker() {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `id_carmaker`, `maker_name`, `logo` FROM `car_maker` WHERE `show` = '1' ORDER BY `maker_name` ASC");
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["id"] = $data->id_carmaker;
				$return[$ctr]["name"] = $data->maker_name;
				$return[$ctr]["logo"] = $data->logo;

				$ctr++;
			}
			return $return;
		}
	}