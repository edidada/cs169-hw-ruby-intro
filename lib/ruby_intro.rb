# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr&.sum
end

def max_2_sum(arr)
  return 0 if arr&.empty?
  numbers = arr.sort.reverse.take(2)
  numbers.sum
end

def sum_to_n?(arr, n)
  return false if arr.nil? || arr.empty?
  bucket = {}
  arr.each do |x|
    return true if bucket.key?(n - x)
    bucket[x] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.nil? || !s.is_a?(String) || s.empty?
  /\A[^aeiou\W]/i.match?(s)
end

def binary_multiple_of_4?(s)
  return false if s.nil? || !s.is_a?(String)
  return false unless s.match?(/\A[01]+\z|\A0\z/)
  return true if s == "0"
  # A binary number is a multiple of 4 iff its last two bits are 00
  s.end_with?("00")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "isbn required" if isbn.nil? || isbn.to_s.strip.empty?
    raise ArgumentError, "price must be positive" if price.nil? || price.to_f <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
