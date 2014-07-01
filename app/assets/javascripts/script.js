$(document).ready(function(){
	$(".hidden-list1").hide();
	$(".reveal-list1").click(function(){
		$(".hidden-list1").slideToggle();
	});
});

$(document).ready(function(){
	$(".hidden-list2").hide()
	$(".reveal-list2").click(function(){
		$(".hidden-list2").slideToggle();
	});
});

// $(document).ready(function () {
//     $(".hoverli").hover(
//   function () {
//      $('ul.file_menu').stop(true, true).slideDown('medium');
//   }, 
//   function () {
//      $('ul.file_menu').stop(true,true).slideUp('medium');
//   }
// );

// });