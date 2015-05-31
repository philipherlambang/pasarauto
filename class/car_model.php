<?php
	class car_model extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_car_model($id_carmaker) {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `id_carmodel`, `model_name` FROM `car_model` WHERE `show` = '1' AND `id_carmaker` = '%d' ORDER BY `model_name` ASC",
				$this->connection->real_escape_string($id_carmaker));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["id"] = $data->id_carmodel;
				$return[$ctr]["name"] = $data->model_name;

				$ctr++;
			}
			return $return;
		}
	}