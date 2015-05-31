<?php
	class iklan extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_iklan($page) {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `type`, `source`, `title`, `text`, `url` FROM `iklan` WHERE `page` = '%s' AND `show` = '1'",
				$this->connection->real_escape_string($page));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$data->type]["source"] = $data->source;
				$return[$data->type]["title"] = $data->title;
				$return[$data->type]["text"] = $data->text;
				$return[$data->type]["url"] = $data->url;
				$ctr++;
			}
			return $return;
		}
	}