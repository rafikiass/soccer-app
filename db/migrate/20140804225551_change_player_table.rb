class ChangePlayerTable < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.string :head_shot
      t.remove :nation_team
      t.rename :country, :nationality
    end
  end
end
