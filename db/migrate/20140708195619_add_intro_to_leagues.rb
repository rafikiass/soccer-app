class AddIntroToLeagues < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.text :intro
    end
  end
end
