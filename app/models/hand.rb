class Hand < ActiveRecord::Base
  has_many :cards
  belongs_to :game

  
end
