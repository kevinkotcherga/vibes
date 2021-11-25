class MatchesController < ApplicationController
  def launch
  end

  def result
  end

  def matched_users
    matching_user = current_user.pick_user
    matching = Matching.create(from_user: current_user, to_user: matching_user)

    if matching.valid?
      redirect_to result_match_path(matching)
    else
      redirect_to matches_launch_path
    end
  end

  def reveal
  end

  def picture
  end

  def activity
  end
end
