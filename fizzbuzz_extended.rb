example_hash = { 3 => "Fizz", 5 => "Buzz", 7 => "Sivv", 11 => "Bahhh" }


def fizz_buzz_combos(n, hash, init = true, all_nums = nil, words = nil, divisors = nil)
  if init == true
    divisors = []
    words = []
    all_nums = []
    1.upto(n) { |x| all_nums << x }
    hash.each_key { |x| divisors << x }
    hash.each_value { |x| words << x }
  end
  all_nums.map! do |x|
    if divisors.all? { |num| x % num == 0 }
      x = words.join('')
    else
      x = x
    end
  end
  words.pop
  divisors.pop
  return all_nums if divisors.count == 1
  fizz_buzz_combos(n, hash, init = false, all_nums, words, divisors)
end

def fizz_buzz(n, hash, base = nil, divisors = nil)
  if divisors == nil
    divisors = []
    hash.each_key { |x| divisors << x }
    base = fizz_buzz_combos(n, hash, init = true)
  end
  base.map! do |x|
    if x % divisors[-1] == 0
      x = hash[divisors[-1]]
    else
      x = x
    end
  end
  divisors.pop
  return base if divisors.empty?
  fizz_buzz(n, hash, base, divisors)
end

p fizz_buzz(1155, example_hash)






