def hourglassSum(arr)
  array = []
  result = 0
  (0..arr.length - 3).each do |i|
    (0..arr.length - 3).each do |j|
      result = (arr[i][j].to_i + arr[i][j + 1].to_i + arr[i][j + 2].to_i + arr[i + 1][j + 1].to_i + arr[i + 2][j].to_i + arr[i + 2][j + 1].to_i + arr[i + 2][j + 2].to_i)
      array << result
      p array
    end
  end
  array = array.sort
  p array[array.length - 1]
end

hourglassSum([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6],
              [1, 2, 3, 4, 5, 6]])
