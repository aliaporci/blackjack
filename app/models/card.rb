class Card < ActiveRecord::Base
  belongs_to :hand
  belongs_to :game

end
