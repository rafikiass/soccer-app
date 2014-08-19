class LeaguesController < ApplicationController

before_action :authenticate_admin!, :only => [:destroy, :edit, :update, :create]

  def leagues
    @leagues = League.all
    
    
  end

  def new
    @league = League.new


  end
  
  def create
    @league = League.create(params[:league])
    flash[:success] = "League created."
    redirect_to "/leagues/#{@league.slug}"
  end

  def show
    
    @league = League.friendly.find(params[:id])
    @rank = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=1204",
                    headers: {"Accept" => "application/json"}).body
    @sbnation = SimpleRSS.parse open('http://www.sbnation.com/rss/section/epl/index.xml')
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

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name)
  end


end
