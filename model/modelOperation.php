<?php
require_once 'bd.php';
function getTypeOpByNom($nom){
    $sql ="SELECT * FROM typeoperation WHERE nom = '$nom' ";
    global  $bd;
    return $bd -> query($sql) ->fetch();
}
function depot($numero,$dateOperation,$montant,$idCompte,$idOP,$idUser){
    $sql = "INSERT INTO operation VALUES (null,'$numero','$dateOperation','$montant','$idCompte','$idOP','$idUser')";
    global $bd;

    if($bd -> exec($sql) >0){
        $sql1 = "UPDATE compte SET solde = solde+$montant WHERE id = $idCompte";
        return $bd -> exec($sql1);
    }
    }

function retrait($numeroOp,$dateOperation,$montantD,$idCompte,$idOP,$idUser){
    $sql = "SELECT solde FROM compte where id = '$idCompte'";
    global $bd;
    $som = $bd -> query($sql) -> fetch();
    if($montantD < $som[0] && ($som[0]-$montantD) >= 500) {
        $sql1 = "INSERT INTO operation VALUES (null,'$numeroOp','$dateOperation','$montantD','$idCompte','$idOP','$idUser')";
        if($bd -> exec($sql1) >0){
            $sql2 = "UPDATE compte SET solde = solde-$montantD WHERE id = $idCompte";
            return $bd -> exec($sql2);
        }
    }
}

function genererNumeroOperation(){

    $sql = "SELECT max(id) FROM operation";
    global  $bd;
    $array =  $bd -> query($sql) -> fetch();
    if($array == NULL){
        $id = 1;
    }else{
        $array[0]++;
        $id = $array[0];
    }
    $numero = "FSN_".date('d').date('m').date('Y')."_OP".$id;
    return $numero;
}

function chercherNumero($numero){
    global $bd;
    $sql = "SELECT id FROM compte
            WHERE numero= '$numero' and etat=1";
    return $bd->query($sql)->fetch();
}


function findCompteByNumero($numero){
    $sql = "SELECT * FROM compte WHERE numero  = '$numero'";
    global $bd;
    return $bd -> query($sql) -> fetch();
}
function listeOperations($numero){
    $sql = "SELECT operation.numero, operation.dateOperation, operation.montant, typeoperation.nom as type
            FROM operation, typeoperation
            WHERE idCompte  = '$numero' AND operation.idTypeOpe = typeoperation.id";
    global $bd;
    return $bd -> query($sql) -> fetchAll();
}
function findCompteGestByNumero($numero){
    $sql = "SELECT * FROM utilisateur WHERE id  = '$numero' AND profil='Gestionnaire de comptes'";
    global $bd;
    return $bd -> query($sql) -> fetch();
}

function getTypesOperation(){
    $sql = "SELECT nom FROM  typeoperation";
    global  $bd;
    return $bd ->query($sql)->fetchAll();
}

function transfert($idDest,$numeroOp,$dateOperation,$montantD,$idCompte,$idOP,$idUser){
    $sql = "SELECT solde FROM compte where id = '$idCompte'";
    global $bd;
    $som = $bd -> query($sql) -> fetch();
    if($montantD < $som[0] && ($som[0]-$montantD) >= 500) {
        $sql1 = "INSERT INTO operation VALUES (null,'$numeroOp','$dateOperation','$montantD','$idCompte','$idOP','$idUser')";
        if($bd -> exec($sql1) >0){
           // $sql2 = "UPDATE compte SET solde = solde-$montantD WHERE id = $idCompte";
            $sql3 = "UPDATE compte SET solde = solde-$montantD WHERE id = $idDest";
            //$bd-> exec($sql3);
            return $bd -> exec($sql3);

        }
    }
}


?>