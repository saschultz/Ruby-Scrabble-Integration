require('descriptive_statistics')

class String
  define_method(:scrabble) do
    letter_values = Hash.new()
    letter_values.store(["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"], 1)
    letter_values.store(["d", "g"], 2)
    letter_values.store(["b", "c", "m", "p"], 3)
    letter_values.store(["f", "h", "v", "w", "y"], 4)
    letter_values.store("k", 5)
    letter_values.store(["j", "x"], 8)
    letter_values.store(["q", "z"], 10)

    score_array = []
    letter_array = self.downcase.split("")
    letter_array.each do |letter|
      letter_key = 0
      letter_values.each_key do |key|
        if key.include?(letter)
          letter_key = key
        end
      end
      score_array.push(letter_values.fetch(letter_key))
    end
    score_array.sum()
  end
end
