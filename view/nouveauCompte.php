<div class="container">
    <div class="jumbotron">
    <form method="POST" action="/mybank/controller/compteController.php" id="nouveauCompte">
        <fieldset id="newAccount">
            <legend>INFOS CLIENT</legend>
            <table>
                <tr>
                    <th>CNI</th>
                    <td class="formul_tab"><input type="text" placeholder="NUMERO CNI" name="cni" id="cni" class="champsNewC" /></td>

                    <th>NOM</th>
                    <td class="formul_tab"><input type="text" placeholder="NOM" name="nom" id="nom" class="champsNewC" /></td>
                </tr>
                <tr>
                    <th>PRENOM</th>
                    <td class="formul_tab"><input type="text" placeholder="PRENOM" name="prenom" id="prenom" class="champsNewC" /></td>
                    <th>ADRESSE</th>
                    <td class="formul_tab"><input type="text" placeholder="ADRESSE" name="adresse" id="adresse" class=" champsNewC" /></td>
                </tr>
                <tr>
                    <th>TELEPHONE</th>
                    <td colspan="2" class="formul_tab"><input type="text" placeholder="TELEPHONE" name="tel" id="tel" class="champsNewC" /></td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="newAccount">
            <legend>INFOS COMPTE</legend>
            <table>
                <tr>
                    <td class="formul_tab"><input class="champsNewC" type="text" name="numero" id="numero" value="<?= $numero ?>" readonly/></td>
                    <td class="formul_tab"><input class="champsNewC" type="number" name="solde" id="solde" placeholder="solde" ></td>
                </tr>
            </table>
        </fieldset>
        <br><br>
        <div class="aligner"><input class="btn-outline-dark" type="submit" name="ajoutCompte" value="Valider" ></div>
    </form>
</div>
</div>


<?php
/**
 * Created by PhpStorm.
 * User: Brice lefa
 * Date: 21/02/2019
 * Time: 12:17
 */