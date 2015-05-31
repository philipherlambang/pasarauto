<?php
	class subscribe extends db {
		public function __construct() {
			$this->open_connection();
		}

		private function check_exists($email) {
			$sql = sprintf("SELECT `email` FROM `subscribe` WHERE `email` = '%s'",
				$this->connection->real_escape_string($email));
			$exec = $this->connection->query($sql);
			$num = $exec->num_rows;
			if($num > 0) return true;
			else return false;
		}

		public function insert_subscribe($email) {
			if(!$this->check_exists($email)) {
				$ip = $_SERVER["REMOTE_ADDR"];
				$date = date("Y-m-d H:i:s");

				$sql = sprintf("INSERT INTO `subscribe` (`email`, `ip`, `date`) VALUES ('%s', '%s', '%s')",
					$this->connection->real_escape_string($email),
					$this->connection->real_escape_string($ip),
					$this->connection->real_escape_string($date));
				$this->connection->query($sql);
			}
		}
	}