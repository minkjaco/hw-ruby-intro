# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.length == 0
  return arr.reduce(:+)
end

def max_2_sum arr
  return sum arr.max(2).to_a
end

def sum_to_n? arr, n
  arr.permutation(2).each { |x| return true if (sum x) == n }
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return (s.match? /\A[a-zA-Z].*\z/) && !(s.match? /\A[aeiouAEIUO].*\z/)
end

def binary_multiple_of_4? s
  return (s.match? /\A[01]*100\z/) || (s == "0")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError.new("ISBN is empty") if isbn.length == 0
    raise ArgumentError.new("Price is nonpositive") if price <= 0
    
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.02f" % [@price]
  end
end
