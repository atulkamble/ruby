# write_file.rb
file_name = "output.txt"

File.open(file_name, "w") do |file|
  file.puts "This is a sample text."
  file.puts "Written to the file."
end

puts "Content written to #{file_name}"
