class MatchesController < ApplicationController
  def launch
  end

  def result
  end

  def matched_users
    user_search = User.joins(:responses).where(responses: { id: responses.pluck(:id) }).where.not(users: { id: id }).distinct
    matching = Matching.create(from_user: current_user, to_user: user_search)
    redirect_to result_match_path(matching)
  end

  def reveal
  end

  def picture
  end

  def activity
  end
end
