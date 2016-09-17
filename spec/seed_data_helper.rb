
module SeedData

  def self.extended(object)
    object.instance_exec do

      Location.destroy_all
      Mycorrhiza.destroy_all
      PlayerSession.destroy_all
      Player.destroy_all
      Game.destroy_all

      # Players
      @player1 = Player.create!(username: "Mycophile")
      @player2 = Player.create!(username: "Dendrophile")
      @player3 = Player.create!(username: "Fignut")
      @player4 = Player.create!(username: "Tomhead")
      @player5 = Player.create!(username: "Blackberry")
      @player6 = Player.create!(username: "Applebum")
      @player7 = Player.create!(username: "Hoglet")
      @player8 = Player.create!(username: "Fantastic Mr. Fox")
      @player9 = Player.create!(username: "Mr. Vole")
      @player10 = Player.create!(username: "Mr Fieldmouse")
      @player11 = Player.create!(username: "Mr Rabbit")
      @player12 = Player.create!(username: "Dingbat")
      @player13 = Player.create!(username: "DORK")
      @player14 = Player.create!(username: "Womble118")
      @player15 = Player.create!(username: "Yeasayer")
      @player16 = Player.create!(username: "Spider42")
      @player17 = Player.create!(username: "The Infinite Improbability Drive")
      @player18 = Player.create!(username: "Whacko Jacko")
      @player19 = Player.create!(username: "Fun With Needles")
      @player20 = Player.create!(username: "Conforce")
      @player21 = Player.create!(username: "Sand Circles")
      @player22 = Player.create!(username: "Archmage Ged")
      @player23 = Player.create!(username: "Sarevok")
      @player24 = Player.create!(username: "Conforce")
      @player25 = Player.create!(username: "Sand Circles")
      @player26 = Player.create!(username: "Archmage Ged")
      @player27 = Player.create!(username: "Sarevok")

      # GameSession 1
      # @player1.games.create!


      #
      # @game1 = Game.create!(map_size: 5)
      #
      # # GameSession 2
      # @game2 = Game.create!(map_size: 15)
      #
      #
      # # Adding players to GameSession 1
      # @game1.player_sessions.create!(player: @player1)
      # @game1.player_sessions.create!(player: @player2)
      # @game1.player_sessions.create!(player: @player3)
      #
      #
      # # Adding players to GameSession 2
      # @game2.player_sessions.create!(player: @player4)
      # @game2.player_sessions.create!(player: @player5)
      # @game2.player_sessions.create!(player: @player6)
      # @game2.player_sessions.create!(player: @player7)
      # @game2.player_sessions.create!(player: @player8)
      # @game2.player_sessions.create!(player: @player9)
      # @game2.player_sessions.create!(player: @player10)
      # @game2.player_sessions.create!(player: @player11)


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
