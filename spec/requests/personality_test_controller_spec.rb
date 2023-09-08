require 'rails_helper'

RSpec.describe PersonalityTestController, type: :controller do
 
  describe "GET #start" do
    it "assigns @questions" do
      question1 = Question.create(text: "Question 1")
      question2 = Question.create(text: "Question 2")
      
      get :start 

      expect(assigns(:questions)).to eq([question1, question2])
    end
  
    it "assigns a new @user_responses" do
      get :start 
  
      expect(assigns(:user_responses)).to be_a_new(UserResponse)
    end
  
    it "renders the start template" do
      get :start 
      expect(response).to render_template("start")
    end
  end

  describe "POST #finish" do
    it "creates user responses and calculates the result" do
      question1 = Question.create(text: "Question 1")
      question2 = Question.create(text: "Question 2")

      answer1 = Answer.create(question: question1, category: 'Introvert')
      answer2 = Answer.create(question: question2, category: 'Extrovert')

      user_responses_params = {
        question1.id => answer1.id,
        question2.id => answer2.id
      }

      post :finish, params: { user_responses: user_responses_params }

      expect(UserResponse.count).to eq(2)

      expect(flash[:result]).to eq('Extrovert')

      expect(response).to redirect_to(personality_test_result_path)
    end
  end
end
