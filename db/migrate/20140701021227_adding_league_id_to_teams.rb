class AddingLeagueIdToTeams < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.integer :league_id
    end
  end
end
