class FavoritesController < ApplicationController

  
  def index
    if user_signed_in?
      @favorites = current_user
      @fav_leagues = current_user.leagues
      @fav_teams = current_user.teams
      @fav_players = current_user.players
    end
  end

  def show
     if user_signed_in?
      @favorites = current_user
      @fav_leagues = current_user.leagues
      @leagues = {}
      @teams = {}
      @fav_leagues.each do |league, team|
        @leagues[league] = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=#{league.football_api_comp_id}",
                    headers: {"Accept" => "application/json"}).body["teams"]
      end
      @fav_teams = current_user.teams

    end
      
  end
  
  def create
    favorite = Favorite.new(params[:type], current_user, params[:id])
    favorite.add_favorite!
    render json: {message: "OK"}, status: 201
  end

  def edit
    
  end

  def update
    
  end

  

  def destroy
    puts params[:type]
    if params[:type] == "League"
    league = League.find_by(id: params[:id])
    current_user.leagues.delete(league)
    render json: {message: "OK"}, status: 201
    elsif params[:type] == "Team"
      team = Team.find_by(id: params[:id])
      current_user.teams.delete(team)
      render json: {message: "OK"}, status: 201
    end
  end

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name)
  end

end
