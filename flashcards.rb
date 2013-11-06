puts "\nWelcome to Language Flashcards!\n"

class Game
  def initialize
    @decks = []
  end

  def << deck
    @decks << deck
  end

  def play
    display_decks
    print "Pick a deck: "
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
    puts "\n#{front} > "
    guess = gets.chomp
    if correct? guess
      puts "Correct!"
    else
      puts "Incorrect. The answer is: #{back}."
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

card1 = Card.new("cat", "die Katze")
card2 = Card.new("dog", "der Hund")
card3 = Card.new("bird", "die Vogel")

deck1 = Deck.new("German")
deck1 << card1
deck1 << card2
deck1 << card3

card1 = Card.new("cat", "el gato")
card2 = Card.new("dog", "el perro")
card3 = Card.new("bee", "la abeja")

deck2 = Deck.new("Spanish")
deck2 << card1
deck2 << card2
deck2 << card3

game = Game.new
game << deck1
game << deck2
game.play
