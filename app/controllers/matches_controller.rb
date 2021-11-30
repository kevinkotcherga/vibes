class MatchesController < ApplicationController
  def launch
    @create_match = Matching.new
    if Matching.exists?(from_user_id: current_user.id)
      @matching = Matching.find_by(from_user_id: current_user.id)
    elsif Matching.exists?(to_user_id: current_user.id)
      @matching = Matching.find_by(to_user_id: current_user.id)
    end
  end

  def result
    @matching = Matching.find(params[:id])
    @user = User.find(@matching.to_user_id)
    my_responses = current_user.responses
    lover_responses = @user.responses
    @responses_name = (my_responses & lover_responses)
  end

  def matched_users
    matching_user = current_user.pick_user
    @matching = Matching.new(from_user: current_user, to_user: matching_user, chatroom: Chatroom.create)

    if @matching.save
      @matching.status = "valid"
      redirect_to result_match_path(@matching)
    else
      redirect_to matches_launch_path
    end
  end

  def reveal
  end

  def picture
    @matching = Matching.find(params[:id])
    @user = User.find(Matching.find(params[:id]).to_user_id)
  end

  def activity
  end
end
