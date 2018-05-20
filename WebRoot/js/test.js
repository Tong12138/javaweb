
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
    */
//    $.backstretch("img/1.jpg");
    
    /*
	    Modals
	*/
	
	$(function(){
	    var s = $("input[name='check']");
	    s.each(function(i) {
 	         // alert('cnm!');
	            $(this).click(function(){
	                if(this.checked==true){
	                      alert(this.value);
	                }
	             });
	        }); 
	})
    
});
