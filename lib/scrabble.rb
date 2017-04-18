require('descriptive_statistics')

class String
  define_method(:scrabble) do
    letter_values = Hash.new()
    letter_values.store("a", 1)
    letter_values.store("e", 1)
    letter_values.store("i", 1)
    letter_values.store("0", 1)
    letter_values.store("u", 1)
    letter_values.store("l", 1)
    letter_values.store("n", 1)
    letter_values.store("r", 1)
    letter_values.store("s", 1)
    letter_values.store("t", 1)
    letter_values.store("d", 2)
    letter_values.store("g", 2)
    letter_values.store("b", 3)
    letter_values.store("c", 3)
    letter_values.store("m", 3)
    letter_values.store("p", 3)
    letter_values.store("f", 4)
    letter_values.store("h", 4)
    letter_values.store("v", 4)
    letter_values.store("w", 4)
    letter_values.store("y", 4)
    letter_values.store("k", 5)
    letter_values.store("j", 8)
    letter_values.store("x", 8)
    letter_values.store("q", 10)
    letter_values.store("z", 10)
    score_array = []
    letter_array = self.downcase.split("")
    letter_array.each do |letter|
      score_array.push(letter_values.fetch(letter))
    end
    # letter = self.downcase
    # hash_key = letter_values.each do |key|
      # if key.include?(letter) == true
      #   key
      # end
    puts score_array.sum()
    score_array.sum()
  end
end





#
# letter_values.store(
#   ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"], 1
# )
# letter_values.store(["d", "g"], 2)
# letter_values.store(["b", "c", "m", "p"], 3)
# letter_values.store(["f", "h", "v", "w", "y"], 4)
# letter_values.store("k", 5)
# letter_values.store(["j", "x"], 8)
# letter_values.store(["q", "z"], 10)
