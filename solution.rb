require 'pry'
class Deck

    attr_reader :cards
    
    def initialize
        @cards = []

    end

    def cards=(new_card)
        @cards << new_card
    end

    def choose_card
        @cards[rand(0..51)]
    end

    

end

class Card

    @@all = []
    attr_reader :suit, :rank, :deck

    def initialize(suit, rank, deck)
        @deck = deck
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end



end


