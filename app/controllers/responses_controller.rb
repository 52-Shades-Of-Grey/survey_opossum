class ResponsesController < ApplicationController
  def new
    @survey = Survey.find_by_id(params[:id])
    previous_question = Question.find_by_id(params[:question_id])
    next_position = (previous_question ? previous_question.position + 1 : 0)
    question = Question.where(survey_id: @survey.id)
    @question = question[next_position]
    if @question.blank?
      redirect_to all_surveys_path, notice: 'Finished the survey, give yourself a cookie.'
    end
    @answer = Answer.new
  end

  def all_surveys
    @surveys = Survey.all
  end
end
