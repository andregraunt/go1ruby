require 'pdf-reader'

def extract_text_from_pdf(file_path)
  reader = PDF::Reader.new(file_path)

  # Извлекаем текст из каждой страницы PDF
  pages_text = reader.pages.map(&:text)

  # Объединяем текст со всех страниц в одну строку
  all_text = pages_text.join("\n")

  all_text
end

def save_text_to_file(text, file_path)
  File.open(file_path, 'w') do |file|
    file.write(text)
  end
end

# Укажите путь к вашему PDF-файлу
pdf_file_path = './englishru.pdf'

# Укажите путь для сохранения файла TXT
txt_file_path = './englishru.txt'

# Извлекаем текст из PDF-файла
text = extract_text_from_pdf(pdf_file_path)

# Сохраняем текст в файле TXT
save_text_to_file(text, txt_file_path)

puts "Текст успешно сохранен в файле #{txt_file_path}"