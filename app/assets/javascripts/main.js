$(function (){

	$(".btn-new-question").on('click', function () {
		$(".new-question-modal").addClass( " show" )
	});

	var counter = 0;

	$(".edit_survey").on('submit', function (e) {
		e.preventDefault();

		var allInputs = ($('.edit_survey :input'));
		

		allInputs.each(function () {
			if (this.id && this.name) {
				this.id = this.id.replace(/[0-9]/g, counter);
				this.name = this.id.replace(/[0-9]/g, counter);
				console.log(this.id);
				console.log(this.name);
			}
		})

		var query = $('#survey_questions_attributes_' + counter + '_query');
		var required = $('#survey_questions_attributes_' + counter + '_required');
		var queryType = $('#survey_questions_attributes_' + counter + '_query_type');
		var position = $('#survey_questions_attributes_' + counter + '_position');

		var queryVal = query.val();
		var requiredVal = required.val();
		var queryTypeVal = queryType.val()
		var positionVal = position.val();

		counter++;

		var newLi = '<li class="new-question-li">' + queryVal + '<button class="question-delete">X</button></li>'

		$('.question-ul').append(newLi).html();
		
		$('.new-question-modal').removeClass("show");
		$('.new-question-modal').addClass(" hide");
	})
	

});