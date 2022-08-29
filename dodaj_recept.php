<?php

session_start();
if (!isset($_SESSION['username'])) {
    header('Location: login_kuvar.php');
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Dodavanje recepta</title>

    <link rel="icon" type="image/jpg" href="icon.jpg">
    <link rel="stylesheet" type="text/css" href="dodaj_recept.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <meta name="author" content="Marina Markagić">
    <meta name="keywords" content="zdrava hrana, zdrav život, kuvanje, recepti">

    <!-- <script src="js/jquery-3.4.1.js"></script> -->
    <script>
        $(document).ready(function() {

            $("form").submit(function() {

                if (naziv == "") {
                    $("#greska1").html(Morate uneti naziv!);
                    return;
                }

                if (sastojci == "") {
                    $("#greska2").html(Morate uneti sastojke!);
                    return;
                }

                if (postupak == "") {
                    $("#greska3").html(Morate uneti sastojke!);
                    return;
                }

                if (slika == "") {
                    $("#greska4").html(Morate uneti sliku!);
                    return;
                }

            });


        });
    </script>

</head>

<body>

    <div id="container">

        <p id="naslov">Dodavanje recepta u bazu</p>

        <p id="tekst">*Da biste dodali recept unesite odgovarajuće podatke u odgovarajuća polja</p>

        <form action="" method="POST" enctype="multipart/form-data">

            <div>

                <label>Naziv jela: </label>
                <input type="text" style="width: 300px;" name="naziv" class="form-control" required>
                <span id="greska1">*obavezno polje</span>
                <br>

                <label>Opis: </label>
                <input type="text" style="width: 300px;" name="opis" class="form-control" rows="3" required></textarea>
                <span id="greska2">*obavezno polje</span>
                <br>

                <label>Sastojci: </label>
                <textarea name="sastojci" style="width: 300px;" class="form-control" rows="3" required></textarea>
                <span id="greska2">*obavezno polje</span>
                <br>

                <label>Postupak: </label>
                <textarea name="postupak" style="width: 300px;" class="form-control" rows="7" required></textarea>
                <span id="greska3">*obavezno polje</span>
                <br>

                <!-- <label>Slika: </label>
                <input type="file" name="image" class="form-control" style="width: 300px;" required="">
                <span id="greska4">*obavezno polje</span>
                <br> -->

                <label>Slika: </label>
                <input type="text" name="image" class="form-control" style="width: 300px;" required>
                <span id="greska4">*obavezno polje</span>
                <br>

                <div class="dugmici">

                    <input type="submit" name="submit" class="btn btn-outline-dark" aria-pressed="true" value="Додај рецепт">

                    <a href="logout.php"><button type="submit" class="btn btn-outline-dark">Odjava</button></a>

                </div>

                <?php

                if (isset($_POST['submit'])) {

                    $naziv = $_POST['naziv'];
                    $opis = $_POST['opis'];
                    $sastojci = $_POST['sastojci'];
                    $postupak = $_POST['postupak'];
                    $kuvar = $_SESSION['username'];
                    //  $slika = $_FILES['image']['name'];
                    $slika = $_POST['image'];

                    //  $target = "images/" . basename($slika);

                    require_once "connect.php";

                    $sql = "INSERT INTO recept (naziv, slika, opis, sastojci, postupak, usernameKuvara) 
                                        VALUES ('$naziv', '$slika', '$opis', '$sastojci', '$postupak', '$kuvar')";

                    $result = mysqli_query($conn, $sql);

                    //  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
                    //      echo "Slika je uspešno dodata";
                    //  } else {
                    //      die("Slika nije dodata");
                    //  }

                    if ($result == false) {
                        die("Greška prilikom upita!");
                    }

                    echo "Recept je dodat!";

                    mysqli_close($conn);
                }

                ?>

            </div>

        </form>

    </div>

    <?php

    require_once "skriptovi.php"

    ?>

</body>

</html>