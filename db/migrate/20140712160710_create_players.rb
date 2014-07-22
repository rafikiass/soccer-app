class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :country
      t.string :dob
      t.string :position
      t.string :number
      t.string :nation_team
      t.string :slug

      t.timestamps
    end
  end
end
