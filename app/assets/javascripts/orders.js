$(document).ready(function() {

  $("#tabs").tabs({
    beforeLoad: function(event, ui) {
      ui.jqXHR.fail(function() {
        ui.panel.html('asdfasfddsf')
      })
    }

  })

  // $('ul.nav-tabs > li').click(function(){
  //   var tab = $(this).attr('data-tab');

  //   $('ul.nav-tabs > li').removeClass('current');
  //   $('.tab-content').removeClass('current');

  //   $(this).addClass('current');
  //   $("#tab-"+tab).addClass('current');

  // });

});
 

