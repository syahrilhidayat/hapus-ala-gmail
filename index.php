<?php 
	include_once('koneksi.php'); 
	
	$sql = 'SELECT * FROM email';
	$query = $koneksi->query($sql);
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Hapus Ala Gmail</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="jquery.js"></script>
		<script src="script.js"></script>
	</head>
	<body>
		<div class="container">
			<h3>HAPUS ALA GMAIL</h3>
			<h4>HAPUS DATA ALA GMAIL DI MOBILE</h4>

			<div id="frame">
				<div class="tombol">
					<div class="hapus">HAPUS</div>
				</div>

				<div class="list-email">
					<form>					
						<?php foreach ($query->fetchAll() as $row): ?>
							<div class="list">
								<input type="checkbox" name="id[]" class="idHapus" value="<?php echo $row['id'] ?>" id="<?php echo $row['id'] ?>" />
								<label class="icon" for="<?php echo $row['id'] ?>">
									<div class="depan"><?php echo substr($row['pengirim'], 0, 1); ?></div>
									<div class="belakang">&#10004;</div>
								</label>
								<div class="konten">
									<h5 class="pengirim"><?php echo $row['pengirim'] ?></h5>
									<h6 class="judul"><?php echo $row['judul'] ?></h6>
									<p><?php echo $row['konten'] ?></p>
								</div>
							</div>
						<?php endforeach; ?>
					</form>
				</div>

			</div>
		</div>
	</body>
</html>