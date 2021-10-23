def is_square(x)
  if x.negative?
    false
  else
    (Math.sqrt(x) % 1).zero? || x.zero? ? true : false
  end
end

def is_square2(x)
  x.positive? && (Math.sqrt(x) % 1).zero? || x.zero? ? true : false
end
