
module SeedData

  def self.extended(object)
    object.instance_exec do

      Location.destroy_all
      Mycorrhiza.destroy_all
      PlayerSession.destroy_all
      Player.destroy_all
      Game.destroy_all

      # Players

      @admin = Player.create!(email: "admin@hyphoid.net", username: "admin", password: "admin", password_confirmation: "admin")
      @player1 = Player.create!(username: "mycophile", password: "1234")
      @player2 = Player.create!(username: "dendrophile", password: "1234")
      @player3 = Player.create!(username: "fignut", password: "1234")
      @player4 = Player.create!(username: "tomhead", password: "1234")
      @player5 = Player.create!(username: "blackberry", password: "1234")
      @player6 = Player.create!(username: "applebum", password: "1234")
      @player7 = Player.create!(username: "hoglet", password: "1234")
      @player8 = Player.create!(username: "fantastic_mr_fox", password: "1234")
      @player9 = Player.create!(username: "mr_vole", password: "1234")
      @player10 = Player.create!(username: "mr_fieldmouse", password: "1234")
      @player11 = Player.create!(username: "mr_rabbit", password: "1234")
      @player12 = Player.create!(username: "dingbat", password: "1234")
      @player13 = Player.create!(username: "DORK", password: "1234")
      @player14 = Player.create!(username: "womble118", password: "1234")
      @player15 = Player.create!(username: "yeasayer", password: "1234")
      @player16 = Player.create!(username: "spider42", password: "1234")
      @player17 = Player.create!(username: "the_infinite_improbability_drive", password: "1234")
      @player18 = Player.create!(username: "whacko_jacko", password: "1234")
      @player19 = Player.create!(username: "fun_with_needles", password: "1234")
      @player20 = Player.create!(username: "conforce", password: "1234")
      @player21 = Player.create!(username: "sand_circles", password: "1234")
      @player22 = Player.create!(username: "archmage_ged", password: "1234")
      @player23 = Player.create!(username: "sarevok", password: "1234")
      @player24 = Player.create!(username: "atredies", password: "1234")
      @player25 = Player.create!(username: "skywalker", password: "1234")
      @player26 = Player.create!(username: "han_solo", password: "1234")
      @player27 = Player.create!(username: "gorion", password: "1234")

      # GameSession 1
      @game1 = Game.create!

      # Adding players to GameSession 1
      @game1.player_sessions.create!(player: @player1)
      @game1.player_sessions.create!(player: @player2)
      @game1.player_sessions.create!(player: @player3)

      # GameSession 2
      @game2 = Game.create!

      # Adding players to GameSession 2
      @game2.player_sessions.create!(player: @player4)
      @game2.player_sessions.create!(player: @player5)
      @game2.player_sessions.create!(player: @player6)
      @game2.player_sessions.create!(player: @player7)
      @game2.player_sessions.create!(player: @player8)
      @game2.player_sessions.create!(player: @player9)
      @game2.player_sessions.create!(player: @player10)
      @game2.player_sessions.create!(player: @player11)

      @game3 = Game.create!

      # Adding players to GameSession 3
      @game3.player_sessions.create!(player: @player12)
      @game3.player_sessions.create!(player: @player13)
      @game3.player_sessions.create!(player: @player14)
      @game3.player_sessions.create!(player: @player15)
      @game3.player_sessions.create!(player: @player16)
      @game3.player_sessions.create!(player: @player17)
      @game3.player_sessions.create!(player: @player18)
      @game3.player_sessions.create!(player: @player19)
      @game3.player_sessions.create!(player: @player20)
      @game3.player_sessions.create!(player: @player21)
      @game3.player_sessions.create!(player: @player22)
      @game3.player_sessions.create!(player: @player23)
      @game3.player_sessions.create!(player: @player24)
      @game3.player_sessions.create!(player: @player25)
      @game3.player_sessions.create!(player: @player26)
      @game3.player_sessions.create!(player: @player27)


################################################################################
################################################################################

      # @session = @player12.player_sessions.find_by(game_id: @game3.id)
      # @session.mycorrhizas.create!(location: @game3.map[16][21])

      @game1.generate_starting_locations
      @game2.generate_starting_locations
      @game3.generate_starting_locations

      binding.pry

    end
  end
end
