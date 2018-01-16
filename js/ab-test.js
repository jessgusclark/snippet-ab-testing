$.fn.ABTest = function(total){
	
	show = Math.floor((Math.random() * total) + 1);
	for (i = 1; i <= total; i++) { 
		 if (i != show){
			$(".abtestV" + i).remove();	
		}else{
			$(".abtestV" + i).removeClass("hide");	
		}
	}

	if(typeof ga !== "undefined"){
		ga('set', 'dimension1', 'variation ' + show);
	}
	
}