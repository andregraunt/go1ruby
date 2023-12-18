
puts
height = 19

loop do
  puts "\e[H\e[2J"

for i in 0..height-1
    # puts "1" * (height - i)
    puts "1" * (i + 1) #reverse

end

for i in 0..height-1
  puts "i" * (height - i)
  # puts "1" * (i + 1) #reverse
end




end
