def diagonal_difference(arr)
  sum_of_first_diagonal = 0
  sum_of_second_diagonal = 0
  arr.each_with_index do |element, i|
    sum_of_first_diagonal += arr[i][i].to_i
    sum_of_second_diagonal += arr[i][arr.length - i - 1].to_i
  end
  summing = sum_of_first_diagonal - sum_of_second_diagonal
  summing.abs
end

