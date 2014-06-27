class ChangedTeamItems < ActiveRecord::Migration
  def change

    change_table :teams do |t|
      t.rename :team_rank, :rank
      t.rename :team_name, :team
    end
  end
end
