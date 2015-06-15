var counter = 0;

$(function (){

	$('.question-container').not(':last').hide();

	$(".btn-new-question").on('click', function () {


		var clone = $(".question-container:last").clone();
		$(".question-container:last").after(clone);


		var lastContainer = $(".question-container:last");
		allInputs = lastContainer.find('input');
		allLabels = lastContainer.find('label');


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

});