<?php
require_once '../model/modelClient.php';

$listClients = listeClients();
?>

<div class="container">

    <div class="container">

        <h5 class="display-4 mb-3">Liste des clients</h5>

        <table class="table table-hover">
            <tr>
                <th>CNI</th>
                <th>NOM</th>
                <th>PRENOM</th>
                <th>TELEPHONE</th>
                <th>ADRESSE</th>
                <th>ACTIONS</th>
            </tr>
            <?php
            foreach ($listClients as $c){
                ?>
                <tr>
                    <td> <?=$c['cni'] ?> </td>
                    <td> <?=$c['nom'] ?> </td>
                    <td> <?=$c['prenom'] ?> </td>
                    <td> <?=$c['tel'] ?> </td>
                    <td> <?=$c['adresse'] ?> </td>
                    <td>
                        <a class="btn btn-sm btn-outline-primary" href="/mybank/view/indexFinance.php?view=ajoutCompte&cin=<?=$c['cni'] ?>&idClient=<?= $c['id'] ?>">Ajout Compte</a>
                        <td> <button id-a-sup='".$d['id']."' class="btn btn-sm btn-outline-primary" >SUPPRIMER</a></button></td>
                    </td>
                </tr>
            <?php } ?>
        </table>
    </div>

</div>