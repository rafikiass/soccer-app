class League < ActiveRecord::Base
  def team_list
    return team.split(",")
  end
end
