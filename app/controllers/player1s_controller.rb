class Player1sController < ApplicationController

  def index
    scores = Player1.all 
    render json: scores
  end
  
end
