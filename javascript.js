// 
//  javascript.js
//  imk_proyek
//  
//  Created by Mohamad Ariau Akbar on 2011-01-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
// 

$(function(){
	
	$('li:even').removeClass('hover');
	$('li:odd').removeClass('hover');
	$('li:even').addClass('oddColor');
	$('li:odd').addClass('evenColor');
	
	$(function(){
		$('li').hover(function(){
			$(this).removeClass('oddColor');
			$(this).removeClass('evenColor');
			$(this).addClass('hover');

		}, function(){
			$('li:even').addClass('oddColor');
			$('li:odd').addClass('evenColor');
			$(this).removeClass('hover');	
		});
	});
});

$(function(){
	
	
	
	
});
