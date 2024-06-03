<?php
namespace Admin\Backend\Common;
class Helper {

  function debug($data) {
    echo "<pre>";
    print_r($data);
    die();
  }

}

