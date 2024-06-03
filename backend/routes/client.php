<?php

$router->get('/', function () {
  echo 'Home';
});

$router->get('/about', function () {
  echo 'About me';
});

$router->get('/contact', function () {
  echo 'Contact me';
});