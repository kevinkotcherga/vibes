class Question < ApplicationRecord
  has_many :responses
  has_many :question_users
end
