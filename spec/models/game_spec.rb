
require 'spec_helper'
require './spec/seed_data_helper'

RSpec.describe Game do
  before do
    extend SeedData
  end

  context "-- creating a new game" do
    it "-- should ensure that at least one player is present upon creation" +
    "-- should ensure a minimum of 4 players to commence game session" do
      @game = Game.new
      @player11.player_sessions.create(game: @game)
      @game.save
      expect(@game).to_not be_valid
      expect(@game.errors.messages.values).to include(["Four players are needed to initialize a game session"])
      @player12.player_sessions.create(game: @game)
      @player13.player_sessions.create(game: @game)
      @player14.player_sessions.create(game: @game)
      @game.save
      expect(@game).to be_valid
    end
    it "-- should be able to generate a map for a game session" do
      @game = Game.create(map_size: 5)
      expect(@game.locations.count).to eq(25)
      expect(@game.map.count).to eq(5)
      expect(@game.map.flatten.count).to eq(25)
    end

    # Blank form Game.new created. Players added. Can only become a valid game if players >= 4

    context "-- with valid creation criteria" do
      it "-- should increase the size of the map relative to the number of players involved in the session" do # BY WHAT RATIO?
        @game = Game.create
        @game.player_sessions.create(player: @player15)
        expect(@game.locations.count).to eq(9)
        @game.player_sessions.create(player: @player16)
        expect(@game.locations.count).to eq(25)
        @game.player_sessions.create(player: @player17)
        expect(@game.locations.count).to eq(49)
      end
      it "-- should generate random locations for each Tree on the map" do

      end
      it "-- should increase the number of Trees in the game relative to the size of the map" do # BY WHAT RATIO?

      end
      it "-- should generate a single random starting location for each player on the map" do

      end
      it "-- should ensure that players and trees cannot be placed in colliding starting locations" do

      end
      it "-- should set the game's start time upon initialisation" do

      end
      it "-- should mark the game as in session" do

      end
    end
    context "-- with invalid creation criteria" do
      it "-- should not be valid with an insufficient number of players" do

      end
      it "-- should not be valid for creation with an end time set" do

      end
      it "-- should not be valid if the game fails to mark as in session" do

      end
    end
  end

  context "-- updating a Game session" do
    context "-- a new player joining the game" do
      it "-- should generate a single starting location for the joining player" do

      end
      it "-- should increase the size of the map" do
        # before update?
      end
      it "-- should never increase the map to a size above the maximum as determined by the player count" do

      end
    end
    context "-- a player leaving the game" do
      it "-- should attempt to decrease the size of the map" do
        # For each outer row/column of the map-map, check to see if any of the locations are occupied.
        # If no-one occupies any location destroy the outer rows and columns.
      end
    end
  end
end
