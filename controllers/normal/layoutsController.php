<?php
require_once('controllers/normal/baseController.php');

class LayoutsController extends BaseController
{
	function __construct()
	{
		$this->folder = 'layouts';
	}

	public function index()
	{
		$this->render('index');
	}
}
