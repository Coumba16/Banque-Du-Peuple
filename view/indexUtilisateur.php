
<form method="POST" action="/mybank/controller/userController.php" id="nouveauUtilisateur">
	<fieldset id="newAccount">
        <legend>AJOUT UTILISATEUR</legend>
            <table class="tab_complet">
                <tr>
                    <td class="formul_tab">
                    	<input type="text" placeholder="NOM" name="nom" id="nom" class="champsNewC"/>
                    </td>
                    <td class="formul_tab">
                    	<input type="text" placeholder="PRENOM" name="prenom" id="prenom" class="champsNewC"/>
                    </td>
                </tr>   
                <tr>
                    <td class="formul_tab">
                    	<input type="text" placeholder="LOGIN" name="login" id="login" class="champsNewC" required/>
                    </td>
                    <td class="formul_tab">
                    	<input type="password" placeholder="MOT DE PASSE" name="mdp" id="mdp" class="champsNewC" required/>
                    </td>
                </tr>
                <tr>   
                    <td colspan="2" class="formul_tab">
                    	<select class="champsNewC" name="profil">
                    		<option selected>admin</option>
                    		<option>Gestionnaire de comptes</option>
                    		<option>caissier</option>
                    	</select>
                    </td>
                </tr>
        </table>
    </fieldset>
    <br><br>
    <div class="aligner"><input class="btn" type="submit" name="ajoutCompte" value="Valider" ></div>
</form>