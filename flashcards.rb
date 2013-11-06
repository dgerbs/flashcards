puts "\nWelcome to Flashcards!\n"

class Card
  attr_accessor :front, :back
  
  def initialize(front, back)
    @front = front
    @back = back
  end
end

card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu")
