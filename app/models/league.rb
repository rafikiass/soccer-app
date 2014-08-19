class League < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :league, use: :slugged


  has_many :teams, -> { order 'teams.rank' } 
  
  has_and_belongs_to_many :users

  mount_uploader :photo_url, LogoUploader

end
