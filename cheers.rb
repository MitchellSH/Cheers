puts "What's your name?"
name = gets.chomp
name.each_char do |c|
  if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" || c == "A" || c == "E" || c == "I" || c == "O" || c == "U"
    puts "Give me an.. " + c.upcase
  else
    puts "Give me a... " + c.upcase
  end
end
