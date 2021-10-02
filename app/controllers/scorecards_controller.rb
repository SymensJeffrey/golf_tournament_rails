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

  def update
    scorecard = Scorecard.find_by(id: params[:id])
    scorecard.name = params[:name] || scorecard.name
    scorecard.hole1 = params[:hole1] || scorecard.hole1
    scorecard.hole2 = params[:hole2] || scorecard.hole2
    scorecard.hole3 = params[:hole3] || scorecard.hole3
    scorecard.hole4 = params[:hole4] || scorecard.hole4
    scorecard.hole5 = params[:hole5] || scorecard.hole5
    scorecard.hole6 = params[:hole6] || scorecard.hole6
    scorecard.hole7 = params[:hole7] || scorecard.hole7
    scorecard.hole8 = params[:hole8] || scorecard.hole8
    scorecard.hole9 = params[:hole9] || scorecard.hole9
    scorecard.front_total = scorecard.hole1 + scorecard.hole2 + scorecard.hole3 + scorecard.hole4 + scorecard.hole5 + scorecard.hole6 + scorecard.hole7 + scorecard.hole8 + scorecard.hole9
    scorecard.hole10 = params[:hole10] || scorecard.hole10
    scorecard.hole11 = params[:hole11] || scorecard.hole11
    scorecard.hole12 = params[:hole12] || scorecard.hole12
    scorecard.hole13 = params[:hole13] || scorecard.hole13
    scorecard.hole14 = params[:hole14] || scorecard.hole14
    scorecard.hole15 = params[:hole15] || scorecard.hole15
    scorecard.hole16 = params[:hole16] || scorecard.hole16
    scorecard.hole17 = params[:hole17] || scorecard.hole17
    scorecard.hole18 = params[:hole18] || scorecard.hole18
    scorecard.back_total = scorecard.hole10 + scorecard.hole11 + scorecard.hole12 + scorecard.hole13 + scorecard.hole14 + scorecard.hole15 + scorecard.hole16 + scorecard.hole17 + scorecard.hole18
    scorecard.total_score = scorecard.front_total + scorecard.back_total
    scorecard.save

    render json: scorecard
  end
  
end
