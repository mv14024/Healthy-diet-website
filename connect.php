<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Recepti";

// Kreiranje konekcije
$conn = new mysqli($servername, $username, $password, $dbname);

// Provera da li je konekcija uspela
if (!$conn) {
    die("Neuspesna konekcija: " . mysqli_connect_error());
}
