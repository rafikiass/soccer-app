class AddPhotoToLeaguesandTeams < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.string :photo_url
    end
  end
  def change
    change_table :teams do |t|
      t.string :photo_url
    end
  end

end
