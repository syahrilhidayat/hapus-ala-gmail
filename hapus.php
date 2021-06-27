<?php

	include_once('koneksi.php');

	//implode, satukan array dengan karakter yg diinginkan, misalnya dengan koma
	//contoh hasil script dibawah : 2,5
	$idHapus = implode(',', $_POST['id']);

	$query = $koneksi->prepare("DELETE FROM email WHERE id IN ( $idHapus )");
	// $query->bindParam(':id', $id);
	$query->execute();