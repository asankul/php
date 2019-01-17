<?php 

	$user = 'root';
	$password = 'linux';
	$db = 'articles';
	$host = 'localhost';

	$dsn = 'mysql:host='.$host.';dbname='.$db.';charset=utf8';

	$pdo = new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

	
?>