class Player3sController < ApplicationController

  def index
    scores = Player3.all 
    render json: scores
  end

end
