class User::VotesController < ApplicationController
  def leaderboard
    @top_10 = Vote.get_top_ten
    @bottom_10 = Vote.get_bottom_ten
  end
end
