example_hash = { 3 => "Fizz", 5 => "Buzz", 7 => "Sivv", 11 => "Bahhh" }

def fizz_buzz(n, hash, init = true, divisors = nil, answer = nil, words = nil, all_nums = nil)
  if init == true
    all_nums = []
    answer = []
    divisors = []
    words = []
    hash.each_key { |x| divisors << x }
    1.upto(n) { |x| all_nums << x }
    answer = all_nums.map { |x| x = x}
    hash.each_value { |x| words << x }
  end
  all_nums.each_with_index do |num, index|
    if num % divisors[0] == 0
      if answer[index].is_a? Integer
        answer[index] = words[0]
      else
        answer[index] = answer[index] + words[0]
      end
    end
  end
  divisors.shift
  words.shift
  return answer if divisors.empty?
  fizz_buzz(n, hash, init = false, divisors, answer, words, all_nums)
end

p fizz_buzz(100, example_hash)
