class Favorite

 attr_accessor :type, :user, :id


  def initialize(type, user, id)
    @type =  type
    @user = user
    @id = id
  end


  def add_favorite!
    if @type == "League"
    league = League.find_by(:id => @id)
    @user.leagues << league
    
    elsif @type == "Team"
    team = Team.find_by(:id => @id)
    @user.teams << team
    
    else
    player = Player.find_by(:id => @id)
    @user.players << player
    
    end
  end


  def delete_favorite!
     if @type == "League"
      leagues = League.find_by(:id => @id)
      @user.leagues.destroy
    end
  end

end