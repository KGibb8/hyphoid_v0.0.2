
module SeedData

  def self.extended(object)
    object.instance_exec do

      Location.destroy_all
      Mycorrhiza.destroy_all
      PlayerSession.destroy_all
      Player.destroy_all
      Game.destroy_all

      # Players
      @player1 = Player.create!(name: "Mycophile")
      @player2 = Player.create!(name: "Dendrophile")
      @player3 = Player.create!(name: "Fignut")
      @player4 = Player.create!(name: "Tomhead")
      @player5 = Player.create!(name: "Blackberry")
      @player6 = Player.create!(name: "Applebum")
      @player7 = Player.create!(name: "Hoglet")
      @player8 = Player.create!(name: "Fantastic Mr. Fox")
      @player9 = Player.create!(name: "Mr. Vole")
      @player10 = Player.create!(name: "Mr Fieldmouse")
      @player11 = Player.create!(name: "Mr Rabbit")
      @player12 = Player.create!(name: "Dingbat")
      @player13 = Player.create!(name: "DORK")
      @player14 = Player.create!(name: "Womble118")
      @player15 = Player.create!(name: "Yeasayer")
      @player16 = Player.create!(name: "Spider42")
      @player17 = Player.create!(name: "The Infinite Improbability Drive")
      @player18 = Player.create!(name: "Whacko Jacko")
      @player19 = Player.create!(name: "Fun With Needles")
      @player20 = Player.create!(name: "Conforce")
      @player21 = Player.create!(name: "Sand Circles")
      @player22 = Player.create!(name: "Archmage Ged")
      @player23 = Player.create!(name: "Sarevok")
      @player24 = Player.create!(name: "Conforce")
      @player25 = Player.create!(name: "Sand Circles")
      @player26 = Player.create!(name: "Archmage Ged")
      @player27 = Player.create!(name: "Sarevok")

      # GameSession 1
      @game1 = Game.create!(grid_size: 5)

      # GameSession 2
      @game2 = Game.create!(grid_size: 15)

      # GameSession 3
      @game3 = Game.create!(grid_size: 100)

      # Adding players to GameSession 1
      @game1.player_sessions.create!(player: @player1)
      @game1.player_sessions.create!(player: @player2)
      @game1.player_sessions.create!(player: @player3)


      # Adding players to GameSession 2
      @game2.player_sessions.create!(player: @player4)
      @game2.player_sessions.create!(player: @player5)
      @game2.player_sessions.create!(player: @player6)
      @game2.player_sessions.create!(player: @player7)
      @game2.player_sessions.create!(player: @player8)
      @game2.player_sessions.create!(player: @player9)
      @game2.player_sessions.create!(player: @player10)
      @game2.player_sessions.create!(player: @player11)


      # Adding players to GameSession 3
      # @game3.player_sessions.create!(player: @player12)
      # @game3.player_sessions.create!(player: @player13)
      # @game3.player_sessions.create!(player: @player14)
      # @game3.player_sessions.create!(player: @player15)
      # @game3.player_sessions.create!(player: @player16)
      # @game3.player_sessions.create!(player: @player17)
      # @game3.player_sessions.create!(player: @player18)
      # @game3.player_sessions.create!(player: @player19)
      # @game3.player_sessions.create!(player: @player20)
      # @game3.player_sessions.create!(player: @player21)
      # @game3.player_sessions.create!(player: @player22)
      # @game3.player_sessions.create!(player: @player23)
      # @game3.player_sessions.create!(player: @player24)
      # @game3.player_sessions.create!(player: @player25)
      # @game3.player_sessions.create!(player: @player26)
      # @game3.player_sessions.create!(player: @player27)


################################################################################
################################################################################

      # New game starts upon players joining @game1 - GameSession initialises grid


      # Its not clearing the brain cells properly or the sequence of mycelia
      # creation & location association is messed up as I just ran it and one
      # of them has TWO mycelia instead of one.

    end
  end
end
