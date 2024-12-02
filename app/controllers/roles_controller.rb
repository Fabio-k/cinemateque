class RolesController < ApplicationController
  def new
    @movies = Movie.all
    @role = Role.new
  end

  def create
    
  end

  private

  def roles_params
    params.require(:role).permit(:movie, :name)
  end
end