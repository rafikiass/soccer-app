class Team < ActiveRecord::Base
belongs_to :league

extend FriendlyId
friendly_id :team, use: :slugged

end
