class AddPhotoToLeagues < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.string :photo_url
    end
  end
end
