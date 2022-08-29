<?php

session_start();
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Рецепт</title>

    <link rel="shortcut icon" type="image/x-icon" href="icon.jpg">
    <link rel="stylesheet" type="text/css" href="recept.css">

    <meta name="author" content="Marina Markagić">
    <meta name="keywords" content="zdrava hrana, zdrav život, kuvanje, recepti">
</head>

<body>

    <?php

    $id_recept = $_GET['id_recept'];
    $korisnik = $_SESSION['username'];

    require_once "connect.php";

    $sql = "SELECT * FROM recept WHERE id = '$id_recept'";

    $result = mysqli_query($conn, $sql);

    if ($result == false) {
        die("Greška prilikom upita!");
    }

    $red = mysqli_fetch_assoc($result);
    $id = $red['id'];
    $naziv = $red['naziv'];
    //   $slika = "images/" . $red['slika'];
    $slika = $red['slika'];
    $opis = $red['opis'];
    $sastojci = $red['sastojci'];
    $postupak = $red['postupak'];
    $kuvar = $red['usernameKuvara'];

    ?>


    <header id="page_header">
        <div>
            <h2><?php echo "$naziv"; ?></h2>
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

            echo "<div class='recept'>";
            echo "<div id='slika_jela'><img src = '$slika' alt='Slika jela'></div>";
            echo "<hr>";
            echo "<div id='sastojci'>$sastojci</div>";
            echo "<hr>";
            echo "<div id='postupak'>$postupak</div>";
            echo "</div>";
            echo "<hr>";

            $sql = "SELECT AVG(ocena) AS prosecnaOcena FROM ocena WHERE ocena.id_Recept='$id'";

            $result = mysqli_query($conn, $sql);

            if ($result == false) {
                die("Greška prilikom upita!");
            }

            $red = mysqli_fetch_assoc($result);
            $prosecnaOcena = $red['prosecnaOcena'];

            echo "<div class='prosecna_ocena'><label>Prosečna ocena jela: </label><div>$prosecnaOcena</div></div>";


            ?>

            <p class="ocena">Ocenite jelo: </p>
            <form action="" method="POST">
                <div class="forma">
                    <input type="text" name="broj" style="width: 250px;" class="form-control">
                    <input type="submit" name="submit" class="btn btn-outline-dark" aria-pressed="true" value="Pošalji ocenu">
                </div>
            </form>

            <?php

            if (isset($_POST['submit'])) {

                $ocena = $_POST['broj'];
                $vreme = date("h:i:sa");

                $sql = "INSERT INTO ocena (id_Recept, id_Korisnik, ocena) VALUES ('$id_recept', '$korisnik', '$ocena')";

                $result = mysqli_query($conn, $sql);

                if ($result == false) {
                    die("Greška prilikom upita!" . mysqli_error($veza));
                }
            }

            ?>


        </main>

        <aside>
            <nav id="right_nav">

                <header>
                    <h2>Корисни линкови:</h2>
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