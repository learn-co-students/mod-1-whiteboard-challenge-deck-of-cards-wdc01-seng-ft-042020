require 'pry'
class Deck

    attr_reader :cards

    def initialize
        @cards = []
        ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each do |r|
            ["Hearts", "Clubs", "Diamonds", "Spades"].each do |s|
                @cards << Card.new(s, r)
            end
        end
    end

    def choose_card
        @cards.delete_at(rand(0..51))
    end

end

class Card

    @@all = []
    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

end
