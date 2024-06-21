# read_file.rb
file_name = "example.txt"

if File.exist?(file_name)
  File.open(file_name, "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
else
  puts "File not found."
end
