class League < ActiveRecord::Base
  has_many :teams
  def team_list
    return team.split(",")
  end
end
