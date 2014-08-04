class Player < ActiveRecord::Base

belongs_to :team

has_and_belongs_to_many :users

include FriendlyId
friendly_id :name, use: :slugged




end
