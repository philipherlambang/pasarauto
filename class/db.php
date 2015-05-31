<?php
class db {
    protected $connection;
    protected $db;

    private function close_connection() {
        $this->connection->close();
    }

    public function open_connection() {
        $this->connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_MASTER);
        $this->connection->query("SET character_set_client=utf8");
        $this->connection->query("SET character_set_connection=utf8");
        $this->connection->query("SET NAMES utf8");
    }
}