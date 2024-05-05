<?php
class ErrorsController
{
	public function index()
	{
		$view_file = 'views/errorIndex.php';
		require_once($view_file);
	}

}