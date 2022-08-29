<?php

require_once "connect.php";

$sql = "SELECT  recept.id, recept.naziv, recept.slika, kuvar.ime, kuvar.prezime 
            FROM recept JOIN kuvar ON kuvar.username = recept.usernameKuvara";

$result = mysqli_query($conn, $sql);

if ($result == false) {
	die("Greška prilikom upita " . mysqli_error($conn));
}

while ($red = mysqli_fetch_assoc($result)) {
	$id = $red['id'];
	$naziv = $red['naziv'];
	$slika = $red['slika'];
	$ime = $red['ime'];
	$prezime = $red['prezime'];

	echo "<div class='recept'>";
	echo    "<div id='levo' class='col-12 col-md-6'>";
	echo        "<div id='slika_recepta'><img src=' $slika' alt='slika_recepta'></div>";
	echo        "<div id='ime_kuvara'>Recept postavio: $ime $prezime</div>";
	echo    "</div>";

	echo  "<div id='desno' class='col-12 col-md-6'>";
	echo      "<div id='naziv_jela'><a href='recept.php?id_recept=$id'> $naziv</a></div>";
	echo  "</div>";

	echo  "</div>";
}

mysqli_close($conn);
