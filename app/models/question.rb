class Question < ApplicationRecord
  has_many :answers
  has_many :user_responses
end
