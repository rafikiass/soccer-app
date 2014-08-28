class ChangeRankToInteger < ActiveRecord::Migration
  def change
    change_column :teams
    change_column :rank
    change_column :integer
    
  end
end
