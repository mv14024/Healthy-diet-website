<?php

if (isset($_POST['log_in'])) {


    $ime = $_POST['ime_kor'];
    $pass = $_POST['lozinka'];

    //konekcija na bazu

    require_once "connect.php";

    $sql = "SELECT * FROM korisnik WHERE username='$ime' and password='$pass'";

    $result = mysqli_query($conn, $sql);

    if ($result == false) {
        die("<span class='greska'>Greška prilikom upita</span>");
    }

    $n = mysqli_num_rows($result);

    if ($n == 0) {

        die("<span class='greska'>Korisnik ne postoji!</span>");
    }

    $korisnik = mysqli_fetch_assoc($result);

    session_start();

    $_SESSION['username'] = $korisnik['username'];
    $_SESSION['mail'] = $korisnik['mail'];
    $_SESSION['password'] = $korisnik['password'];

    header('Location: prva_strana.php');


    mysqli_close($conn);
}
