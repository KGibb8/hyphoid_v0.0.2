class Player < ActiveRecord::Base
  has_many :player_sessions
end
