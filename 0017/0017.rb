#!/usr/bin/env ruby

SINGLE = {
  '1' => 'one',
  '2' => 'two',
  '3' => 'three',
  '4' => 'four',
  '5' => 'five',
  '6' => 'six',
  '7' => 'seven',
  '8' => 'eight',
  '9' => 'nine',
  '10' => 'ten',
  '11' => 'eleven',
  '12' => 'twelve',
  '13' => 'thirteen',
  '14' => 'fourteen',
  '15' => 'fifteen',
  '16' => 'sixteen',
  '17' => 'seventeen',
  '18' => 'eighteen',
  '19' => 'nineteen'
}

TENS = {
  '2' => 'twenty',
  '3' => 'thirty',
  '4' => 'forty',
  '5' => 'fifty',
  '6' => 'sixty',
  '7' => 'seventy',
  '8' => 'eighty',
  '9' => 'ninety',
}

HUNDREDS = {
  '1' => 'one hundred',
  '2' => 'two hundred',
  '3' => 'three hundred',
  '4' => 'four hundred',
  '5' => 'five hundred',
  '6' => 'six hundred',
  '7' => 'seven hundred',
  '8' => 'eight hundred',
  '9' => 'nine hundred'
}


THOUSANDS = {
  '1' => 'one thousand'
}

def number_to_words(n)
  n = "%04d" % n
  s = []
  s << THOUSANDS[n[0,1]] if n[0,1] != '0' 
  s << HUNDREDS[n[1,1]]  if n[1,1] != '0'
  unless s.empty?
    s << 'and'             if n[2,2] != '00'
  end
  unless ['0', '1'].include? n[2,1]
    s << TENS[n[2,1]]
    s << SINGLE[n[3,1]] if n[3,1] != 0
  else
    if n[2,1] == '0'
      s << SINGLE[n[3,1]]
    else
      s << SINGLE[n[2,2]]
    end
  end
  s.join(' ')
end


c = 0
(1..1000).each do |i|
  c += number_to_words(i).gsub( /[^A-Za-z]/, '' ).length
end

puts c


