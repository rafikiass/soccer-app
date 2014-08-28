class RemoveSomefromTeams < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.remove :first_established 
      t.remove :year_established
    end
  end
end
