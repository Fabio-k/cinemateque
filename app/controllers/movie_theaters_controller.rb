class MovieTheatersController < ApplicationController
  def index
    @movie_theaters = MovieTheater.all
  end

  def new
    @movie_theater = MovieTheater.new
  end

  def create
    @movie_theater = MovieTheater.new(params.require(:movie_theater).permit(:name, :city))

    if @movie_theater.save
      redirect_to movie_theater_url(id: @movie_theater.id), notice: t('.success')
    else
      flash.now[:alert] = t('.failure')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @movie_theater = MovieTheater.find(params[:id])
  end

  def details
    
  end
  
end
