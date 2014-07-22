class AddSlugToPlayers < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.string :slug 
    end
  end
end
