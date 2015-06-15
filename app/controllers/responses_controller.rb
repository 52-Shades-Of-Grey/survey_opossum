class ResponsesController < ApplicationController
  def new
    @survey = Survey.find_by_id(params[:id])
    if !session[:counter]
      session[:counter] = 1
    elsif session[:counter] > @survey.questions.count
      session[:counter] = 1
      redirect_to all_surveys_path, notice: 'Finished the survey, give yourself a cookie.'
    else
      session[:counter] ||= 1
    end
    questions = Question.where(survey_id: @survey.id, position: session[:counter])
    @question = questions[0]
    @answer = Answer.new
  end

  def success

  end

  def all_surveys
    session[:counter] = 1
    @surveys = Survey.all
  end
end
