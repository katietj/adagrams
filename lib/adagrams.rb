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
 word.each do |letter|
   case letter
   when "a","A"
     score += 1
   when "b", "B"
     score += 3
   when "c", "C"
     score += 3
   when "d", "D"
     score += 2
   when "e", "E"
     score += 1
   when "f", "F"
     score += 3
   when "g", "G"
     score += 2
   when "h", "H"
     score += 4
   when "i", "I"
     score += 1
   when "j", "J"
     score += 8
   when "k", "K"
     score += 5
   when "l", "L"
     score += 1
   when "m", "M"
     score += 3
   when "n", "N"
     score += 1
   when "o", "O"
     score += 1
   when "p", "P"
     score += 3
   when "q", "Q"
     score += 10
   when "r", "R"
     score += 1
   when "s", "S"
     score += 1
   when "t", "T"
     score += 1
   when "u", "U"
     score += 1
   when "v", "V"
     score += 4
   when "w", "W"
     score += 4
   when "x", "X"
     score += 8
   when "y", "Y"
     score += 4
   when "z," "Z"
     score += 10
   end
 end
   if word.length >= 7
     score += 8
 end
return score
end

def highest_score_from_words (words)
 scores = []
 word_scores = []
 words.each do |word|
   scores << score_word(word)
 end
 i = 0
 words.each do |key, value|
   word_scores << {word:words[i], score:scores[i]}
   i += 1
 end

 return word_scores
end
