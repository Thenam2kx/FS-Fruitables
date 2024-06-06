<?php

$router->mount('/admin', function () use ($router) {
  $router->get('/',function() {
    echo 'admin';
  });


  $router->mount('/products', function () use ($router) {

    $router->get('/list',function() {
      echo 'prouct list';
    });

    $router->get('/create',function() {
      echo 'prouct create';
    });

    $router->get('/edit',function() {
      echo 'prouct edit';
    });

  });

});