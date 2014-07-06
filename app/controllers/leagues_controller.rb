class LeaguesController < ApplicationController

  def leagues
    @leagues = League.all
    
  end

  def new
    @league = League.new

  end
  
  def create
    @league = League.create(params[:league])
    flash[:success] = "League created."
    redirect_to "/leagues/#{@league.id}"
  end

  def show
    @league = League.friendly.find(params[:id])
  end

  def edit
    @league = League.friendly.find(params[:id])
  end

  def update
    @league = League.friendly.find(params[:id])
    @league.update(params[:league])
    flash[:success] = "League updated."
    redirect_to "/leagues/#{@league.id}"
  end

  def showTeam
    @team = Team.friendly.find(params[:id])
  end


  def destroy
    @league = League.friendly.find(params[:id])
    @league.destroy
    flash[:alert] = "League deleted."
    redirect_to "/leagues/"
  end



end
