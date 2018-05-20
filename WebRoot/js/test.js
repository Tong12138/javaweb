
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
    */
//    $.backstretch("img/1.jpg");
    
    /*
	    Modals
	*/
	
	var label = document.createElement('label');  //创建input节点
	label.innerHTML="hi!";
	var input = document.createElement('input');  //创建input节点
	input.setAttribute('type', 'checkbox');  //定义类型是checkbox
	var tt = document.createElement("div");
    tt.innerHTML = "<br/>";
      


	
	
	$(function(){
		
		
		document.getElementById('list_para').appendChild(tt);
		document.getElementById('list_para').appendChild(input ); //添加到form中显示
		document.getElementById('list_para').appendChild(label ); //添加到form中显示
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
