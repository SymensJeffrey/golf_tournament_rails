class Player2sController < ApplicationController

  def index
    scores = Player2.all 
    render json: scores
  end

end
