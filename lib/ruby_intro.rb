# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  return arr.sum()
end

def max_2_sum(arr)
  # If the array is empty
  if arr.length() == 0
    return 0
  
  # If the array has one element, return that element 
  elsif arr.length() == 1
    return arr[0]
  
  else
    # Get array of 2 largest elements in arr using Array.max(2)
    first = arr.max(2) 

    # Return first largest + next largest element
    return (first[0] + first[1])
  end

end

def sum_to_n?(arr, n)
  
  # if array has 1 or less elements, return false
  if arr.length() <= 1
    return false
  else
    # Loop through every combination of 2 numbers, if they add up to n, return true
    for i in 0..(arr.length() - 2)
      for j in (i+1)..(arr.length() - 1)
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
    
    # return false if no return statement has been reached
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # if the string is empty, return false
  if s.empty?()
    return false

  # regex match returns true if the lowercase string starts with a vowel or anything other than a character a to z
  elsif /^[aeiou].*$|^[^a-z].*$/.match(s.downcase())
    return false

  # anything else means the string starts with a constant
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  # if the string is a binary number that ends in 00 (for being a multiple of 4), or the string is 0, return true  (else return false)
  if /^[0-1]+00$|^0$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
  
  # constructor
  def initialize(isbn, price)
    
    # check if the isbn string is not empty
    if isbn.empty?()
      raise ArgumentError.new("ISBN cannot not be empty")
    end

    # check if the price is less than or equal to 0
    if price <= 0
      raise ArgumentError.new("Price cannot be less than or equal to 0")
    end
    
    # set class instance variables
    @isbn = isbn
    @price = price
  end

  # method to return price in dollar float format
  def price_as_string()
    return "$%.2f" % [@price]
  end

end
