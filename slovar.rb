require 'pdf-reader'

def extract_translation(file_path)
  reader = PDF::Reader.new(file_path)

  # Извлекаем текст из каждой страницы PDF
  pages_text = reader.pages.map(&:text)

  # Объединяем текст со всех страниц в одну строку
  all_text = pages_text.join("\n")

  # Разделяем текст на строки
  lines = all_text.split("\n")

  # Создаем хэш-таблицу для хранения пар слов и их переводов
  dictionary = {}

  # Итерируемся по строкам и извлекаем пары слов
  lines.each do |line|
    # Разделяем строку на слова
    words = line.split(' ')

    # Проверяем, что строка содержит разделитель между словами
    if words.include?('—')
      separator_index = words.index('—')

      # Извлекаем английское слово
      english_word = words[0..(separator_index - 1)].join(' ')

      # Извлекаем русский перевод
      russian_words = words[(separator_index + 1)..-1]
      russian_word = russian_words.join(' ')

      # Добавляем пару слов в словарь
      dictionary[english_word] = russian_word
    end
  end

  dictionary
end

# Укажите путь к вашему PDF-файлу
file_path = './englishru.pdf'

# Извлекаем пары слов из PDF-файла
dictionary = extract_translation(file_path)

# Выводим произвольную пару слов в терминале
random_pair = dictionary.to_a.sample
puts "Английское слово: #{random_pair[0]}"
puts "Русский перевод: #{random_pair[1]}"

# Повторяем процесс
random_pair = dictionary.to_a.sample
puts "Английское слово: #{random_pair[0]}"
puts "Русский перевод: #{random_pair[1]}"