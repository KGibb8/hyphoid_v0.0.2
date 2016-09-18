class Player < ActiveRecord::Base
  has_secure_password
  has_many :player_sessions
end
