class PlayerSession < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  has_many :mycorrhizas

  after_create :update_game_map

  private

  def update_game_map
    self.game.extend_map
  end

end
