<?php
class Database {
  protected $host = 'localhost';
  protected $dbname = 'Fruitables';
  protected $username = 'root';
  protected $password = '';
  public $conn;

  public function __construct() {
    try {
      $this->conn = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->username, $this->password);
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      echo "connect thanh cong";
    } catch (PDOException $e) {
      echo "Connection Fail: ".$e->getMessage();
    }
  }

  public function __destruct() {
    $this->conn = null;
  }
}