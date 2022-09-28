def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
 counter.to_a.sort_by { |k, v| k }[0][0]
end

puts get_most_common_letter(gets.chomp)