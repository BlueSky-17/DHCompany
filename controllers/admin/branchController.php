<?php
require_once('controllers/admin/baseController.php');
require_once('models/branch.php');

class BranchController extends BaseController
{
	function __construct()
	{
		$this->folder = 'branch';
	}

	public function index()
	{
		$branch = Branch::getAll();
		$data = array('branch' => $branch);
		$this->render('index', $data);
	}

	public function add()
	{
		$name = $_POST['name'];
		$address = $_POST['address'];
		$add_new = Branch::insert($name, $address);
		header('Location: index.php?user=admin&controller=branch&action=index');
	}

	public function edit()
	{
		$id = $_POST['id'];
		$name = $_POST['name'];
		$address = $_POST['address'];
		$change_pass = Branch::update($id, $name, $address);
		header('Location: index.php?user=admin&controller=branch&action=index');
	}

	public function delete()
	{
		$id = $_POST['id'];
		$delete_user = Branch::delete($id);
		header('Location: index.php?user=admin&controller=branch&action=index');
	}
}