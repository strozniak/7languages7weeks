intro = 'Pleae guess one number from [1-10]'
biggerNumber = 'Try bigger number'
smallerNumber = 'Try smaller number'

input = -1
randomNumber = rand(10)

puts intro
while input != randomNumber
  input = gets.chomp.to_i
  if input > randomNumber
    puts smallerNumber
  elsif input < randomNumber
    puts biggerNumber
  end
end
puts "Congratulations, number was: #{randomNumber}"