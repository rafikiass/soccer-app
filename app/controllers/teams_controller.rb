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
    @schedule = Unirest.get("http://football-api.com/api/?Action=fixtures&APIKey=#{ENV['FOOTBALL_API']}&comp_id=1204&&from_date=05.08.2014&&to_date=05.08.2015",
                    headers:{"Accept" => "application/json"}).body
    @matches = @schedule["matches"]
    @rank = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=1204",
                    headers: {"Accept" => "application/json"}).body
    @headlines = Unirest.get("http://api.espn.com/v1/sports/soccer/eng.1/teams/360/news?apikey=#{ENV['ESPN_KEY']}",
                    headers: {"Accept" => "application/json"}).body
    @sbnation = SimpleRSS.parse open('http://www.sbnation.com/rss/section/epl/index.xml')
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
