def rand_time
  Time.at(rand * Time.now.to_i)
end

people = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]

logins = { # ugly on purpose
           0 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
           1 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
           2 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
           3 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
}


{
  'matayo'=>{ 1973=>1, 1980=>1, 2010=>1, 2003=>1, 1976=>1, 2005=>1, 2011=>1, 1989=>1 },
  'nico'=>{ 1976=>1, 1988=>1, 2005=>1, 1980=>1, 1983=>1, 1972=>2, 1987=>1 },
  'angelo'=>{ 1982=>1, 2006=>1, 1988=>1, 1992=>2, 2016=>1, 1995=>2 },
  'luca'=>{ 1992=>1, 1970=>1, 1972=>1, 1978=>1, 1976=>1, 2004=>1, 2009=>1, 2011=>1 },
}

def login_counter(people, logins)
  p logins
  years_counted = Hash.new(0)
  people_hash = Hash[*people.flatten!]

  logins.each do |key, value|
    value.map! { |item| item.strftime('%Y').to_i }
    logins[key] = value.group_by(&:itself).transform_values(&:count)
    logins.reduce({}) do |acc, (key, value)|
      new_key = people_hash[key] || key
      acc[new_key] = value
      years_counted = acc
    end
  end
  puts years_counted
end

login_counter(people, logins)
