myArray = (1..16).to_a
myArray.each { |x| print "#{x}#{x % 4 == 0 ? "\n" : ','}" }
