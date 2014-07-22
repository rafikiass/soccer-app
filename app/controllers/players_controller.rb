class PlayersController < ApplicationController
before_action :authenticate_admin!, :only => [:destroy, :edit, :update, :create]
def players
    
    @players = Player.all
    
  end 

  def new
    @player = Player.new
    
  end

  def create
    @player = Player.create(params[:player])
    redirect_to '/players'
  end

  def show
    @player = Player.friendly.find(params[:id])
    
  end

  def edit
    @player = Player.friendly.find(params[:id])
    
  end

  def update
    @player = Player.friendly.find(params[:id])
    @player.update(params[:player])
    redirect_to "/players/#{@player.slug}"
    
  end

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name)
  end

end
