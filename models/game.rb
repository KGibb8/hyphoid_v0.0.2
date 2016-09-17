class Game < ActiveRecord::Base
  has_many :player_sessions
  has_many :locations
  has_many :players, through: :player_sessions

  after_save :initialize_map

  # validate :four_to_start

  attr_accessor :map

  def generate_starting_locations
    rand = Random.new
    self.players.each do |player|
      begin
        random_lat = rand(0...self.map_size)
        random_long = rand(0...self.map_size)
        # Shouldnt this map be instance variable?
        random_location = map[random_lat][random_long]
        redo unless random_location.mycelium.nil?
        player.mycorrhiza.create!(location: random_location)
      rescue => e
        puts e.inspect
      end
      # Perhaps better to have an exception handler?
    end
    self.in_session = true
  end


  def extend_map
    @map.each_with_index do |row, lat|
      row.each_with_index do |location, long|
        @map[lat][long].update(lat: lat+2, long: long+2)
        # location.update(lat: lat+1, long: long+1)
      end
    end

    top = Array.new
    bottom = Array.new
    (1..map_size + 2).each do |x|
      top << self.locations.create(lat: 1, long: x)
      bottom << self.locations.create(lat: map_size + 2, long: x)
    end

    @map.each_with_index do |row, index|
      row.unshift(self.locations.create(lat: index + 2, long: 1))
      row.push(self.locations.create(lat: index + 2, long: map_size + 2))
    end
    @map.unshift(top)
    @map.push(bottom)
    self.map_size = @map.length
  end


  private

  def initialize_map
    lat = (1..self.map_size).to_a
    long = (1..self.map_size).to_a
    @map = Array.new
    lat.each do |x|
      axis = Array.new
      long.each do |y|
        axis << self.locations.create(lat: y, long: x)
      end
      @map << axis
    end
    @map
  end


end
