require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @start_time = Time.now
    @letters = Array.new(10) { ('A'..'Z').to_a.sample } # grid generator
  end

  def score
    # @result = time_taken = Time.now - Gamescontroller.start_time
    @letters = params[:letters]
    @included = params[:word].chars.all? { |letter| params[:word].count(letter) <= @letters.count(letter) } # included function
    # @result > 60.0 ? 0 : params[:word].size * (1.0 - @result / 60.0) # score computer
  end
end
