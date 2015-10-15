
$(function(){
  var checkPhone = function() {
    var region = $('#country').data('region');
    if (region) {
      var phone = $('input#phone').val();
      var check = checkPhoneNumber(phone, region);
      if (check.isValid) {
        $('#send-btn').removeClass('disabled');
        return check.e164Formatted;
      }
    }
    $('#send-btn').addClass('disabled');
    return null;
  };
  
  $('a[data-country]').click(function() {
    $('#country')
        .data('country', $(this).data('country'))
        .data('region', $(this).data('region'))
        .children('span').first().html('+' + $(this).data('country') + '&nbsp;');
        
    checkPhone();
    
    ga && ga('send', 'event', 'SelectCountry', $(this).data('region'));
  });
  
  $('a[data-country][data-default]').click();
  
  
  var inputHandler = function() {
    checkPhone();
  };
  
  $('input#phone').change(inputHandler).keyup(inputHandler);
  $('#send-btn').click(function() {
    if ($(this).hasClass('disabled')) {
      return false;
    }
    
    $(this).blur();
    
    var phone = checkPhone();
    if (phone == null) {
      return;
    }
    
    var _btn = $(this);
    // _btn.button('sending');
    _btn.addClass('disabled');
    
    var param = {
      'phone': phone
    };
    
	$('#status').hide();
	
    ga && ga('send', 'event', 'SendSMS', 'Click');

    $.post('http://api.smalltalks.cc/api/send_link.json', param, function(data) {
      if (data.ok) {
		$('#status').show().animate({
		    opacity: 1,
		  }, 5000, function() {
		    $('#status').hide();
		  })
        ga && ga('send', 'event', 'SendSMS', 'Ok');
      } else {
        if (console) {
          console.log(data);
        }
      }
    }).always(function () {
      checkPhone();
    });
  }).addClass('disabled');

  
});
