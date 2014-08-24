class AddFeedsToTeams < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.string :guardian
      t.string :football_UK
    end
  end
end
