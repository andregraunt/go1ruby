def extract_dictionary(file_path, separator)
    dictionary = {}
  
    File.open(file_path, 'r') do |file|
      file.each_line do |line|
        line = line.chomp
        words = line.split(separator)
  
        if words.length == 3
          english_word = words[0].strip
          russian_word = words[1].strip
  
          dictionary[english_word] = russian_word
        end
      end
    end
  
    dictionary
  end
  
  def print_random_pair(dictionary)
    random_pair = dictionary.to_a.sample
    puts "Английское слово: #{random_pair[0]}"
    puts "Русский перевод: #{random_pair[1]}"
  end
  
  # Укажите путь к вашему файлу TXT
  file_path = './englishru.txt'
  
  # Укажите разделитель, используемый в вашем файле TXT
  separator = '~'
#   separator = '—'
  
  # Извлекаем словарь из файла
  dictionary = extract_dictionary(file_path, separator)
  
  # Выводим произвольную пару слов в терминале
  loop do
    puts "\e[H\e[2J"
    puts
  print_random_pair(dictionary)

  sleep 5
  
  # Повторяем процесс
#   print_random_pair(dictionary)
  end