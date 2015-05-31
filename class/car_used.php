<?php
	class car_used extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function count_used_car($maker, $model, $min_year, $max_year, $min_price, $max_price) {
			$sql_carmaker = $sql_carmodel = $sql_minprice = $sql_maxprice = "";
			$return = false;
			$ctr = 0;

			if($maker != "") $sql_carmaker = " AND cma.`id_carmaker` = '".$maker."' ";
			if($model != "") $sql_carmodel = " AND cmo.`id_carmodel` = '".$model."' ";
			if($min_price != "") $sql_minprice = " AND `price` > '".$min_price."' ";
			if($max_price != "") $sql_maxprice = " AND `price` < '".$max_price."' ";

			$sql = sprintf("SELECT `id_carused`, `photo`, `price`, `condition`, `mileage`, `transmisi`, `tahun`, `tags`, cu.`date_added`, `desc`, `title`,
				`submodelname`,
				`maker_name`,
				`body_name`,
				u.`fname`
				FROM `car_used` cu 
				INNER JOIN `car_submodel` csm ON csm.`id_carsubmodel` = cu.`id_carsubmodel` 
				INNER JOIN `car_model` cmo ON cmo.`id_carmodel` = csm.`id_carmodel`
				INNER JOIN `car_maker` cma ON cma.`id_carmaker` = cmo.`id_carmaker` 
				INNER JOIN `car_body` cb ON cb.`id_carbody` = csm.`id_carbody`
				INNER JOIN `user` u ON u.`id_user` = cu.`id_user`
				WHERE `tahun` > '".$min_year."' AND 
				`tahun` < '".$max_year."' 
				".$sql_carmaker.$sql_carmodel.$sql_minprice.$sql_maxprice."
				ORDER BY cu.`date_added` DESC");
			$exec = $this->connection->query($sql);
			$num = $exec->num_rows;
			return $num;
		}

		public function get_used_car($maker, $model, $min_year, $max_year, $min_price, $max_price, $start=0, $limit=10) {
			$sql_carmaker = $sql_carmodel = $sql_minprice = $sql_maxprice = "";
			$return = false;
			$ctr = 0;

			if($maker != "") $sql_carmaker = " AND cma.`id_carmaker` = '".$maker."' ";
			if($model != "") $sql_carmodel = " AND cmo.`id_carmodel` = '".$model."' ";
			if($min_price != "") $sql_minprice = " AND `price` > '".$min_price."' ";
			if($max_price != "") $sql_maxprice = " AND `price` < '".$max_price."' ";

			$sql = sprintf("SELECT `id_carused`, `photo`, `price`, `condition`, `mileage`, `transmisi`, `tahun`, `tags`, cu.`date_added`, `desc`, `title`,
				`submodelname`,
				`maker_name`,
				`body_name`,
				u.`fname`
				FROM `car_used` cu 
				INNER JOIN `car_submodel` csm ON csm.`id_carsubmodel` = cu.`id_carsubmodel` 
				INNER JOIN `car_model` cmo ON cmo.`id_carmodel` = csm.`id_carmodel`
				INNER JOIN `car_maker` cma ON cma.`id_carmaker` = cmo.`id_carmaker` 
				INNER JOIN `car_body` cb ON cb.`id_carbody` = csm.`id_carbody`
				INNER JOIN `user` u ON u.`id_user` = cu.`id_user`
				WHERE `tahun` > '".$min_year."' AND 
				`tahun` < '".$max_year."' 
				".$sql_carmaker.$sql_carmodel.$sql_minprice.$sql_maxprice."
				ORDER BY cu.`date_added`
				LIMIT %d, %d",
				$this->connection->real_escape_string($start),
				$this->connection->real_escape_string($limit));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["carused"]["id"] = $data->id_carused;
				$return[$ctr]["carused"]["photo"] = json_decode($data->photo);
				$return[$ctr]["carused"]["price"] = $data->price;
				$return[$ctr]["carused"]["condition"] = $data->condition;
				$return[$ctr]["carused"]["mileage"] = $data->mileage;
				$return[$ctr]["carused"]["transmisi"] = $data->transmisi;
				$return[$ctr]["carused"]["tahun"] = $data->tahun;
				$return[$ctr]["carused"]["tags"] = $data->tags;
				$return[$ctr]["carused"]["date_added"] = $data->date_added;
				$return[$ctr]["carused"]["title"] = $data->title;
				$return[$ctr]["carused"]["desc"] = $data->desc;

				$return[$ctr]["car_submodel"]["name"] = $data->submodelname;

				$return[$ctr]["car_maker"]["name"] = $data->maker_name;		

				$return[$ctr]["car_body"]["name"] = $data->body_name;

				$return[$ctr]["user"]["fname"] = $data->fname;
				$ctr++;
			}
			return $return;
		}
	}