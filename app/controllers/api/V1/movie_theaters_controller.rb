class Api::V1::MovieTheatersController < ActionController::API
  def details
    @movie_theater = MovieTheater.find(params[:id])
  end
end