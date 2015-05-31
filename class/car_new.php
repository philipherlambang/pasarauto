<?php
	class car_new extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_newcar_popular($limit="all", $need_photo=true) {
			$return = false;
			$ctr = 0;

			$sql_added = ($limit == "all") ? "" : " LIMIT 0,".$limit; 
			$sql = sprintf("SELECT cm.`id_carmodel`, cm.`model_name`,
				cma.`maker_name`
				FROM `car_model` cm 
				INNER JOIN `car_submodel` csm ON csm.`id_carmodel` = cm.`id_carmodel`
				INNER JOIN `car_new` cn ON cn.`id_carsubmodel` = csm.`id_carsubmodel`
				INNER JOIN `car_maker` cma ON cma.`id_carmaker` = cm.`id_carmaker`
				WHERE cm.`show` = '1'
				GROUP BY cm.`id_carmodel`
				ORDER BY cm.`viewed` DESC". $sql_added);
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["carmodel"]["id"] = $data->id_carmodel;
				$return[$ctr]["carmodel"]["name"] = $data->model_name;

				$return[$ctr]["carmaker"]["name"] = $data->maker_name;				
				if($need_photo) {
					$return[$ctr]["carmodel"]["photo"] = $this->get_photo_newcar($data->id_carmodel);
				}

				$ctr++;
			}
			return $return;
		}

		public function get_newcar_launches($limit="all", $need_photo=true) {
			$return = false;
			$ctr = 0;

			$sql_added = ($limit == "all") ? "" : " LIMIT 0,".$limit; 
			$sql = sprintf("SELECT cm.`id_carmodel`, cm.`model_name`,
				cma.`maker_name`
				FROM `car_model` cm 
				INNER JOIN `car_submodel` csm ON csm.`id_carmodel` = cm.`id_carmodel`
				INNER JOIN `car_new` cn ON cn.`id_carsubmodel` = csm.`id_carsubmodel`
				INNER JOIN `car_maker` cma ON cma.`id_carmaker` = cm.`id_carmaker`
				WHERE cm.`show` = '1'
				GROUP BY cm.`id_carmodel`
				ORDER BY cn.`date` DESC". $sql_added);
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["carmodel"]["id"] = $data->id_carmodel;
				$return[$ctr]["carmodel"]["name"] = $data->model_name;

				$return[$ctr]["carmaker"]["name"] = $data->maker_name;				
				if($need_photo) {
					$return[$ctr]["carmodel"]["photo"] = $this->get_photo_newcar($data->id_carmodel);
				}

				$ctr++;
			}
			return $return;
		}

		private function get_photo_newcar($id_carmodel) {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `source`, `type`
				FROM `car_newphoto`
				WHERE `id_carmodel` = '%d' AND `show` = '1'",
				$this->connection->real_escape_string($id_carmodel));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				if($data->type == "thumb1") {
					$return["thumb1"]["source"] = $data->source;
				}

				else {
					$return["etc"][$ctr]["source"] = $data->source;
					$ctr++;
				}
			}
			return $return;
		}
	}