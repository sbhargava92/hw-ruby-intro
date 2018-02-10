# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  # YOUR CODE HERE
  arr.inject(0){|sum, x| sum+=x; sum}
  #[1, 2, 3, 4].inject{|memo, num| memo += num; memo}
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0){|sum, x| sum+=x; sum}
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s[0] =~ /[[a-z]&&[^aeiou]]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size
    return false
  end
  if s.length > 1 
    return (s[-2,2] == "00") 
  else
    if(s[-1,1] == "0")
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize isbn, price
  if(isbn == "" || price <= 0)
    raise ArgumentError
  end
  @isbn = isbn
  @price = price
end

def isbn
  return @isbn
end

def isbn=(isbn)
  @isbn = isbn
end

def price
  return @price
end

def price=(price)
  @price = price
end

def price_as_string
  sprintf "$%.2f", @price
end

end
