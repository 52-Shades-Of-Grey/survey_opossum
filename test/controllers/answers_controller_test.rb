require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
    @answer = answers(:one)
    @question = questions(:one)
    @user = users(:one)
    session[:user_id] = @user.id
    @survey.user_id = @user.id
    @question.survey_id = @survey.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { question_id: @answer.question_id, response: @answer.response }
    end

    assert_redirected_to new_response_path
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    patch :update, id: @answer, answer: { question_id: @answer.question_id, response: @answer.response }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
