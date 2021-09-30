class ScorecardsController < ApplicationController

  def index
    scorecards = Scorecard.all
    render json: scorecards
  end
end
