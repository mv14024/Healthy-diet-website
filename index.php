<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Клуб здравих навика</title>

    <link rel="shortcut icon" type="image/x-icon" href="images/ikonica.jpg">
    <link rel="stylesheet" type="text/css" href="style.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <meta name="author" content="Marina Markagić">
    <meta name="keywords" content="zdrava hrana, zdrav život, kuvanje, recepti">
</head>

<body>

    <div class="container">

        <div id="prijava_za_kuvare">
            <a href="prijava_za_kuvara.php">Prijava za kuvare</a>
        </div>

        <div class="row">
            <div id="levo" class="col-12 col-md-6">
                <p id="naslov"> Klub zdravih navika - Vodič kroz zdravu ishranu</p>
            </div>

            <div id="desno" class="col-12 col-md-6">

                <form id="forma1" action="" method="POST">
                    <div id="prijava">
                        <div id="kor_ime">
                            <label>Korisničko ime</label>
                            <br>
                            <input type="text" style="width: 200px;" class="form-control" name="ime_kor">
                        </div>

                        <div id="lozinka">
                            <label>Lozinka</label>
                            <br>
                            <input type="password" style="width: 200px;" class="form-control" name="lozinka">
                            <span></span>
                        </div>
                        <input type="submit" name="log_in" class="btn btn-outline-dark" value="Prijavi se" id="prijaviSe">
                    </div>
                </form>

                <?php

                require_once "login.php";

                ?>




                <form id="forma2" action="" method="POST">
                    <div id="registracija">
                        <p>Napravi nalog</p>
                        <input type="text" name="ime" maxlength="15" placeholder="Korisničko ime" style="width: 200px; height: 30px;" class="form-control" required>
                        <br>
                        <input type="email" name="mail" placeholder="Email adresa" style="width: 200px; height: 30px;" class="form-control" required>
                        <br>
                        <input type="password" name="pass" placeholder="Lozinka" style="width: 200px; height: 30px;" class="form-control" required>
                        <br>

                        <input type="submit" name="reg_dugme" class="btn btn-outline-dark" value="Gotovo" id="gotovo">
                        <br>

                    </div>
                </form>

                <?php

                require_once "registracija.php";

                ?>

            </div>
        </div>
    </div>

    <?php

    require_once "skriptovi.php"

    ?>
</body>

</html>