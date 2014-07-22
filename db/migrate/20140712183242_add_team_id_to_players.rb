class AddTeamIdToPlayers < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.integer :team_id
    end
  end
end
