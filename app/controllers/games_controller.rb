class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @guess = params[:word]
    @letters = params[:letters]

    if valid_word?(@guess) && included?(@letters, @guess.upcase)
      @answer = "Congratulations!"
    elsif valid_word?(@guess)
      @answer = "Not in the letters provided"
    else
      @answer = "Sorry, not an English Word "
    end
  end


  private


  def valid_word?(attempt)
    # url = "" => Le Wagon API is currently not working
    # file = URI.open(url).read
    # words = JSON.parse(file)
    # return words["found"]
    return true

  end

  def included?(letter, attempt)
    attempt.chars.all? do |letter|
      attempt.count(letter) <= letter.count(letter)
    end
  end


end
