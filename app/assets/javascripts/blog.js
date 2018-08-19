
$(function(){
    $('.col-lg-1.trigger').click(function(){
      var str = $(this).attr("id");
      var cnt = str.match(/\d/);
    //   $('.background').html(cnt);
      $('#number'+cnt).fadeIn(3000);
    });
});



$(function(){
    $('.pimage').click(function(){
        $(this).fadeOut(1000);
    });
});
