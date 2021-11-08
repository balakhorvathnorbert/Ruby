def rotateLeft(d, arr)
  arr.rotate(d)

end

def rotateLeft2(d, arr)
  d.times do
    element = arr[0]
    arr.shift
    arr.push(element)
  end
  return arr
end

arr = [5, 6, 7, 8, 9]
p rotateLeft2(2, arr)
