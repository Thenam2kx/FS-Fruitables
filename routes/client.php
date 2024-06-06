<?php

use Admin\Backend\Controllers\Client\Home;

$router->get('/', Home::class .'@index');
$router->get('/about', Home::class .'@about');

