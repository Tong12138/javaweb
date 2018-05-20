/**
 * 
 */


jQuery(document).ready(function() {
	
	//alert('qnmd');
	
	
    $('#contactForm').on('submit', function(e) {
  	
    	alert('cnm!');
  	$(this).find('textarea').each(function(){
  		
  		if( $(this).val() == "" ) {
  			e.preventDefault();
  			alert('null input!');
  		}
  		else {
  			
  		}
  	});
  	
  });

    
});


