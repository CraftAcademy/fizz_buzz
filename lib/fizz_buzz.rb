require 'byebug'

def play_game
  puts "Enter a starting number"
  firstnumber = gets.chomp.to_i
  puts "Enter an ending number"
  secondnumber = gets.chomp.to_i
  #byebug
  (firstnumber..secondnumber).each {|num| puts fizz_buzz(num) }

end

def fizz_buzz(number)
  if number % 15 == 0 
    puts 'FizzBuzz'
  elsif number % 5 == 0
    puts 'Buzz'
  elsif number % 3 == 0
    puts 'Fizz'
  else
    puts number
  end
end