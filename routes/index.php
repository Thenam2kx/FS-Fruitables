<?php

$router = new \Bramus\Router\Router();

include_once __DIR__ ."./admin.php";
include_once __DIR__ ."./client.php";

$router->run();