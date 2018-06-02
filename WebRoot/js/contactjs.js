/**
 * 
 */


jQuery(document).ready(function() {
	
	//alert('qnmd');
	
	
    $('#contactForm').on('submit', function(e) {
  	
    	//alert('succeed!');
    	alert("succeed");
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


