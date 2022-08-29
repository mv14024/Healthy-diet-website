<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Пријава за куваре</title>

    <link rel="shortcut icon" type="image/x-icon" href="images/ikonica.jpg">
    <link rel="stylesheet" type="text/css" href="prijava.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <meta name="author" content="Marina Markagić">
    <meta name="keywords" content="zdrava hrana, zdrav život, kuvanje, recepti">
</head>

<body>

    <div class="container">

        <div class="row">
            <div id="levo" class="col-12 col-md-6">
                <p id="naslov"> Klub zdravih navika - Prijava za kuvare -</p>
            </div>

            <div id="desno" class="col-12 col-md-6">

                <form id="forma" action="" method="POST">
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

                require_once "login_kuvar.php";

                ?>
            </div>
        </div>
    </div>
</body>

</html>