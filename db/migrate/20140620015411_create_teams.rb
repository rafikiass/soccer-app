class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :team_rank
      t.string :manager
      t.string :schedule

      t.timestamps
    end
  end
end
