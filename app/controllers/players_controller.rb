class PlayersController < ApplicationController
before_action :authenticate_admin!, :only => [:destroy, :edit, :update, :create]

def players  
    @xmlplayers = Xmlsoccer::Client.new(api_key: 'VLQTPIPEUHYLQXSLUPZBDFGNGEPYPWSPTOIJIEJFUUTSWCLTKI', api_type: 'Demo')
    @players = @xmlplayers.get_players_by_team(team_id: '45')
    
  end 

  def new
    @player = Player.new
    
  end

  def create
    @player = Player.create(params[:player])
    redirect_to '/players'
  end

  def show
    @players = @xmlplayers.get_players_by_team(team_id: '45')
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
