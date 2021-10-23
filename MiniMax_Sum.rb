def miniMaxSum(arr)
  sum = []
  sorted_array = arr.combination(4).to_a
  sorted_array.each do |element|
    sum << element.reduce(&:+)
  end
  puts sum.minmax.join(' ')
end

miniMaxSum([1, 3, 5, 7, 9])

