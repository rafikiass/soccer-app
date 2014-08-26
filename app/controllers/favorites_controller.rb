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
      @fav_teams = current_user.teams
      @fav_players = current_user.players
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
    league = League.find_by(id: params[:id])
    puts current_user.leagues
    current_user.leagues.delete(league)
    render json: {message: "OK"}, status: 204
  end

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name)
  end

end
