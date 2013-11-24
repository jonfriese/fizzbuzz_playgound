def fizz_buzz(n)
  fizz_buzzed = []
  1.upto(n) do |x|
    if x % 5 == 0 && x % 3 == 0
      fizz_buzzed << "FizzBuzz"
    elsif x % 5 == 0
      fizz_buzzed << "Fizz"
    elsif x % 3 == 0
      fizz_buzzed << "Buzz"
    else
      fizz_buzzed << x
    end
  end
  fizz_buzzed
end

