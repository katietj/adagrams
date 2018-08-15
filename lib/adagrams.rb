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

#puts "These are the letters you can use: #{draw_letters}"


input = ""
letters_in_hand = []

def uses_available_letters?(input, letters_in_hand)
  input =  input.split('').each {|c|}
  input.each_with_index do |letter|

    if letters_in_hand.include?(letter) == true

      letters_in_hand.delete_at(letters_in_hand.find_index(letter))

    elsif  letters_in_hand.include?(letter) == false

      return false

    end
  end
end

uses_available_letters?(input, letters_in_hand)

def score_word(word)
  word = word.split('').each {|letter|}
  score = 0
  if word.length >= 7
    score += 8
  end
  word.each do |letter|
    case letters
    when "a"
      score += 1
end

def score_word(word)
  word = word.split('').each {|letter|}
  score = 0
  word.each do |letter|
    case letter
    when "a"
      score += 1
    when "b"
      score += 3
    when "c"
      score += 3
    when "d"
      score += 2
    when "e"
      score += 1
    when "f"
      score += 3
    when "g"
      score += 2
    when "h"
      score += 4
    when "i"
      score += 1
    when "j"
      score += 8
    when "k"
      score += 5
    when "l"
      score += 1
    when "m"
      score += 3
    when "n"
      score += 1
    when "o"
      score += 1
    when "p"
      score += 3
    when "q"
      score += 10
    when "r"
      score += 1
    when "s"
      score += 1
    when "t"
      score += 1
    when "u"
      score += 1
    when "v"
      score += 4
    when "w"
      score += 4
    when "x"
      score += 8
    when "y"
      score += 4
    when "z"
      score += 10
    end
  end
    if word.length >= 7
      score += 8
  end
return score
end


puts score_word("cat")
