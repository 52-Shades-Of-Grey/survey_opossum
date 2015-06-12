$(function (){

	$(".btn-new-question").on('click', function () {
		$(".new-question-modal").addClass( "new-question-modal show" )
	});

	$(".edit_survey").on('submit', function (e) {
		e.preventDefault();
		var queryValue = $('#survey_questions_attributes_0_query').val();
		var newLi = '<li class="new-question-li">' + queryValue + '<button class="question-delete">X</button></li>'

		$('.question-ul').append(newLi).html();
		$('.new-question-modal').removeClass("show");
		$('.new-question-modal').addClass("new-question-modal hide");
	})
	

});