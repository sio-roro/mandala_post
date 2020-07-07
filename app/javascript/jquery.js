$(function() {
 
  $('.top1').hide().fadeIn(1000);
  
  $('.js-modal-open').each(function(){
    $(this).on('click',function(){
        var target = $(this).data('target');
        var modal = document.getElementById(target);
        $(modal).fadeIn();
        return false;
    });
});
$('.js-modal-close').on('click',function(){
    $('.js-modal').fadeOut();
    return false;
}); 

var $input1 = $('#input1');
  var $output1 = $('#idea1');
  $input1.on('input', function(event) {
    var value1 = $input1.val();
    $output1.text(value1);
  });
  
  var $input2 = $('#input2');
  var $output2 = $('#idea2');
  $input2.on('input', function(event) {
    var value2 = $input2.val();
    $output2.text(value2);
  });
  
  var $input3 = $('#input3');
  var $output3 = $('#idea3');
  $input3.on('input', function(event) {
    var value3 = $input3.val();
    $output3.text(value3);
  });
  
  var $input4 = $('#input4');
  var $output4 = $('#idea4');
  $input4.on('input', function(event) {
    var value4 = $input4.val();
    $output4.text(value4);
  });
  
  var $input5 = $('#input5');
  var $output5 = $('#idea5');
  $input5.on('input', function(event) {
    var value5 = $input5.val();
    $output5.text(value5);
  });
  
  var $input6 = $('#input6');
  var $output6 = $('#idea6');
  $input6.on('input', function(event) {
    var value6 = $input6.val();
    $output6.text(value6);
  });
  
  var $input7 = $('#input7');
  var $output7 = $('#idea7');
  $input7.on('input', function(event) {
    var value7 = $input7.val();
    $output7.text(value7);
  });
  var $input8 = $('#input8');
  var $output8 = $('#idea8');
  $input8.on('input', function(event) {
    var value8 = $input8.val();
    $output8.text(value8);
  });
  
  







    


    // 画面切り替え
  $('.tab').click(function(){
    $('.is-active').removeClass('is-active');
    $(this).addClass('is-active');
    $('.is-show').removeClass('is-show');
    // クリックしたタブからインデックス番号を取得
    const index = $(this).index();
    // クリックしたタブと同じインデックス番号をもつコンテンツを表示
    $('.user-show-right').eq(index).addClass('is-show');
});
});