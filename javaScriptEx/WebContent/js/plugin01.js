
//https://imagesloaded.desandro.com/ 제이쿼리 복 붙.


$(function() {
	images = [
		"img/img1.jpg",	
		"img/img2.jpg",	
		"img/img3.jpg",	
		"img/img4.jpg",	
		"img/img5.jpg"	
	];
	
	var clickCnt = 0;
	
	$("#imgDel").click(function() {
		clickCnt = 0;
		$(".picture").empty();
	});



$("#imgAdd").cilck(function() {
	for(var i = images.length*clickCnt++; i<images.length*clickCnt; i++){
			$(".picture").append("<div><img src='" + images[i % images.length] + "'/><div>");
	}
	var addImg = (clickCnt - 1) == 0 ? "": (":gt(" + (images.length * (clickCnt - 1) - 1))+")"; 
													//4보다 큰것부터 들어간다.(5 이상 부터 들어가라.)  gt:greate than
	
								//each 각각에 대해서 들어가라.
	$(".picture > div" + addImg).each(function() {//메서드 체이닝.
		var thisImg = $(this); //추가
		thisImg.imagesLoaded() //수정
		.always(function() {
			console.log("always");
		})
		.done(function() {
			console.log("done");
	//		thisImg.find(".loader").hide(); //추가
		})
		.fail(function() {
			console.log("fail");
			thisImg.hide(); //추가
		})
		.progress(function() {
			console.log("progress");
			thisImg.prepend("<div class = 'loader'>Loading...</div>"); //추가
			});
		});
	});
});


//복사한 것
$(function(){
	   images = [
	      "images/img1.jpg",
	      "images/img2.jpg",
	      "images/img3.jpg",
	      "images/img4.jpg",
	      "images/img5.jpg"
	   ];
	   
	   var clickCnt = 0;
	   
	   $("#imgDel").click(function(){
	      clickCnt = 0;
	      $(".picture").empty();
	   });
	   
	   $("#imgAdd").click(function(){
	      for(var i = images.length * clickCnt++; i < images.length * clickCnt; i++){
	         $(".picture").append("<div><img src='" + images[i % images.length] + "' /><div>");
	      }
	      var addImg = (clickCnt - 1) == 0?"": (":gt(" + (images.length * (clickCnt - 1) - 1)) + ")";
	      $(".picture > div" + addImg).each(function(){
	         var thisImg = $(this);
	         thisImg.imagesLoaded()
	         .always(function(){
	            console.log("always");
	         })
	         .done(function(){
	            console.log("done");
	            thisImg.find(".loader").hide();
	         })
	         .fail(function(){
	            console.log("fail");
	            thisImg.hide();
	         })
	         .progress(function(){
	            console.log("progress");
	            thisImg.prepend("<div class='loader'>Loading...</div>");
	         });
	      });
	   });
	});


