class League < ActiveRecord::Base
  has_many :teams
  def team_list
    return team.split(",")
  end
  
  

  extend FriendlyId
  friendly_id :league, use: :slugged

end
