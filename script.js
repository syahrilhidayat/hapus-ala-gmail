function showHideTombol(){
    if($('.active').length > 0){
        $('.tombol').slideDown();
    }else{
        $('.tombol').slideUp();
    }
}

$(document).ready(function(){

  $('.icon').on('click', function(){
  		$(this).toggleClass('active');
      showHideTombol();
  });
  
  $('.hapus').on('click', function(){
      let dataForm = $( "form" ).serialize();

      $.ajax({
          type: 'POST',
          data: dataForm,
          url: 'hapus.php',
          success: function(data){
          	$('.active').parent().slideUp();
            $('.icon').removeClass('active');
            showHideTombol();
          }
      });
  });

});