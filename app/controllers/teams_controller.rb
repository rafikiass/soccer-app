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
    @schedule = Unirest.get("http://football-api.com/api/?Action=fixtures&APIKey=#{ENV['FOOTBALL_API']}&comp_id=#{@team.league.football_api_comp_id}&&from_date=05.08.2014&&to_date=05.08.2015",
                    headers:{"Accept" => "application/json"}).body
    @matches = @schedule["matches"]
    @matches.each do |match|
      puts match
    end
    @ranks = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=#{@team.league.football_api_comp_id}",
                    headers: {"Accept" => "application/json"}).body["teams"]
    @headlines = Unirest.get("http://api.espn.com/v1/sports/soccer/#{@team.league.espn_shortname}/teams/#{@team.espn_team_id}/news?apikey=#{ENV['ESPN_KEY']}",
                    headers: {"Accept" => "application/json"}).body["headlines"]
    @sbnation = SimpleRSS.parse open("http://www.sbnation.com/rss/section/#{@team.league.sbnation_url}/index.xml")
    if @team.guardian != nil
      @guardian = SimpleRSS.parse open("http://www.theguardian.com/football/#{@team.guardian}/rss")
    else 
      @guardian = SimpleRSS.parse open("http://www.theguardian.com/football/arsenal/rss")
    end
    
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
