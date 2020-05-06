require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length #the condition for the iteration in the this method
    block_return_values << yield(collection[i]) #the while loops its result as an argument for yield and it's method 
    i += 1 
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
end

my_all?([1,2,3]) {|i| i < 2}