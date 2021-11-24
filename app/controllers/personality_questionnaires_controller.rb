class PersonalityQuestionnairesController < ApplicationController
  before_action :authenticate_user!

  def new
    @questions = Question.all
    @user = current_user
  end

  def create
    @questions = Question.all
    @user = current_user

    @user.update!(questionnaire_params)
    redirect_to root_path
  end

  private

  def questionnaire_params
    params.require(:user).permit(response_ids: [])
  end
end
