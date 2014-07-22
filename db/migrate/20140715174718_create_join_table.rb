class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :players_users, id: false do |t|
      t.integer :player_id
      t.integer :user_id
    end
  end
end
