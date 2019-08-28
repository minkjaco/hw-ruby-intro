# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  for a in arr
    s = s + a
  end
  return s
end

def max_2_sum arr
  return sum arr.max(2)
end

def sum_to_n? arr, n
  for i in (0..arr.length-2)
    item = arr[i]
    for a in arr[(i+1)..(arr.length-1)]
      if item + a == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return (s.match? /\A[a-zA-Z].*\z/) && !(s.match? /\A[aeiouAEIUO].*\z/)
end

def binary_multiple_of_4? s
  return (s.match? /\A[01]*100\z/) || (s == "0")
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price

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
