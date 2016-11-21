#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
sum = 0
array = [1, 2]
fib = 1
x = -1

loop do
#for x in 0..50 do
  x += 1
  fib = array[x] + array[x + 1]
  if array[x + 1].even?
    sum += array[x + 1]
  end
  break if fib >= 4000000
  array << fib
end

p array
puts
puts "sum = #{sum}"


#why are the last 2 numbers in the array printed if it is supposed to stop at [-3] 3524578?