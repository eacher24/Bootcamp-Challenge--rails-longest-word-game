class GamesController < ApplicationController
  def new
    @Letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @guess = params[:word]
  end
end
