class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league
      t.string :country
      t.string :team

      t.timestamps
    end
  end
end
