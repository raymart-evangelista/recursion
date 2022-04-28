# define a recursive function that finds the factorial of a number
def fact(n)
  if n == 0
    return 1
  else
    return (n * fact(n-1))
  end
end

# puts fact(1)
# puts fact(2)
# puts fact(3)
# puts fact(6)

# define a recursive funciton that returns true if a string is a palindrome and false otherwise
def palindrome(string)
  if string.length <= 1
    true
  elsif string[0] == string[-1]
    palindrome(string[1..-2])
  else
    false
  end
end

# puts palindrome("raymart")
# puts palindrome("racecar")

# define a recursive function that takes an argument n and prints bottles of beer on the wall
def bottles(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n-1)
  end
end

# bottles(3)

# define a recursive function that returns the fib value of that position
def fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1 + fib(n-1)
  else
    return fib(n-1) + fib(n-2)
  end
end

# puts fib(7)

# define a recursive function that flattens an array
# [ [1,2],[3,4] ] => [1,2,3,4]
# [ [1, [8,9], [3,4] ] => [1,8,9,3,4]

# [ 1, [2] ] => [1,2]

def flatten(arr, flat = [])
  arr.each do |elem|
    if elem.kind_of?(Array)
      flatten(elem, flat)
    else
      flat.push(elem)
    end
  end
  flat
end
arr = [ [1, [8,9], [3,4] ] ]

# p flatten(arr)

# define recursive method that converts an int to a roman numeral

# year1999 = "MCMXCIX"

# year1001 = "MI"

def int_to_roman(num, string = "")
  roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  if roman_mapping.has_key?(num)
    string.concat(roman_mapping[num])
  else
    # if the num is greater than the first key, 1000, subtract and recurse
    # if the num is not greater than the first key, compare to next key
    roman_mapping.each_key do |key|
      if num > key
        string.concat(roman_mapping[key])
        # puts roman_mapping[key]
        return int_to_roman(num - key, string)
      end
    end
  end
  string
end

# puts int_to_roman(1999)
# turn roman numeral into into
def roman_to_int(string, sum = 0)

  roman_mapping = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  if string.empty?
    return sum
  elsif roman_mapping.has_key?(string[0..1])
    sum += roman_mapping[string[0..1]] + roman_to_int(string[2..-1], sum)
  elsif roman_mapping.has_key?(string[0])
    sum += roman_mapping[string[0]] + roman_to_int(string[1..-1], sum)
  else
    sum += 0
  end
end

is_1990 = "MCMXC"
puts roman_to_int(is_1990)
is_1999 = "MCMXCIX"
puts roman_to_int(is_1999)
