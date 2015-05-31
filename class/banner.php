<?php
	class banner extends db {
		public function __construct() {
			$this->open_connection();
		}

		public function get_banner($page) {
			$return = false;
			$ctr = 0;

			$sql = sprintf("SELECT `source`, `title`, `text`, `url` FROM `banner` WHERE `page` = '%s' AND `show` = '1'",
				$this->connection->real_escape_string($page));
			$exec = $this->connection->query($sql);
			while($data = $exec->fetch_object()) {
				$return[$ctr]["source"] = $data->source;
				$return[$ctr]["title"] = $data->title;
				$return[$ctr]["text"] = $data->text;
				$return[$ctr]["url"] = $data->url;
				$ctr++;
			}
			return $return;
		}
	}