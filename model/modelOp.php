<?php
require_once 'bd.php';

function infOp($idOp){
    global $bd;
    $sql = "SELECT * FROM operation WHERE id=$idOp";
    return $bd->query($sql)->fetch();
}

function lisOperations(){
    global $bd;
    $sql = "SELECT o.id,o.numero, o.dateOperation, o.montant, t.nom FROM  operation o, typeoperation t where o.idTypeOpe = t.id ";
    return $bd->query($sql)->fetchAll();
}
//g commmence par ici


function insererUtilisateu($id, $nom, $prenom, $login,  $password,$profil)
{
    global $bd;
    //$query = "INSERT INTO ";
    $query = "INSERT INTO client(cni,nom,prenom,adresse,tel) VALUES ('$id','$nom','$prenom','$login','$password','$profil')";
    $reussi = $bd ->exec($query);

    if($reussi){
        echo'utilisateur ajoute';
    }else{
        echo 'Erreur lors de l\'ajout';
    }
    return $bd -> lastInsertId();
}


/*function genererNumero(){

    $sql = "SELECT max(id) FROM operation";
    global  $bd;
    $array =  $bd -> query($sql) -> fetch();
    if($array == NULL){
        $id = 1;
    }else{
        $array[0]++;
        $id = $array[0];
    }
    $numero = "FSN_".date('d').date('m').date('Y')."_C".$id;
    return $numero;
}*/
/*function listeComptes(){
    $sql = "
        SELECT compte.numero, compte.solde, compte.dateCreation, client.prenom, client.nom 
        FROM compte, client
        WHERE compte.idClient = client.id
";
    global $bd;
    return $bd -> query($sql) -> fetchAll;
}*/