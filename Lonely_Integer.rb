def lonelyinteger(a)
  element_count = Hash.new(0)
  a.to_a
  a.each do |element|
    element_count[element] += 1
  end
  p element_count.key(1)
end
