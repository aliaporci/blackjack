class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
  end

  def create
    @game = Game.create
    deck = @game.build_deck
    deck = deck.shuffle!
    player_hand = Hand.create game_id: @game.id, player: true
    dealer_hand = Hand.create game_id: @game.id, player: false


    redirect_to game_path(id: @game.id)
  end
end
