require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length     # while number 'i' is less than collection's length
       return collection[i] if yield(collection[i])        # yield to the following block that takes into accout collection and current number - returns value of the first number to meet our requirements
      i = i + 1 
    end
end

#example
collection = (1..100).to_a  #converts numbers to an array
my_find(collection) {|i| i % 3 == 0 and 5 == 0 }  # % means divide, so whichever number is divisible by 3 and 5 (first is 15)