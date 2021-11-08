def reverse_string(string)
  split_string = string.split(' ')
  split_string.each do |element|
    element.reverse!
  end
  return split_string.join(' ')
end

p reverse_string('Hello there')
