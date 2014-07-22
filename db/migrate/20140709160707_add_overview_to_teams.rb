class AddOverviewToTeams < ActiveRecord::Migration
  def change
    change_table :teams do |t|
    t.text :overview
    end

  end
end
