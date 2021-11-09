def arrayManipulation(n, queries)
  array = Array.new(n, 0)
  queries.each do |l|
    indexes = (l.first - 1...l[1]).to_a
    indexes.each do |index|
      array[index] += l.last
    end
  end
  minmax = array.minmax
  p minmax[1]

end

arrayManipulation(10, [[2, 6, 8], [3, 5, 7], [1, 8, 1], [5, 9, 15]])
