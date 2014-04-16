puts "What's your name?"
name = gets.chomp
name.each_char do |character|
  if character == "a" || character == "e" || character == "i" || character == "o" || character == "u"
    puts "Give me an.. " + character
  else
    puts "Give me a.." + character
  end
end
