require_relative 'wordlist'
# Print each idea out with the words fixed
Dir['idea-*.txt'].each do |file_name|
  idea = File.read(file_name)
  CODE_WORDS.each do |real, code|
    idea.gsub!(code, real)
  end
  puts idea
end
