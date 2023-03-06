def merge_sort(array, result = [])
  return array if array.size < 2 # if the array length is less than 2, just return the array.

  num1 = merge_sort(array.shift(array.length/2)) # assign num1 the first half of the array.
  num2 = merge_sort(array) # assign num2 the remaing half of the array.
  
  until num1.empty? || num2.empty? # loop until there are no numbers remaining.

    # if the first number in num1 is lower than the first number in num2,
    # remove that number from num1 and push it to the result array, else
    # remove the number from num2 and push it to the result array.
    if num1[0] <= num2[0]
      result.push(num1.shift)
    else
      result.push(num2.shift)
    end
  end
  result + num1 + num2 # merge the numbers.
end

p merge_sort([5,3,7,2,9,4,10,1,8,6])