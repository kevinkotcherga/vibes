class ApplicationController < ActionController::Base
  def after_sign_in_path_for(user)
    new_personality_questionnaire_path
  end
end
