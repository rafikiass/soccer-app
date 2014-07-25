class TeamsController < ApplicationController
  before_action :authenticate_admin!, :only => [:destroy, :edit, :update, :create]

  def teams
    redirect_to '/leagues' unless user_signed_in? && current_user.admin?
    @teams = Team.order(:rank)
    
  end 

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(params[:team])
    flash[:success] = "Team created."
    redirect_to "/teams/#{@team.slug}"
  end

  def show
    @team = Team.friendly.find(params[:id])
    
  end

  def edit
    @team = Team.friendly.find(params[:id])
  end

  def update
    
    @team = Team.friendly.find(params[:id])
    @team.update(params[:team])
    flash[:success] = "Team updated."
    redirect_to "/teams/#{@team.slug}"
  end

  def destroy
    @team = Team.friendly.find(params[:id])
    @team.destroy
  end

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name)
  end

end
