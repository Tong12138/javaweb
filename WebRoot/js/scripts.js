
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
    */
//    $.backstretch("img/1.jpg");
    
    /*
	    Modals
	*/
	$('.launch-modal').on('click', function(e){
		e.preventDefault();
		$( '#' + $(this).data('modal-id') ).modal();
	});
    
    /*
        Form validation
    */
    $('.registration-form input[type="text"], .registration-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.registration-form').on('submit', function(e) {
    	$(this).find('input[name="form-first-name"],texarea').each(function(){
    		if(1)
			{
			alert('user name has been signed!');
			}
    	});
    	
    	$(this).find('input[type="text"], textarea').each(function(){
    		
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	
    });
    
    
});
