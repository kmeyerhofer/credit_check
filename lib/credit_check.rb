require 'pry'
card_number = "4024007136512380"
valid = false

split_card = card_number.split(//).reverse

split_card_i = split_card.map.with_index do |num, i|
  if i.odd?
    num_i = num.to_i
    num_i * 2
  else
    num.to_i
  end
end

split_card_2 = split_card_i.map.with_index do |num, i|
  if i.odd? && num >= 10
    num - 9
  else
    num
  end
end

split_card_2_summed = split_card_2.inject(:+)

if split_card_2_summed % 10 == 0
  puts "The number, #{split_card_2_summed}, is valid!"
else
  puts "The number, #{split_card_2_summed}, is invalid!"
end
