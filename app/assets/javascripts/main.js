var counter = 1;

$(function (){

	// $('.question-container').not(':last').hide();

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
				this.value = (counter+1);
			}
		});

		allSelects.each(function() {
			if ((this.id || this.name) && (this.name != 'utf8')) {
				this.id = this.id.replace(/[0-9]+/g, counter);
				this.name = this.name.replace(/\[[0-9]+\]/g, "[" + counter + "]");
			}
			if (this.type == "hidden") {
				this.value = (counter+1);
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
