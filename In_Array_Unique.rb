def in_array(arr1, arr2)
  r = []
  arr1.each do |element|
    arr2.each do |s|
      r << element if s.include?(element)
    end
  end
  r.uniq!.sort
  r
end

def in_array2(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end

arr1 = %w[xyz live strong]
arr2 = %w[lively alive harp sharp armstrong]

puts "inArray #{in_array(arr1, arr2)}"
