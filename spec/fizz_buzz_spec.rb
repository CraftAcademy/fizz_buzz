require './lib/fizz_buzz.rb'

describe 'fiz_buzz' do
  it 'retuns 1 if number = 1' do
    expect(fizz_buzz(1)).to eq 1 
  end
  it 'retuns 2 if number = 2' do
    expect(fizz_buzz(2)).to eq 2 
  end
  
  it 'returns Fizz if number % 3' do
    expect(fizz_buzz(3)).to eq 'Fizz'
  end
  
  it 'returns Buzz if number % 5' do
    expect(fizz_buzz(5)).to eq 'Buzz'
  end
  
  it 'returns FizzBuzz if number % 15' do
    expect(fizz_buzz(15)).to eq 'FizzBuzz'
  end
  
  describe 'drinking game' do
    it "says 'good guess' if answer is correct" do
      rand_n = 3
      expect(guess('fizz')).to eq 'good guess' 
    end
    
    it "says 'Drink' if answer is not correct" do
      rand_n = 3
      expect(!guess('fizz')).to eq 'Drink'
    end
    
  end
end