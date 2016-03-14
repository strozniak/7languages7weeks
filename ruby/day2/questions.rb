# how to write to file without blocks
fileName = 'created.txt'
File.write(fileName, "hello ruby file\ntrololo")

# how to read from file without blocks
readFile = File.new(fileName, 'r')
readFile.each_line { |line| puts "line is: #{line}" }

#hash2array
myhash = {'lolz' => 'first', 'lolanda' => 'second'}
myArray = myhash.each_pair{|key, val| myhash[key] = *val}

puts myArray
