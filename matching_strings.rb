def matchingStrings(strings, queries)
  result = Hash.new(0)
  queries.each do |query|
    strings.each do |string|
      result[query] += if query == string && query.respond_to?(:to_str)
                         1
                       else
                         0
                       end
    end
  end
  p result
  p Array.new(result.values).sort!.reverse!
end

strings = %w[aba baba aba xzxb]
queries = %w[aba xzxb ab]
matchingStrings(strings, queries)

def matchingStrings2(strings, queries)
  result = []
  queries.each do |i|
    result.push(strings.count(i))
  end
  return result
end

p matchingStrings2(strings, queries)

