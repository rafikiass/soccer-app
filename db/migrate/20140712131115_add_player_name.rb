class AddPlayerName < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
