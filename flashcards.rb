puts "\nWelcome to Flashcards!\n"

card1 = {
  "front" => "cat",
  "back" => "neko"
}
card2 = {
  "front" => "dog",
  "back" => "inu"
}
deck = [card1, card2]

deck.each do |card|
  front = card["front"]
  back = card["back"]
  
  print "\n#{front} > "
  guess = gets.chomp

  if guess == back
    puts "Correct!"
  else 
    puts "Incorrect. The answer is #{back}."
  end
end

# Iterating with an array
# deck.each do |card|
#   card_parts = card.split("|") # Returns array
#   front = card_parts[0]
#   back = card_parts[1]
# end