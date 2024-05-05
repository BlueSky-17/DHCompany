<?php
require_once('controllers/admin/baseController.php');
require_once('models/admin.php');

class LoginController extends BaseController
{
	function __construct()
	{
		$this->folder = 'login';
	}

	public function index()
	{
		$this->render('index');
	}

	public function check()
	{
		$username = $_POST['username'];
		$password = $_POST['password'];
		$check = Admin::validation($username, $password);
		if ($check == true) {
			session_start();
			if (!isset($_SESSION["user"]))
				$_SESSION["user"] = $username;
			header("Location: index.php?user=admin&controller=layouts&action=index");
		} else {
			$err = "Thông tin đăng nhập không chính xác";
			$data = array('err' => $err);
			$this->render('index', $data);
		}
	}

	public function logout()
	{
		session_start();
		unset($_SESSION["user"]);
		session_destroy();
		header("Location: index.php?user=admin&controller=login&action=index");
	}
}