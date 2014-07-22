class CreateJoinTablesForFavorites < ActiveRecord::Migration
  def change
    create_table :leagues_users, id: false do |t|
      t.integer :league_id
      t.integer :user_id
    end
  end

  def change
    create_table :teams_users, id: false do |t|
      t.integer :team_id
      t.integer :user_id
    end
  end

  def change
    create_table :leagues_users, id: false do |t|
      t.integer :player_id
      t.integer :user_id
    end
  end

end
