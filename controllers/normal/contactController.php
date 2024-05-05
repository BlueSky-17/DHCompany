<?php
require_once('controllers/normal/baseController.php');
require_once('models/company.php');

class ContactController extends BaseController
{
	function __construct()
	{
		$this->folder = 'contact';
	}

	public function index()
	{
		$companies = Company::getAll();
		$data = array('companies' => $companies);
		$this->render('index', $data);
	}
}
