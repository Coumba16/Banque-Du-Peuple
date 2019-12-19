<?php
    require_once '../model/modelOperation.php';
    require_once '../model/modelClient.php';

    if (!isset($_GET['idCompte'])){
        header("location:/mybank/view/indexFinance.php?view=compte");
    }

    $idCompte = $_GET['idCompte'];
    $idClient = $_GET['idClient'];

    $client = infoClient($idClient);
    $listOperations = listeOperations($idCompte);
    ?>

<div class="container">
    <div class="jumbotron">
        <table class="table table-borderless col-sm-8 offset-sm-2">
            <tr class="text-center bg-dark text-white">
                <th colspan="2">CIN</th>
                <th colspan="2"><?= $client['cni'] ?> </th>
            </tr>
            <tr>
                <th>NOM</th>
                <td> <?= $client['nom'] ?> </td>
                <th>PRENOM</th>
                <td> <?= $client['prenom'] ?> </td>
            </tr>
            <tr>
                <th>ADRESSE</th>
                <td> <?= $client['adresse'] ?> </td>
                <th>TELPHONE</th>
                <td> <?= $client['tel'] ?> </td>
            </tr>
        </table>
    </div>


    </table>
</div>
