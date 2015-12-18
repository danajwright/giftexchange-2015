$(document).ready(function() {
  $('.gift-button').click(function(){
    event.preventDefault();
    // figure out if we're open or closed
    $el = $(this).parent().parent().children('.interests');
    $button = $(this)

    // if closed
    if($el.is(':visible')) {
      $el.slideUp(function(){
        $button.text("+");
      });
    } else {
      $el.slideDown(function(){
        console.log(this);
        $button.text("-");
      });
    }

  });
});
