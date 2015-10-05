class Game < ActiveRecord::Base
  belongs_to :deck
  has_many :hands
  has_many :cards

  def build_deck

    suits = ["H", "D", "C", "S"]

    suits.each do |suit|
      (2..10).each do |v|
        cards.create name: v, suit: suit, value: v, code: "#{v}#{suit}", image: "#{v}#{suit}.png"
      end
      cards.create name: "J", suit: suit, value: 10, code: "J#{suit}", image: "J#{suit}.png"
      cards.create name: "Q", suit: suit, value: 10, code: "Q#{suit}", image: "Q#{suit}.png"
      cards.create name: "K", suit: suit, value: 10, code: "K#{suit}", image: "K#{suit}.png"
      cards.create name: "A", suit: suit, value: 11, code: "A#{suit}", image: "A#{suit}.png"
    end
  end

  # def shuffle
  # end

  def player_hand
    hands.find_by player: true
  end

  def dealer_hand
    hands.find_by player: false
  end
end
