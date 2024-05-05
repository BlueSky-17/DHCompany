<?php
require_once('controllers/normal/baseController.php');

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
