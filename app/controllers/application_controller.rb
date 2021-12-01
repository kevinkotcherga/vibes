class ApplicationController < ActionController::Base
  def after_sign_in_path_for(user)
    if user.created_matchings.any? || user.received_matchings.any?
      matches_launch_path
    else
      new_personality_questionnaire_path
    end
  end
end
