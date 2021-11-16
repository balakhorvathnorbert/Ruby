def counter(arr)
  result = Hash.new(0)
  arr.each do |element|
    result[element] += 1
  end
  result_array = []
  result.each do |key, value|
    value.even? ? result_array.push(key) : nil
  end
  p result_array
end

p counter(array)
