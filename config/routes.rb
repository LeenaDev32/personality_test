Rails.application.routes.draw do
  root 'personality_test#start'
  post 'personality_test/finish'
  get 'personality_test/result'
end
