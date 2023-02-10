# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n?(arr, number)
  if arr.empty?
    return false
  elsif arr.length == 1 
    return false
  else
    arr.each do |i|
      arr.each do |j|
        if i + j == number and i != j
          return true
        end
      end
    end
  end
  return false
end




# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  if string.empty?
    return false
  else
    if string.start_with?("A", "E", "I", "O", "U", "a", "e", "i", "o", "u")
      return false
    else
      if string[0] =~ /[[:alpha:]]/
        return true
      else
        return false
      end
    end
  end
end

def binary_multiple_of_4?(string)
  if string =~ /^[01]+$/
    string = string.to_i(2)
    if string % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    return "$" + '%.2f' % @price
  end
end

