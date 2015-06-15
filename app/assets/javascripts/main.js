alert("loaded page")
// $(function (){
// 	$("btn-new-question").on('click', function() {
// 		alert("it worked!");
// 		$(".fields-for").clone().appendTo(".question-holder");
// 		});
// });






$(function (){

	$(".btn-new-question").on('click', function () {
		alert("new button click");
		$("div#questions-holder > div.fields-for > div.field").clone().appendTo("#questions-holder");
	});


	$(".btn-create-survey").on('click', function() {
		$('.edit_survey').submit();
	});


	$('#add-question').on('submit', function(e) {
		e.preventDefault();


		var query = $('.query').val();
		var description = $('.description').val();
		var required = $('.required').val();
		var queryType = $('.query-type').val();
		var position = $('.position').val();

		var newLi = '<li class="new-question-li">' + query + description + required + queryType + position + '<button class="question-delete">X</button></li>'

		$('.question-ul').append(newLi).html();

		$('.new-question-modal').removeClass("show");
		$('.new-question-modal').addClass(" hide");

	})




});





var liNum = $('.question-ul li').length;
		var counter = liNum + 1;

		var allInputs = ($('.edit_survey :input'));
		var allLabels = ($('.edit_survey label'));

		allInputs.each(function() {
			if ((this.id || this.name) && (this.name != 'utf8')) {
				this.id = this.id.replace(/[0-9]/g, counter);
				this.name = this.name.replace(/[0-9]/g, counter);
			}
		});

		allLabels.each(function() {
			if ($(this).attr('for')) {
				var self = $(this);
				var forAttr = $(this).attr('for')
				self.attr('for', forAttr.replace(/[0-9]/g, counter));
			}
		});

		var query = $('#survey_questions_attributes_' + counter + '_query');
		var required = $('#survey_questions_attributes_' + counter + '_required');
		var queryType = $('#survey_questions_attributes_' + counter + '_query_type');
		var position = $('#survey_questions_attributes_' + counter + '_position');

		var queryVal = query.val();
		var requiredVal = required.val();
		var queryTypeVal = queryType.val()
		var positionVal = position.val();
