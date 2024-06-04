<?php
namespace Admin\Backend\Controllers\Client;

use Admin\Backend\Common\Controller;

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