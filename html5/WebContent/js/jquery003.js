$(function() {
	$("ul > li").click(function() {
		$("ul > li").removeClass("on");
		$(this).addClass("on");
		let index = $(this).index();
		console.log(index);
		$(".contentBox > div").hide();
		$(".contentBox > div").eq(index).show();
	});
});