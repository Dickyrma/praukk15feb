<html>
	<head>
	 <title>Tabel tampil</title>
	 <center>
	 <h1>Data Penyewaan Film</h1>
	</head>
	<body>
	
	    <table border="300">
	      <tr>
	      <td>NO.</td>
	      <td>NAMA PENYEWA</td>
	      <td>ALAMAT</td>
	      <td>GENRE FILM</td>
	      <td>JUDUL FILM</td>
	      <td>TAHUN FILM</td>
	      <td>TANGGAL SEWA</td>
	      <td>TANGGAL KEMBALI</td>
	      <td>HARGA</td>
		  <td>AKSI.</td>
	  </tr>
	  
	  <?php
	  include 'koneksi.php';
	
	    $query = mysqli_query($koneksi, "SELECT * FROM tb_penyewa INNER JOIN tb_dvd ON tb_penyewa.id_dvd =
	    tb_dvd.id_dvd");
	
	    $no = 1;
	    foreach ($query as $row) :
	        ?>
	
	        <tr>
	            <td><?= $no++; ?></td>
	            <td><?= $row['nama_penyewa']; ?></td>
	            <td><?= $row['alamat']; ?></td>
	            <td><?= $row['genre_film']; ?></td>
	            <td><?= $row['judul_film']; ?></td>
	            <td><?= $row['tahun_film']; ?></td>
	            <td><?= $row['tanggal_sewa']; ?></td>
	            <td><?= $row['tanggal_kembali']; ?></td>
	            <td><?= $row['harga']; ?></td>
	
	        <td><a href="edit.php?id_penyewa=<?= $row['id_penyewa']; ?>">Edit</a> ||
	        <a href="hapus.php?id_penyewa=<?= $row['id_penyewa']; ?>">Hapus</a>
	  </tr>
	    <?php endforeach; ?>
	 <a href="tambah.php"><input type="button" value="Tambah"/></a>
	    </center>
	    </table>
	    </body>
	    </html>