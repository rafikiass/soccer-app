class Team < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :league

  has_many :players

  has_and_belongs_to_many :users

  

end
