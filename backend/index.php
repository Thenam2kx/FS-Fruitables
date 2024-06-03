<?php
require_once __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();
// echo $_ENV['BASE_URL'];

require_once __DIR__ .'/routes/index.php';


