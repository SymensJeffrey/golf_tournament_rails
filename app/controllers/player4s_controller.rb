class Player4sController < ApplicationController

  def index
    scores = Player4.all 
    render json: scores
  end

end
