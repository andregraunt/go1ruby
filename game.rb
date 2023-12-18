
class Name
    attr_accessor :names

    def initialize
      @names = {}
    end

    def add_name(name, result)
      @names[name] = result

    end

    def save_names
      # Здесь сохранение имен и результатов
    end

    def display_names
    #   puts "Сохраненные имена и результаты:"
    puts "Save name and results : "
      @names.each do |name, result|
        puts " #{name}: #{result} "
      end
    end
  end

  name_storage = Name.new

  loop do
    puts "\e[H\e[2J"
    name_storage.display_names
  puts "\nBegin Game -->> ENTER"
#   gets
  break if gets.chomp.downcase == 'n'
  print "What is your name ? \t"

  name = gets.chomp
  puts "\tHello , #{name} ! "
   print "#{name}, up to what number ? , 1 up to .."

  kaze = gets.to_i
 if kaze != 0
puts "Guess the hidden number from 1 to #{kaze}"



  sodi = rand(1..kaze)

  i = 0

  loop do

  i = i + 1
   print "\ngive a number : "

   x = gets.to_i


    print "\n\t Times - ", "(",i, ")", "\n"





   if x == sodi

    print "\n\t V I C T O R Y !!\n"
    puts "\n#{name} winner from #{i} times on number #{sodi} for #{kaze}"
    result = i

    name_storage.add_name(name, result)
    name_storage.save_names
    puts
  name_storage.display_names

    puts "Restart Game -> Enter"
  gets
    break
   else
    puts "Br-r-r"
   if x < sodi
    puts '-> more'
   elsif x > sodi
    puts '<- less'



   end

   end

   end
  end

end
