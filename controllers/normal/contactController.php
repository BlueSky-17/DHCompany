<?php
require_once('controllers/normal/baseController.php');
require_once('models/branch.php');

class ContactController extends BaseController
{
	function __construct()
	{
		$this->folder = 'contact';
	}

	public function index()
	{
		$companies = Branch::getAll();
		$data = array('companies' => $companies);
		$this->render('index', $data);
	}
}
