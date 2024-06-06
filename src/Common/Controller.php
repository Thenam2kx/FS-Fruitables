<?php
namespace Admin\Fruitables\Common;
use eftec\bladeone\BladeOne;
class Controller {
  public function renderClient($view, $data) {
    $templatePath = __DIR__ . '/../Views/Client';
    $compiledPath = __DIR__ . '/../Views/Compiles';
    $blade = new BladeOne($templatePath, $compiledPath);

    echo $blade->run($view, $data);
  }

  public function renderAdmin($view, $data) {
    $templatePath = __DIR__ . '/../Views/Admin';
    $compiledPath = __DIR__ . '/../Views/Compiles';
    $blade = new BladeOne($templatePath, $compiledPath);

    echo $blade->run($view, $data);
  }
}