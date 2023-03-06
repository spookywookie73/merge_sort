def fibs(num)
  result = [] # create empty array.
  num.times do |i| # loop through entered number times.
    if result.length < 2 # if array's length is less than 2,
      result.push(i)     # push first 2 numbers in loop into array.
    else
      result.push(result[-1] + result[-2]) # push the sum of last and second last
    end                                    # numbers in array into the array.
  end
  result
end

p fibs(8)

def fibs_rec(num, result = [0, 1]) # create array with 2 digits.
  return [] if num == 0 # if zero is entered, return empty array.
  return result[0] if num == 1 # if 1 is entered, return first number in array.
  return result if num == result.size # if 2 is entered, return the array.
  fibs_rec(num, result.push(result[-1] + result[-2])) # call the method, pushing the sum of
  result                                              # the last and second last numbers into the array.
end

p fibs_rec(8)