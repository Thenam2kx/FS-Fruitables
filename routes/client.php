<?php

use Admin\Fruitables\Controllers\Client\Home;

$router->get('/', Home::class .'@index');

$router->get('/about', function() {
  echo 'About me';
});

$router->get('/movies/{movieId}/photos(/\d+)?', function($movieId, $photoId = null) {
  echo 'Movie #' . $movieId . ', photo #' . $photoId;
});