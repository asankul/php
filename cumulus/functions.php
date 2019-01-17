<?php 
function connect($host, $user, $pass, $database){
	$db = mysql_connect($host, $user, $pass);
	
	if (!$db) {
		exit('Error connection'.mysql_error());
	}

	if (!mysql_select_db($database)) {
		exit('No table'.mysql_error());
	}

	mysql_query("SET NAMES cp1251");
}

function get_cloud(){
	connect(HOST, USER, PASS, DB);

}

?>