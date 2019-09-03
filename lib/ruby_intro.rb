# frozen_string_literal: true

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  return 0 if arr.length.zero?

  arr.reduce(:+)
end

def max_2_sum(arr)
  sum arr.max(2).to_a
end

def sum_to_n?(arr, n_total)
  arr.permutation(2).each { |x| return true if (sum x) == n_total }
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s_test)
  s_test.match?(/\A[a-zA-Z].*\z/) && !s_test.match?(/\A[aeiouAEIUO].*\z/)
end

def binary_multiple_of_4?(s_test)
  s_test.match?(/\A[01]*100\z/) || s_test == '0'
end

# Part 3

# Checks for books and prices
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise(ArgumentError, 'ISBN is empty') if isbn.empty?
    raise(ArgumentError, 'Price is nonpositive') if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.02f', @price)
  end
end
