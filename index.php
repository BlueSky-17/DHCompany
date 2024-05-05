<?php

if (isset($_GET['user'])) {
	$user = $_GET['user'];
	if (isset($_GET['controller'])) {
		$controller = $_GET['controller'];
		if (isset($_GET['action'])) {
			$action = $_GET['action'];
		} 
		else {
			$action = 'index';
		}
	} else {
		$user = 'error';
	}
}

else {
	$user = 'normal';
	$controller = 'layouts';
	$action = 'index';
}
require_once('routes.php');