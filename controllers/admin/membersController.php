<?php
require_once('controllers/admin/baseController.php');

class MembersController extends BaseController
{
	function __construct()
	{
		$this->folder = 'members';
	}

	public function index()
	{
		$this->render('index');
	}
}
