array_new = [5,24,55,2,89,31,11]

def sorting(arr)
  arr.sort!
  min_max = arr.minmax
  sum = min_max.reduce(&:+)
  puts sum / min_max.length
end

sorting(array_new)

def sorting2(arr)
  arr.sort!

  odd = arr.filter(&:odd?)
  minmax_odd = odd.min
  even = arr.filter(&:even?)
  min_max_even = even.max
  final_number = []
  final_number.push(minmax_odd, min_max_even)
  sum = final_number.reduce(&:+)
  puts sum / final_number.length
end
sorting2(array_new)
