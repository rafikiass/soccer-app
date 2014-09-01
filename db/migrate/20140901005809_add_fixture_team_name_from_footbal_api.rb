class AddFixtureTeamNameFromFootbalApi < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.string :football_fix_team_name
    end
  end
end
