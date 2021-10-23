def pig_it text
  newArray = []
  array = text.split(' ')
  array.each do |element|
    if %w[? !].include?(element)
      newArray << element
    else
      newArray.push("#{element.slice(1, element.length)}#{element.slice(0, 1)}ay")
    end
  end
  newArray.join(' ')
end
