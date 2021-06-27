<?php
	
	$database	= 'hapus_ala_google';
	$sumber		= 'mysql:dbname='.$database.';host=127.0.0.1';
	$user 		= 'root';
	$password 	= '';

	try {
	    $koneksi = new PDO($sumber, $user, $password);
	} 
	catch (PDOException $e) {
	    echo 'Koneksi gagal : ' . $e->getMessage();
	}