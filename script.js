$(document).ready(function(){


  
$('.btnsuppress').click(function(e) {
    console.log($(this).attr('id').slice(11));  
    e.preventDefault();
    $.post (
        'suppress.php',
        {$idtosuppress: $(this).attr('id').slice(11) },
        function (data) {
            window.location.href='index.php';
        }
    )
})

$("#search").click(function(){
    $("#search").val("");
})

document.addEventListener("keyup", function(){
    console.log($("#search").val());
    $.post(
        "autoremplissage.php",
        {$search: $("#search").val()},
        function(data){
            
        }
    )
})








    
})