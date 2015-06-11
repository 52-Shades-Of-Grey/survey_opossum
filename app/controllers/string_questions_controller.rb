class StringQuestionsController < ApplicationController
  before_action :set_string_question, only: [:show, :edit, :update, :destroy]

  # GET /string_questions
  # GET /string_questions.json
  def index
    @string_questions = StringQuestion.all
  end

  # GET /string_questions/1
  # GET /string_questions/1.json
  def show
  end

  # GET /string_questions/new
  def new
    @string_question = StringQuestion.new
  end

  # GET /string_questions/1/edit
  def edit
  end

  # POST /string_questions
  # POST /string_questions.json
  def create
    @string_question = StringQuestion.new(string_question_params)

    respond_to do |format|
      if @string_question.save
        format.html { redirect_to @string_question, notice: 'String question was successfully created.' }
        format.json { render :show, status: :created, location: @string_question }
      else
        format.html { render :new }
        format.json { render json: @string_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /string_questions/1
  # PATCH/PUT /string_questions/1.json
  def update
    respond_to do |format|
      if @string_question.update(string_question_params)
        format.html { redirect_to @string_question, notice: 'String question was successfully updated.' }
        format.json { render :show, status: :ok, location: @string_question }
      else
        format.html { render :edit }
        format.json { render json: @string_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /string_questions/1
  # DELETE /string_questions/1.json
  def destroy
    @string_question.destroy
    respond_to do |format|
      format.html { redirect_to string_questions_url, notice: 'String question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_string_question
      @string_question = StringQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def string_question_params
      params.require(:string_question).permit(:query, :answer, :survey_id)
    end
end
