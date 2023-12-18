

#   puts 'tavi od mispar:'
#   n = gets.to_i
#  total = (1..n).sum
#  print 'summa kol misparim: ', total,"\n"
loop do
  puts "\e[H\e[2J"
puts 'Begin Game lilhoz ENTER'
gets
puts 'What is your name ?'

name = gets.chomp
puts "\tHello , #{name} ! "
 puts "#{name}, tagid ad eyze mispar game  "



 kaze = gets.to_i
 puts "tegale mispar sodi mi 1 ad #{kaze}"
 sodi = rand(1..kaze)

i = 0

loop do

i = i + 1
 puts 'sim  mispar : '
 x = gets.to_i
 print 'Paam - ', i , "\n"

 if x == sodi

  puts "\t V I K T O R Y !!"
  puts "#{name}  izliah mi paam #{i} "
  puts "Restart Game -> Enter"
gets
  break
 else
  puts "you are LUZER"
 if x < sodi
  puts '-> yoter'
 elsif x > sodi
  puts '<- pahot'




 end

 end
end
end

# 1.upto(10) do

# puts (1..5).inject(:*)
# puts (1..100).inject(:+)
# puts (1..100).sum


# end
