$(function() {
	/*$(".menu").hover(function() {
		$(this).find(".sub").show();
		$(this).find("a:first").addClass("on");
	}, function () {
		$(this).find(".sub").hide();
		$(this).find("a:first").removerClass("on");
		
	});*/
	
	$(".menu").hover(function() { /*애니메이션은 queue라서 누적되기 때문에 stop메소드를 넣어준다.*/
		$(this).find(".sub").stop(true).slideDown(300);
		$(this).find("a:first").addClass("on");
	}, function () {
		$(this).find(".sub").slideUp(300);
		$(this).find("a:first").removeClass("on");
		
	});
	
});