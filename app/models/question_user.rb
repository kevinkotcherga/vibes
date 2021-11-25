class QuestionUser < ApplicationRecord
  belongs_to :response
  belongs_to :question

  before_validation :fill_question

  private

  def fill_question
    return if question
    self.question = response.question
  end
end
