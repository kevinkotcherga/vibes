class MatchesController < ApplicationController
  def launch
  end

  def result
  end

  def matched_users
    User.joins(:responses)
        .where(responses: { id: responses.pluck(:id) })
        .where.not(users: { id: id }).distinct
    redirect_to result_match_path(@matches)
  end

  def reveal
  end

  def picture
  end

  def activity
  end
end
