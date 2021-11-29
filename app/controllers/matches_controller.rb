class MatchesController < ApplicationController
  def launch
  end

  def result
    @matching = Matching.find(params[:id])
    @user = User.find(@matching.to_user_id)
  end

  def matched_users
    matching_user = current_user.pick_user
    @matching = Matching.create(from_user: current_user, to_user: matching_user, chatroom: Chatroom.create)

    if @matching.valid?
      redirect_to result_match_path(@matching)
    else
      redirect_to matches_launch_path
    end
  end

  def reveal
  end

  def picture
    @user = User.find(Matching.find(params[:id]).to_user_id)
  end

  def activity
  end
end
