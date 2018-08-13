#Katie and Katherine Anagrams

users_letters =[]

letters = {"A"=>9, "B"=>2, "C"=>2,"D" =>4, "E"=>12, "F"=>2, "G"=>3, "H"=>2, "I"=>9, "J"=>1, "K"=>1, "L"=>4, "M"=>2, "N"=>6, "O"=>8, "P"=>2, "Q"=>1, "R"=>6,
"S"=>4, "T"=>6, "U" =>4, "V"=>2, "W"=>2, "X"=>1, "Y"=>2, "Z"=>1}

def draw_letters
weighted(weighted)
  sum = letters.inject(0) do |sum, item_and_weight|
    sum += item_and_weight[1]
  end
  target = rand(sum)
    letters.each do |item, weight|
    return item if target <= weight
    target -= weight
  end
end
