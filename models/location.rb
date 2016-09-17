class Location < ActiveRecord::Base
  belongs_to :mycorrhiza, required: false
  belongs_to :game
end
