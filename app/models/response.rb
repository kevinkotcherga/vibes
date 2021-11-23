class Response < ApplicationRecord
  belongs_to :question
  has_many :question_users
end
