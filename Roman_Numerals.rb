# frozen_string_literal: true
def solution(roman)
  roman = roman.gsub('IV', 'N')
  roman = roman.gsub('IX', 'G')
  roman_numbers = roman.split('')
  result_array = []
  result = 0
  roman_numbers.each do |roman_number|
    case roman_number
    when 'N'
      result_array << 4
    when 'G'
      result_array << 9
    when 'I'
      result_array << 1
    when 'V'
      result_array << 5
    when 'X'
      result_array << 10
    when 'L'
      result_array << 50
    when 'C'
      result_array << 100
    when 'D'
      result_array << 500
    when 'M'
      result_array << 1000
    end
  end
  result_array.each do |number|
    result += number
  end
  result
end
