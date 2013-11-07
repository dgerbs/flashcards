module Flashcards
  puts "\nWelcome to Language Flashcards!\n\n"

  class Game
    def initialize
      @decks = []
    end

    def << deck
      @decks << deck
    end

    def play
      display_decks
      print "\nPick a deck: "
      deck = retrieve_deck
      deck.play
    end

    def display_decks
      @decks.each do |deck|
        puts deck.name
      end
    end

    def retrieve_deck
      name = gets.chomp
      @decks.detect do |deck|
        deck.name == name
      end
    end
  end

  class Card
    attr_accessor :front, :back
    
    def initialize(front, back)
      @front = front
      @back = back
    end

    def correct?(guess)
      guess == @back
    end

    def play
      print "\n#{front} > "
      guess = gets.chomp
      if correct? guess
        puts "Correct!\n"
      else
        puts "Incorrect. The answer is: #{back}.\n"
      end
    end
  end

  class Deck
    attr_accessor :name, :cards
    def initialize(name)
      @name = name
      @cards = []
    end

    def << card
      @cards << card
    end

    def play
      shuffle
      @cards.each do |card|
        card.play
      end
    end

    
    def shuffle
      @cards.shuffle!
    end
  end
end

card1 = Flashcards::Card.new("cat", "die Katze")
card2 = Flashcards::Card.new("dog", "der Hund")
card3 = Flashcards::Card.new("bird", "die Vogel")
deck1 = Flashcards::Deck.new("German")
deck1 << card1
deck1 << card2
deck1 << card3

card1 = Flashcards::Card.new("cat", "el gato")
card2 = Flashcards::Card.new("dog", "el perro")
card3 = Flashcards::Card.new("bee", "la abeja")
deck2 = Flashcards::Deck.new("Spanish")
deck2 << card1
deck2 << card2
deck2 << card3

card1 = Flashcards::Card.new("ant", "la fourmi")
card2 = Flashcards::Card.new("butterfly", "le papillon")
card3 = Flashcards::Card.new("duck", "le canard")
deck3 = Flashcards::Deck.new("French")
deck3 << card1
deck3 << card2
deck3 << card3

game = Flashcards::Game.new
game << deck1
game << deck2
game << deck3
game.play
