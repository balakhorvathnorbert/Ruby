def staircase(n)
  (1..n).each do |i|
    puts ' ' * (n - i) + '#' * i
  end
end

def staircase2(n)
  (1..n).each { |i|
    puts ' ' * (n - i) + '#' * i
  }
end
