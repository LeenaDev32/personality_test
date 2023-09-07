class PersonalityTestController < ApplicationController
  def start
    @questions = Question.all
    @user_responses = UserResponse.new
  end

  def finish
    user_responses = []
  
    params[:user_responses].each do |question_id, answer_id|
      user_responses << UserResponse.new(question_id: question_id, answer_id: answer_id)
    end
  
    UserResponse.transaction do
      user_responses.each(&:save)
    end
  
    all_response_ids = user_responses.map(&:id)
  
    response = UserResponse.where(id: all_response_ids).joins(:answer)
  
    scores = response.group('answers.category').count
  
    introvert_score = scores['Introvert'] || 0
    extrovert_score = scores['Extrovert'] || 0
  
    @result = introvert_score > extrovert_score ? 'Introvert' : 'Extrovert'
  
    flash[:result] = @result
    redirect_to personality_test_result_path
  end
end
