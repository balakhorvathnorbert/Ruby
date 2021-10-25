def countingSort(arr)
  arr.sort!
  hash = Hash.new(0)
  arr.each do |num|
    hash[num] += 1
    p hash
  end
  p results = Array.new(arr.length, 0)
  hash.each do |element|
    p element
    results[element[0]] = element[1]
  end
  p results
end

countingSort([1, 5, 9, 8, 5, 5, 5, 5, 1])
