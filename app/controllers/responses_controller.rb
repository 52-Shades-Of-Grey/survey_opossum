class ResponsesController < ApplicationController
  def new
    @survey = Survey.find_by_id(params[:id])
    
  end

  def create
  end
end
