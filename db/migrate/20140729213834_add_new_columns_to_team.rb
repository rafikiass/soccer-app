class AddNewColumnsToTeam < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.string :homepage
      t.string :location
      t.string :abbr
      t.remove :next_fixture, :year_established, :overview, :schedule
      t.rename :team, :name
    end
  end
end
