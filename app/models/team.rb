class Team < ActiveRecord::Base
belongs_to :league

has_many :players

has_and_belongs_to_many :users

extend FriendlyId
friendly_id :team, use: :slugged


end
