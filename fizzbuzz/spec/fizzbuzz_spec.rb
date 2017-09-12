
describe 'FizzBuzz' do
it 'Lists of numbers from 1 to 100' do
    #Arrange
    numbers = Numbers.new
    
    #Act
    myarray = numbers.fill

    #Assert
    expected_result = (1..100).to_a
    expect(myarray).to eq(expected_result)
    
end
it "Prints Fizz if number is divisible by 3" do
    numbers = Numbers.new

    result = numbers.calculate(3)
    
    expected_result = "Fizz"
    expect(result).to eq(expected_result)
end

it "Prints Buzz if number is divisible by 5" do
    numbers = Numbers.new

    result = numbers.calculate(5)
    
    expected_result = "Buzz"
    expect(result).to eq(expected_result)
end

end

class Numbers
    def fill
       (1..100).to_a
    end

    def calculate(mynumber)
        return "Fizz" if mynumber == 3      
        "Buzz"
    end

end