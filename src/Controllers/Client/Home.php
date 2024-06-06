<?php
namespace Admin\Fruitables\Controllers\Client;

use Admin\Fruitables\Common\Controller;
use Admin\Fruitables\Common\Helper;
use Admin\Fruitables\Models\Product;

class Home extends Controller {
  public function index() {

    $data = [
      'templatePath' => '$templatePath',
      'compiledPath' => '$compiledPath',
    ];


    $this->renderClient('HomeView', $data);

  }

  public function about() {
    echo 'day la about me client';
  }
}