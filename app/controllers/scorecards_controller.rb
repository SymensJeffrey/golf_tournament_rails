class ScorecardsController < ApplicationController

  def index
    scorecards = Scorecard.all
    render json: scorecards
  end

  def create
    scorecard = Scorecard.new(
      name: params[:name],
      user_id: current_user.id,
      hole1: 0,
      hole2: 0,
      hole3: 0,
      hole4: 0,
      hole5: 0,
      hole6: 0,
      hole7: 0,
      hole8: 0,
      hole9: 0,
      front_total: 0,
      hole10: 0,
      hole11: 0,
      hole12: 0,
      hole13: 0,
      hole14: 0,
      hole15: 0,
      hole16: 0,
      hole17: 0,
      hole18: 0,
      back_total: 0,
      total_score: 0
    )
    if scorecard.save
      render json: scorecard
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
