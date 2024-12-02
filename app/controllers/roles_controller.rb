class RolesController < ApplicationController
  def new
    @movies = Movie.all
    @role = Role.new
  end

  def create
    actor = Actor.find(params[:id])    
    @role = actor.roles.create(roles_params)
    if @role.save
      redirect_to actor
    else
      flash.now[:alert] = 'Erro ao tentar criar papel'
      render :new
    end
  end

  private

  def roles_params
    params.require(:role).permit(:movie, :name)
  end
end