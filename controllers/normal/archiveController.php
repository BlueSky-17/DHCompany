<?php
require_once('controllers/normal/baseController.php');

class ArchiveController extends BaseController
{
	function __construct()
	{
		$this->folder = 'archive';
	}

	public function index()
	{
		$this->render('index');
	}
}
