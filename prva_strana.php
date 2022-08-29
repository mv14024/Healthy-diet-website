<?php

session_start();
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
}

$pages = array(
    'pocetna' => 'pocetna.html',
    'recepti' => 'recepti.php',
    'nasi_kuvari' => 'nasi_kuvari.html'
);

if (isset($_REQUEST['content'])) {
    $content = $_REQUEST['content'];
} else {
    $content = 'pocetna';
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Klub zdravih navika</title>

    <link rel="shortcut icon" type="image/x-icon" href="icon.jpg">
    <link rel="stylesheet" type="text/css" href="prva_strana.css">
</head>

<body>

    <header id="page_header">
        <div>
            <h2>Klub zdravih navika</h2>
        </div>
        <div><a href="logout.php"><button type="submit" class="btn btn-outline-dark">Odjava</button></a></div>
    </header>

    <nav id="navigacija">
        <a href="?content=pocetna">Početna</a>
        <a href="?content=recepti">Recepti</a>
        <a href="?content=nasi_kuvari">Naši kuvari</a>
        <a href="Nut_vrednosti.pdf" target="_blank">Nut vrednosti</a>
    </nav>

    <div id="page_flex">

        <main>


            <?php

            if (isset($pages[$content])) {

                include $pages[$content];
            } else {
                ?>
                <h2>Greška: Tražena stranica ne postoji!</h2>
            <?php
        }
        ?>

        </main>

        <aside>
            <nav id="right_nav">

                <header>
                    <h3>Korisni linkovi:</h3>
                    <hr>
                </header>
                <a href="https://sremskevesti.rs/nutriva-zdrava-ishrana-za-pocetnike-saveti-nutricioniste/">NUTRIVA - Zdrava ishrana za početnike (Saveti nutricioniste)</a>
                <a href="https://zena.blic.rs/zdravlje/10-pravila-o-ishrani-koja-preporucuju-svi-nutricionisti/00km6mw">10 pravila o ishrani koja preporučuju svi nutricionisti</a>
                <a href="https://www.gloria.rs/lepota/zdravlje/u-zdravom-telu-zdrav-duh-vezbanje-utice-na-srecu-samopouzdanje-pamcenje/">U zdravom telu – zdrav duh</a>


            </nav>

        </aside>

    </div>

</body>

</html>