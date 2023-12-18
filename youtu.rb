

require 'open3'

def download_youtube_video(video_url, output_path)
  command = "youtube-dl -o '#{output_path}' #{video_url}"
  Open3.popen3(command) do |_stdin, _stdout, stderr, _wait_thr|
    error_message = stderr.read
    if error_message.empty?
      puts "Video downloaded successfully!"
    else
      puts "Error: #{error_message}"
    end
  end
end

# Example usage
puts 'Enter link video: '

video_url = gets.chomp
output_path = "video.mp4"

download_youtube_video(video_url, output_path)
# https://www.youtube.com/watch?v=0yZcDeVsj_Y

# require 'open3'

# puts "Enter YouTube video URL: "
# url = gets.chomp

# title = url.split('/').last.split('?').first
# dirname = title

# Dir.mkdir(dirname) unless Dir.exists?(dirname)

# command = "youtube-dl -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --output '#{dirname}/#{title}.mp4' #{url}"

# Open3.capture3(command)

# puts "Video downloaded to #{dirname} folder"