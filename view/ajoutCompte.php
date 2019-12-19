<?php
    require_once '../model/modelCompte.php';

    $numeroCompte = genererNumero();

    if (!isset($_GET['cin'])){
        header('location:/mybank/view/indexFinance.php?view=client');
    }
    $cin = $_GET['cin'];
    $idClient = $_GET['idClient'];
?>

<div class="container">
    <div class="jumbotron">
        <h5 class="display-4">new account (<?= $cin ?>)</h5>
        <div class="col-sm-4 offset-sm-8">
            <form method="POST" action="/mybank/controller/compteController.php">
                <input type="hidden" value="<?= $idClient ?>" name="idClient">
                <div class="form-group">
                    <label class="col-form-label-sm">NUMERO COMPTE</label>
                    <input value="<?= $numeroCompte ?>" name="numero" type="text" class="form-control text-center" readonly>
                </div>
                <div class="form-group">
                    <label class="col-form-label-sm">MONTANT INITIAL</label>
                    <input name="montant" min="0" type="number" class="form-control">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-block btn-primary" value="AddAccount" name="ajouterCompte2">
                </div>
            </form>
        </div>
    </div>
</div>