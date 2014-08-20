class AddColumnsForApIs < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.integer :espn_team_id
      t.string :espn_team_name
      t.integer :football_api_team_id
      t.string :twitter_handle
    end
  end

  def change
    change_table :teams do |t|
      t.integer :espn_league_id
      t.string :espn_shortname
      t.integer :football_api_comp_id
      t.string :sbnation_url
      t.string :twitter_handle
    end
  end
  
end
