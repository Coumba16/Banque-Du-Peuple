
$(document).ready(function () {
    //document.getElementById('myId');pour js

    //ON VEUT RECUPERER LE BOUTTON QUON A CLIQUE

    $(".btn").click(function(event){//lorscequon clic sur un ele;ent de class btn
        //quand on veut recuperer le boutton donc la class est btn
        var btnClick= $(event.target).closest("button");//target ou on a clicke
        var idcontactSup = $(btnClick).attr("id-a-sup");

        if(idcontactSup){
            if (confirm("VOULEZ VOUS SUPPRIMER!!!")) {
                //si c different de endifined
                //suppression

                $.ajax({
                    url:'/mybank/assets/js/suppression.php',
                    type:'POST',
                    data: {coumba: idcontactSup},
                    success: function(resultat){
                        //console.log("il a dit" +resultat);

                        if (resultat){
                            /*window.location.reload();*///cest pour actualiser lq page directement
                            var ligneAsup = $(btnClick).closest("tr");
                            ligneAsup.css("background-color","pink")
                            ligneAsup.fadeOut(5000,function(){
                                $(this).remove();
                            });

                        }else{

                          //  console.log("erreur lors de la suppression")
                        }
                    }
                });
            }
        }else
        {
            //EDITER


        }
    });

    //var btnClick = $(".btn").Click().closest();
});
