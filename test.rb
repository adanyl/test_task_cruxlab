number_of_passwords = 0
file = File.open('input.txt')

file.each do |string|
  letter, string_range, password = string.gsub(':', ' ').split
  range = Range.new(*string_range.split('-').map(&:to_i))

  letters_in_password = password.count(letter)
  number_of_passwords += 1 if range.include?(letters_in_password)
end

puts "Number of passwords = #{number_of_passwords}"
