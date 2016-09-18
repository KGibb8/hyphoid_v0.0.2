class Mycorrhiza < ActiveRecord::Base
  belongs_to :player
  belongs_to :mother, class_name: "Mycorrhiza", foreign_key: :mother_id, inverse_of: :children
  has_many :children, class_name: "Mycorrhiza", foreign_key: :mother_id, inverse_of: :mother
  has_one :location
  # has_many :hyphae
  # has_many :mushrooms
  # has_many :spores, through: :mushrooms

  def resources
    {carbon: self.carbon, sugars: self.sugars, proteins: self.proteins, nitrates: self.nitrates}
  end

  def find_neighbours
    neighbours = []
    map = self.location.game.map
    map.each_with_index do |row, row_index|
      row.each_with_index do |position, position_index|
        if (self.location.x_position == position.x_position) && (self.location.y_position == position.y_position)
          neighbours = [
            map[row_index - 1][position_index - 1], # Northwest
            map[row_index][position_index - 1], # West
            map[row_index + 1][position_index - 1], # Southwest
            map[row_index + 1][position_index], # South
            map[row_index + 1][position_index + 1], # Southeast
            map[row_index][position_index + 1], # East
            map[row_index - 1][position_index + 1], #Northeast
            map[row_index - 1][position_index] # North
          ]
          neighbours = neighbours.reject {|neighbour| neighbour.mycorrhiza.nil? }
          # TODO : When we add the Tree model, we want this method to also return Trees in the neighbours array
        end
      end
    end
    neighbours.map(&:mycorrhiza)
  end

end
