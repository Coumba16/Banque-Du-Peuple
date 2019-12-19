
$(document).ready(function() {

    $('#numClient').blur(function () {
        var numero = $(this).val();
        $.ajax('../controller/operationController.php', {//permet de recuperer les types d'operations
            type: 'get',
            data: {recherche: numero},
            cache: false
        }).done(function (data) {
             if (data == 0){
                 $('#transaction').slideUp(100);
                $('#message').text('this number does not exist!!!');
             } else{
                 $('#message').text('');
                $('#transaction').slideDown(500);
             }
        })

    });



    $.ajax('../controller/operationController.php', {//permet de recuperer les types d'operations
        type: 'get',
        data: {typeOp: 1},
        cache: false
    }).done(function (data) {
        var operations = JSON.parse(data);
        for (var j = 0;j<operations.length;j++){
            $('#typeOP').append("<option>"+operations[j]['nom']+"</option>");
        }

    })

    //opertaions depot retrait transfert

    $('#numCompteRecherche').blur(function () {
        var numero = $('#numCompteRecherche').val();
        $.ajax('../controller/operationController.php', {//verifie si le numero correspond a celui qui se trouve au niveeau de la base
            type: 'post',
            data: {num: numero},
            cache : false
        })
            .done(function(response){
                console.log(response);
                if(response == "success"){
                    $('form').show('slow');
                }
            })
        //Operation transfert
        $('#typeOP').on('click',function () {
            var typeOperation = $('#typeOP').val();
            if(typeOperation == 'transfert') {
                $('#numeroDestinataire').removeAttr('hidden', 'hidden');
                var numeroDestinataire = $('#numeroDestinataire').val();
                var montant = $('#montant').val();
                $('#validerOperation').on('click',function (event) {
                    event.preventDefault();
                $.ajax('../controller/operationController.php', {
                    type: 'post',
                    data: {
                        num: numero,
                        numDest: numeroDestinataire,
                        sum:montant
                    },
                    cache: false
                }).done(function (response) {
                    if (response == "operation done") {
                        $('#messageOp').text('transfert effectué !');
                    }
                })
            })
            }else{
                $('#numeroDestinataire').attr('hidden','hidden');
            }
        })



        $('#validerOperation').on('click',function (event) {
            event.preventDefault();
            var typeOperation = $('#typeOP').val();
            if(typeOperation == 'depot'){
                var montant = $('#montant').val();
                $.ajax('../controller/operationController.php', {
                    type: 'post',
                    data: {num: numero,
                           somme: montant
                        },
                    cache : false
                })
                    .done(function (response) {
                        if(response == "success1"){
                            $('#messageOp').text('Operation effectuée !');
                        }else{
                            $('#messageOp').text('Operation echouée !');
                        }


                    })
            }
            if(typeOperation == 'retrait'){
                var montantDemande = $('#montant').val();
                $.ajax('../controller/operationController.php', {
                    type: 'post',
                    data: {numb1: numero,
                        sommeDemand: montantDemande},
                    cache : false
                })
                    .done(function (reponse) {
                        if(reponse == "Operation done"){
                            $('#messageOp').text('Operation effectuée !');
                        }else{
                            $('#messageOp').text('Operation echouée !');
                        }
                    })

            }
        })
    });
    $('#numCompteRecherche').blur(function () {
        $('#btnListe').show('fast');
        $('#btnListe').on('click',function () {
            $('#listeOperation').slideToggle('slow');
            var numero = $('#numCompteRecherche').val();
            var num = numero.substring(14,1);
            $.ajax('../controller/compteController.php', {
                type: 'post',
                data: {numb: num},
                cache : false
            })
                .done(function (reponse) {
                    let obj = JSON.parse(reponse);
                    for(var i=0;i<obj.length;i++){
                        var row = '<tr>\
                                <td>'+obj[i].id+'</td><td>'+obj[i].numero+'</td><td>'+obj[i].dateOperation+'</td><td>'+obj[i].montant+'</td><td>'+obj[i].idCompte+'</td>\
                                <td>'+obj[i].idTypeOpe+'</td><td>'+obj[i].idUser+'</td></tr>';

                        $('#tableOp').last().append(row);
                    }

                })
        });
    });

});