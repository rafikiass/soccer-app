class AdduefaToTeams < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.boolean :uefa
    end
  end
end
