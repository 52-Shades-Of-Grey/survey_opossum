alert("loaded page")
// $(function (){
// 	$("btn-new-question").on('click', function() {
// 		alert("it worked!");
// 		$(".fields-for").clone().appendTo(".question-holder");
// 		});
// });
var counter = 0;





$(function (){

	$(".btn-new-question").on('click', function () {
		alert("new button click");
		var clone = $(".question-container:last").clone();
		$(".question-container:last").after(clone);

		var lastContainer = $(".question-container:last");
		allInputs = lastContainer.find('input')
		allLabels = lastContainer.find('label')

		allInputs.each(function() {
			if ((this.id || this.name) && (this.name != 'utf8')) {
				this.id = this.id.replace(/[0-9]+/g, counter);
				this.name = this.name.replace(/\[[0-9]+\]/g, "[" + counter + "]");
			}
		});

		allLabels.each(function() {
			if ($(this).attr('for')) {
				var self = $(this);
				var forAttr = $(this).attr('for')
				self.attr('for', forAttr.replace(/[0-9]+/g, counter));
			}
		});
		counter++
	});




	$(".btn-create-survey").on('click', function() {
		$('.edit_survey').submit();
	});


	var counter = 0;

	$('#add-question').on('submit', function(e) {
		e.preventDefault();


		var query = $('.query').val();
		var description = $('.description').val();
		var required = $('.required').val();
		var queryType = $('.query-type').val();
		var position = $('.position').val();


		var input = $('#survey_questions_attributes_0_query');
		// var label = input.siblings('for');
		// console.log(label);

		counter ++;	

		
		// label.attr('for', 'lfbaslkfjsdlj');
		input.attr('id', 'survey_questions_attributes_' + counter + '_query');
		input.attr('name', '[survey_questions_attributes_][' + counter + '][_query]');
		input.attr('value', query);

		var newLi = '<li class="new-question-li">' + query + '<button class="question-delete">X</button></li>'

		$('.question-ul').append(newLi).html();

		$('.new-question-modal').removeClass("show");
		$('.new-question-modal').addClass(" hide");

			
		var queryHtml = "<div class='field'><label for='survey_questions_attributes_" + (counter + 1) + "_query'>Query</label><br><input type='text' id='survey_questions_attributes_0_query'></div>";

		$('.field:first').before(queryHtml);	

	});





});





<<<<<<< HEAD
// var liNum = $('.question-ul li').length;
// 		var counter = liNum + 1;

		var allInputs = ($('.edit_survey :input'));
// 		var allLabels = ($('.edit_survey label'));	

		allInputs.each(function() {
			if (this.id || this.name) {
				this.id = this.id.replace(/[0-9]/, counter);
				this.name = this.name.replace(/\[[0-9]+\]/g, counter);
			}
		});

		allLabels.each(function() {
			if ($(this).attr('for')) {
				var self = $(this);
				var forAttr = $(this).attr('for');
				self.attr('for', forAttr.replace(/\[[0-9]+\]/,'[' + counter + ']'));
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





=======
var liNum = $('.question-ul li').length;
		var counter = liNum + 1;
>>>>>>> f4538fee3ff19c447aa5249ff7cdc829ba53fd50

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
