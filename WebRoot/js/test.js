
$(document).ready(function(){ 
$("input[type='checkbox']").change(function() { 
	 var html=$(this).nextAll("label").html();
	 
	    if($(this).attr('checked')=='checked')
	    	{
	    	　$(this).attr("checked",false);
	    	}
	    else
	    	{
	    	　$(this).attr("checked",true);
	    	}
	    if($(this).attr('checked')=='checked')
	    	{ 
          alert(html+"完成");
	    	window.document.location.href="changecom.jsp?tag=1&Id="+html;
	    	}
	    else
	    	{
	    	window.document.location.href="changecom.jsp?tag=2&Id="+html;
	    	alert(html+"未完成");
	    	}
	        
}); 
});