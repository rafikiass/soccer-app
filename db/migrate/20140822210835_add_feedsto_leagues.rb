class AddFeedstoLeagues < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.string :goal_url_id
      t.string :league_feed
      t.remove :team
    end
  end
end
