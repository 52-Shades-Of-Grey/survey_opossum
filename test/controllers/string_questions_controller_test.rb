require 'test_helper'

class StringQuestionsControllerTest < ActionController::TestCase
  setup do
    @string_question = string_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:string_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create string_question" do
    assert_difference('StringQuestion.count') do
      post :create, string_question: { answer: @string_question.answer, query: @string_question.query, survey_id: @string_question.survey_id }
    end

    assert_redirected_to string_question_path(assigns(:string_question))
  end

  test "should show string_question" do
    get :show, id: @string_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @string_question
    assert_response :success
  end

  test "should update string_question" do
    patch :update, id: @string_question, string_question: { answer: @string_question.answer, query: @string_question.query, survey_id: @string_question.survey_id }
    assert_redirected_to string_question_path(assigns(:string_question))
  end

  test "should destroy string_question" do
    assert_difference('StringQuestion.count', -1) do
      delete :destroy, id: @string_question
    end

    assert_redirected_to string_questions_path
  end
end
