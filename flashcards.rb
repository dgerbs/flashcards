puts "\nWelcome to Flashcards!\n"

class Card
  def initialize(front, back)
    puts "#{front} => #{back}"
  end
end

card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu")

