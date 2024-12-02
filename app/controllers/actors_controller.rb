class ActorsController < ApplicationController
  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actors_params)
    if @actor.save
      redirect_to @actor
    else
      flash.now[:alert] = 'Erro ao tentar criar ator'
      render 'new'
    end
  end

  def show
    @actor = Actor.find(params[:id])
  end

  private

  def actors_params
    params.require(:actor).permit(:name, :birth_date, :nacionality)
  end
end