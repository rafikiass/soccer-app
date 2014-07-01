class TeamsController < ApplicationController

  def teams
    @teams = Team.all
  end 

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(params[:team])
    flash[:success] = "Team created."
    redirect_to "/teams/#{@team.id}"
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(params[:team])
    flash[:success] = "Team updated."
    redirect_to "/teams/#{@team.id}"
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end

end
