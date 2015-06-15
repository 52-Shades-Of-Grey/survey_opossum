var counter = 1;

$(function (){

	var hideQuestions = function() {
		var allQuestionCont = $('.outer-container').find('.question-container');
		allQuestionCont.not(':last').hide();
	};

	var clearValues = function () {
		var allQuestionCont = $('.outer-container').find('.question-container');
		var lastQuest = allQuestionCont.last();	
		var lastInputs = lastQuest.find('input');
		for (i = 0; i < lastInputs.length; i++) {
			lastInputs[i].value = '';
		}
	};

	hideQuestions();

	$(".btn-new-question").on('click', function () {


		var clone = $(".question-container:last").clone();
		$(".question-container:last").after(clone);


		var lastContainer = $(".question-container:last");
		allInputs = lastContainer.find('input');
		allSelects = lastContainer.find('select');
		allLabels = lastContainer.find('label');


		allInputs.each(function() {
			if ((this.id || this.name) && (this.name != 'utf8')) {
				this.id = this.id.replace(/[0-9]+/g, counter);
				this.name = this.name.replace(/\[[0-9]+\]/g, "[" + counter + "]");
			}
			if (this.type == "hidden") {
				this.value = (counter);
			}
		});

		allSelects.each(function() {
			if ((this.id || this.name) && (this.name != 'utf8')) {
				this.id = this.id.replace(/[0-9]+/g, counter);
				this.name = this.name.replace(/\[[0-9]+\]/g, "[" + counter + "]");
			}
			if (this.type == "hidden") {
				this.value = (counter);
			}
		});

		allLabels.each(function() {
			if ($(this).attr('for')) {
				var self = $(this);
				var forAttr = $(this).attr('for')
				self.attr('for', forAttr.replace(/[0-9]+/g, counter));
			}
		});
		hideQuestions();
		counter++
	});

	$(".btn-create-survey").on('click', function() {
		$('.edit_survey').submit();
	});

});
