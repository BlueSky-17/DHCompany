<?php
$users = array(
  'error' => ['errors'],
  'normal' => ['layouts', 'about', 'services', 'blog', 'archive', 'contact', 'login', 'register'],
  'admin' => ['layouts', 'members', 'products', 'news', 'comments', 'admin', 'login', 'user', 'branch']
);
$controllers = array(
  //Admin controller
  'errors' => ['index'],
  'layouts' => ['index'], 
  'members' => ['index'],
  'products' => ['index','add','edit','delete'],
  'news' => ['index','add','edit','delete','hide'],
  'comments' => ['index','hide','add','edit','delete'],
  'admin' => ['index', 'add', 'edit', 'delete'],
  'user' => ['index', 'add', 'editInfo', 'editPass', 'delete'],
  'branch' => ['index', 'add', 'edit', 'delete'],
  'login' => ['index', 'check', 'logout'],

  //Normal user controller
  'about' => ['index'],
  'blog' => ['index'],
  'archive' => ['index'],
  'contact' => ['index'],
  'blog' => ['index', 'comment', 'reply'],
  'services' => ['index'],
  'register' => ['index', 'submit', 'editInfo']
); 

if (!array_key_exists($user, $users) || !array_key_exists($controller, $controllers) || !in_array($action, $controllers[$controller])) {
  $user = 'error';
  $controller = 'errors';
  $action = 'index';
}

if ($user == 'error') {
  include_once('controllers/errorsController.php');
}
else {
  include_once('controllers/' .$user ."/" . $controller . 'Controller.php');
}

$klass = str_replace('_', '', ucwords($controller, '_')) . 'Controller';
$controller = new $klass;
$controller->$action();
?>
