<?php

$router->mount('/admin', function() use ($router) {

  // will result in '/admin/'
  $router->get('/', function() {
      echo 'admin overview';
  });

  $router->mount('/products', function() use ($router) {

    $router->get('/list', function() {
      echo 'products list';
    });

    $router->get('/create', function() {
      echo 'products create';
    });

    $router->get('/edit', function() {
      echo 'products edit';
    });

  });

});