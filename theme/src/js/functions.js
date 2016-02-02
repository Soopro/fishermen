if(navigator.languages && navigator.languages.length > 1){
  navigator_language = navigator.languages[0];
}else{
  navigator_language = navigator.language || navigator.userLanguage;
}

var userLang = navigator_language;
var userLocale = userLang.replace('-','_');

//fix old browser no console
if (!window.console) {
	window["console"] = {log: function(){}};
}

var language_texts = {
  "en":"Languages",
  "zh":"语言",
}

$(document).ready(function () {
	//Language Switcher
	$('.language-switcher-text')
  .each(function() {
		var lang = userLocale.split('_')[0] || 'en';
    for(var key in language_texts){
      if(key == lang){
        $(this).html(language_texts[key]);
      }
    }
	});
  //Parallax
  $('.parallax-link[href*=#]').click(function(e) {
    var target_top=0;
    var current_hash='';
    var loc_path = location.pathname.replace(/^\//,'');
    if (loc_path == this.pathname.replace(/^\//,'') 
    && location.hostname == this.hostname) {
      var target;
      
      var _go_first = $(this).hasClass('parallax-go-first');
      if(this.hash){
        current_hash = this.hash;
      }else if(_go_first){
        try {
          target = $('.content-block')[0];
        } catch(e) {
          target = null;
        }
        current_hash = '#'+target.id;
      }
      if (current_hash) {
        target = target ? $(target) : $(current_hash);
        target_top = target.offset().top;
      }
    }
    $('html, body').animate({
      scrollTop: target_top
    }, 600, function() {
      if (current_hash.charAt(0) == '#'){
        hash_path = current_hash.slice(1);
      }else{
        hash_path = current_hash;
      }  
      window.location.hash = '/'+hash_path;
      // for stupid IE, if no slash the window might brink some how.
    });
    $('.navbar-collapse').collapse('hide');
    e.preventDefault();
    return false;
  });
  
  //Resize
  resizeHandler(true);
  $(window).resize( function(){
    resizeHandler();
  });
    
  function resizeHandler(force){
    if ($('#main').length >0){
      var win_height=$(window).height();
      var offset=$('#main').data('offset');
      if(!offset){
        offset=0;
      }

      var obj_height=$('#main').data('height');
      if (!obj_height){
        obj_height=$('#main').height();
        $('#main').data('height', obj_height);
      }

      var new_height=win_height-offset;
      if (new_height<obj_height){
        new_height=obj_height;
      }

      if (force){
        $('#main').height(new_height);
      }else{
        $('#main').stop().animate({
          height:new_height
        },600);
      }
    }
  }

});