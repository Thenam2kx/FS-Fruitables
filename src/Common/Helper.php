<?php
namespace Admin\Fruitables\Common;
class Helper {

  public static function debug ($data) {
    echo '<pre/>';

    print_r($data);

    die();
  }

}