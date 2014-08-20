class ApiColumnsForLeagueTable < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.integer :espn_league_id
      t.string :espn_shortname
      t.integer :football_api_comp_id
      t.string :sbnation_url
      t.string :twitter_handle
      t.remove :intro
    end
  end
end
