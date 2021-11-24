class Question < ApplicationRecord
  has_many :responses, dependent: :destroy
  has_many :question_users
end
