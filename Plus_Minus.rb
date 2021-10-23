def plusMinus(arr)
  positives = []
  zeroes = []
  negatives = []
  arr.each do |element|
    positives << element if element.positive?
    negatives << element if element.negative?
    zeroes << element if element.zero?
  end
  puts format('%5.6f', (positives.length.to_f / arr.length))
  puts format('%5.6f', (negatives.length.to_f / arr.length))
  puts format('%5.6f', (zeroes.length.to_f / arr.length))
end

puts plusMinus([-9, -3, -9, 0, -4, -1])

