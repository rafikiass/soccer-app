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
    
    end
  end

  def delete_favorite!
     if @type == "League"
      league = League.find_by(id: params[:id])
      @user.leagues.delete(league)

    elsif @type == "Team"
      team = Team.find_by(:id => @id)
      league = League.find_by(id: params[:id])

    end


  
  end

end