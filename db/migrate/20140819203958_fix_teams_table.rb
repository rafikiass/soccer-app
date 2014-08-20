class FixTeamsTable < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.rename :espn_league_id, :espn_team_id  
      t.rename :espn_shortname, :espn_team_name
      t.rename :football_api_comp_id, :football_api_team_id
      t.remove :sbnation_url
      
    end
  end
end
