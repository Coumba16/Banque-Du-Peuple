<?php
session_start();
require_once '../model/modelCompte.php';
require_once '../model/modelOperation.php';

$entre = 0;
if(isset($_POST['num']) && $entre == 0){
    $entre = 1;
    $numeroCompte = $_POST['num'];
    if(findCompteByNumero($numeroCompte)) {
        echo "success";
    }
}

if (isset($_GET['recherche'])){
    $numero = $_GET['recherche'];
    $resultat=chercherNumero($numero);
    if (!$resultat){
        echo "0";
    }else{
        echo $resultat[0];
    }
}
if((isset($_POST['somme'])) && (isset($_POST['num']))){

    $numeroCompte = $_POST['num'];
    $compte = findCompteByNumero($numeroCompte);
    $numeroOp = genererNumeroOperation();
    $date = date('d-m-Y');
    $montant = $_POST['somme'];
    $idUser = $_SESSION['idUser'];
    $idOP = getTypeOpByNom("depot")['id'];
    $idCompte = $compte[4];
    if(depot($numeroOp,$date,$montant,$idCompte,$idOP,$idUser)){
        echo'1';
    }
}

if(isset($_POST['numb1'])){
    $nDemandeur = $_POST['numb1'];
    $compte = findCompteByNumero($nDemandeur);
    $montDemandeur = $_POST['sommeDemand'];
    $numeroOp = genererNumeroOperation();
    $date = date('d-m-Y');
    $idUser = $_SESSION['idUser'];
    $idOP = getTypeOpByNom("retrait")['id'];
    $idCompte = $compte[4];
    if(retrait($numeroOp,$date,$montDemandeur,$idCompte,$idOP,$idUser)){
        echo 'Operation done';
    }
}

if (isset($_GET['typeOp'])){
    $typeOperations = getTypesOperation();
    echo json_encode($typeOperations);
}

if((isset($_POST['numDest'])) && (isset($_POST['num']))){

    $numCompte = $_POST['num'];
    $numDest = $_POST['numDest'];
    $compte = findCompteByNumero($numCompte);
    $compteDest = findCompteByNumero($numDest);
    $idDest = $compteDest[4];
    $montDemandeur = $_POST['sum'];
    $numeroOp = genererNumeroOperation();
    $date = date('d-m-Y');
    $idUser = $_SESSION['idUser'];
    $idOP = getTypeOpByNom("transfert")['id'];
    $idCompte = $compte[4];
    if(transfert($idDest,$numeroOp,$date,$montDemandeur,$idCompte,$idOP,$idUser)){
        echo 'Operation done';
    }else{
        echo 'error';
    }
}

if (isset($_POST['operation'])){
    extract($_POST);
    $dateCreation = genererNumeroOperation();
    $numeroOp = genererNumeroOperation();
    $idGestCompte = $_SESSION['idUser'] + 0;
    $idTypeOperation = getTypeOpByNom($type)['id'];
    $idCompte = findCompteByNumero($numClient)['id'];
    $solde = $montant;
    if ($type =='Depot'){
        if (depot($numeroOp, $dateCreation, $solde, $idCompte, $idTypeOperation, $idGestCompte) >0){
            header("location:/mybank/view/indexFinance.php?view=operation&depot=1");
        }else{
            header("location:/mybank/view/indexFinance.php?view=operation&depot=0");
        }
    }

    if ($type == 'Retrait'){
        if(retrait($numeroOp,$dateCreation,$solde,$idCompte,$idTypeOperation,$idGestCompte) >0){
            header("location:/mybank/view/indexFinance.php?view=operation&retrait=1");
        }else{
            header("location:/mybank/view/indexFinance.php?view=operation&retrait=0");
        }
    }

}
