<?php 

	header("Access-Control-Allow-Origin: *");


	require 'vendor/autoload.php';
 
	// Using Medoo namespace
	use Medoo\Medoo;
	 
	// Initialize
	$database = new Medoo([
	    'database_type' => 'mysql',
	    'database_name' => 'undangan',
	    'server' => 'localhost',
	    'username' => 'root',
	    'password' => 'password'
	]);

// get data regis pertama

	if ($_GET['key'] == "data-login") {
	    $_SESSION["favcolor"] = $_POST['data'];
	    print json_encode($_SESSION["favcolor"]);
	}

	if ($_GET['key'] == "go-login") {
	    $data = $_POST['data'];

	    $datas = $database->select("login", [
	    	"username",
	    	"user",
	    	"data"
	    ], [
	    	"username" => $data['username'],
	    	"password" => md5($data['password'])
	    ])[0];

	    print json_encode($datas);

	}


	if ($_GET['key'] == 'data-client-gambar') {
		

		$username = $_POST['username'];

		$datas = $database->select("login", "*", ["username" => $username]);


		$fotoPath = $_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].'/foto/';


		print 'http://'.$fotoPath.json_decode($datas[0]['data'])->foto;

	}


	if ($_GET['key'] == "data-login-save") {
		

		$mydata = [];


		$data = json_decode($_POST['regis']);

		$mydata["user"] = $data->user;

		$mydata["username"] = $data->username;

		$mydata["password"] = md5($data->password);

		$foto = $_FILES['foto'];



		$value = $_POST['data'];

		$value["foto"] = $mydata['username'].'-'.$foto['name'];

		$dir = "foto/";

		move_uploaded_file($foto['tmp_name'], $dir.$value['foto']);

		$mydata['data'] = json_encode($value);

		var_dump($mydata);

	    $database->insert("login", $mydata);

	}
