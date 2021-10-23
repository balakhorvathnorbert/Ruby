def persistence(n)
  counter = 0
  loop do
    return counter if n < 10

    n = n.digits.reduce(&:*)
    counter += 1
  end
end

puts "Final result: #{persistence(4)}"

