class ResponsesController < ApplicationController
  def new
    @survey = Survey.find_by_id(params[:id])
    if session[:counter] > @survey.questions.count
      redirect_to sessions_login_path, notice: 'Finished the survey, give yourself a cookie.'
    else
      session[:counter] ||= 1
    end
    questions = Question.where(survey_id: @survey.id, position: session[:counter])
    @question = questions[0]
    @answer = Answer.new
  end

  def create
  end
end
