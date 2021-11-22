class QuestionUser < ApplicationRecord
  belongs_to :user
  belongs_to :response
  belongs_to :question
end
