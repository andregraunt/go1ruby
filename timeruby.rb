
# puts Time.now.strftime("%d/%m/%Y %H:%M")
loop do
  puts "\e[H\e[2J"

time = Time.now
time_without_date = time.strftime("%H:%M:%S")
puts time_without_date
sleep 1
end
