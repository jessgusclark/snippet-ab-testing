$.fn.ABTest = function(total, show){
	
	for (i = 1; i <= total; i++) { 
		 if (i != show){
			$(".abtestV" + i).remove();	
		}else{
			$(".abtestV" + i).removeClass("hide");	
		}
	}
	
}
