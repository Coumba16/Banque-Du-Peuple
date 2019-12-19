<?php
    include "header.php";
?>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand  " href="#">MY-COMPANY</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="?view=accueil"> <span class="sr-only">Accueil</span> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="?view=compte" <?php if($_SESSION['profil'] == 'caissier'){echo  'hidden';} ?>>GESTION COMPTES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="?view=client" <?php if($_SESSION['profil'] == 'caissier'){echo  'hidden';} ?>>GESTION CLIENTS</a>
                </li>

               <!-- <li class="nav-item">
                    <a class="nav-link"  href="?view=utilisateur" <?php if($_SESSION['profil'] == 'caissier'){echo  'hidden';} ?>>GESTION UTILISATEURS</a>
                </li>-->
                <li class="nav-item mr-0    " style="float: right">
                    <a class="nav-link"  href="/mybank/controller/userController.php?deconnexion=1" id="deconnexion"><button class="btn btn-outline-success my-2 my-sm-0 ">DECONNEXION</button></a>
                </li>
        </div>
    </nav>
</div>