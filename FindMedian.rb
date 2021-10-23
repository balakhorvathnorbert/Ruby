def findMedian(arr)
  arr.to_a.sort!
  puts arr if arr.length == 1
  puts arr[arr.length / 2]
end
ar2 = [3, 5, 1, 4, 2]
puts findMedian(ar2)

