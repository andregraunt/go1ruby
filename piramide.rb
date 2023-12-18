puts ""

height = 10
pp height
pp '11'
puts '11'
pp 11
puts height.between? 1, 20
puts RUBY_VERSION
obj = Object.new
puts obj.object_id
puts true.object_id
for i in 0..height-1
    # puts "1" * (height - i)
    puts "1" * (i + 1) #reverse
end

for i in 0..height-1
  puts "1" * (height.conj - i)
  # puts "1" * (i + 1) #reverse
end
puts 3.between? 0, height
puts height.methods
puts height.object_id
