class League < ActiveRecord::Base
  has_many :teams, -> { order 'teams.rank' } 
  
  has_and_belongs_to_many :users



  def team_list
    return team.split(",")
  end
  
  

  extend FriendlyId
  friendly_id :league, use: :slugged

end
