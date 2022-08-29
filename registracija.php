<?php

if (isset($_POST['reg_dugme'])) {


    $ime = $_POST['ime'];
    $mail = $_POST['mail'];
    $pass = $_POST['pass'];

    $at_pos = strpos($mail, "@");

    $tacka = strripos($mail, ".");

    if ($tacka < $at_pos) {

        die("<span class='greska'>Neispravna email adresa!</span>");
    }

    require_once "connect.php";

    $sql = "SELECT * FROM korisnik WHERE username='$ime'";

    $result = mysqli_query($conn, $sql);

    if ($result == false) {
        die("<span class='greska'>Greška prilikom upita!</span>");
    }

    $n = mysqli_num_rows($result);

    if ($n > 0) {

        die("<span class='greska'>Korisničko ime je zauzeto!</span>");
    }

    $sql1 = "INSERT INTO korisnik (username, mail, password) VALUES ('$ime', '$mail', '$pass')";

    $result = mysqli_query($conn, $sql1);

    if ($result == false) {
        die("<span class='greska'>Greška prilikom upita!</span>");
    }

    echo "<span class='greska'>Registracija uspešna, prijavite se.</span>";

    mysqli_close($conn);
}
