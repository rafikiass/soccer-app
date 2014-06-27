class TeamsController < ApplicationController

  def teams
    @teams = Team.all
  end 

  def new
    @team = Team.new
  end

  def create
    Team.create(params[:team])
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
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end

end
