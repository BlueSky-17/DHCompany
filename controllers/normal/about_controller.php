<?php
require_once('controllers/normal/base_controller.php');

class AboutController extends BaseController
{
	function __construct()
	{
		$this->folder = 'about';
	}

	public function index()
	{
		$this->render('index');
	}
}
