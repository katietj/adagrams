#Katie and Katherine

letters = %w(a a a a a a a a a b b c c d d d d e e e e e e e e e e e e f f g g g h h i i i i i i i i i k l l l l m m n n n n n n o o o o o o o o p p q r r r r r r s s s s t t t t t u u u u v v w w x y y z)
users_hand = []

def draw_letters
letters = %w(a a a a a a a a a b b c c d d d d e e e e e e e e e e e e f f g g g h h i i i i i i i i i k l l l l m m n n n n n n o o o o o o o o p p q r r r r r r s s s s t t t t t u u u u v v w w x y y z)
users_hand = []
  letter_pool = letters.map do |letters|
    letters
  end
    10.times do |letters|
      users_hand << letter_pool.delete_at(rand(letter_pool.length))
    end
 return users_hand
end

puts "These are the letters you can use: #{draw_letters}"


input = "boz"
letters_in_hand = ["b","m","z","z"]

def uses_available_letters(input, letters_in_hand)
input =  input.split('').each {|c|}
input.each_with_index do |letter|

if letters_in_hand.include?(letter) == true

letters_in_hand.delete_at(letters_in_hand.find_index(letter))

elsif  letters_in_hand.include?(letter) == false

return false

end
end
end

uses_available_letters(input, letters_in_hand)
