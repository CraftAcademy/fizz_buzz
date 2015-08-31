require 'byebug'

def guess_game
  guess(rand(1..100))
end

def guess(number)
  puts "#{number} - Fizz, Buzz, FizzBuzz or number?"
  answer = gets
  if answer.to_i != 0
    if answer.to_i == fizz_buzz(number)
      p 'good guess'
    else
      p 'Drink'
    end
  else
    if answer == fizz_buzz(number)
      p 'good guess'
    else
      p 'Drink'
    end 
  end 
end

def play_game
  (1..100).each {|num| puts fizz_buzz(num) }
end

def fizz_buzz(number)
  if number % 15 == 0 
    return 'FizzBuzz'
  elsif number % 5 == 0
    return 'Buzz'
  elsif number % 3 == 0
    return 'Fizz'
  else
    return number
  end
end