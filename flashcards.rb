puts "\nWelcome to Flashcards!\n"

class Card
  attr_accessor :front, :back
  
  def initialize(front, back)
    @front = front
    @back = back
  end
end

class Deck
  attr_accessor :cards
  def initialize(name)
    @name = name
    @cards = []
  end

  def <<(card)
    @cards << card
  end

  def shuffle
    @cards.shuffle!
  end
end

card1 = Card.new("cat", "die Katze")
card2 = Card.new("dog", "der Hund")
card3 = Card.new("bird", "die Vögel")

deck = Deck.new("German")
deck <<(card1)
deck <<(card2)
deck <<(card3)

deck.shuffle

deck.cards.each do |card|
  front = card.front
  back = card.back

  print "\n#{front} > "
  guess = gets.chomp

  if guess == back
    puts "Correct!"
  else
    puts "Incorrect. The answer is #{back}."
  end
end
