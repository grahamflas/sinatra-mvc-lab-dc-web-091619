class PigLatinizer
  attr_reader :word

  def piglatinize(user_input)

    user_input.split(" ").map do |word|

      if %w(a e i o u).any?(word[0].downcase)
        word + "way"
  
      else 
        word_to_array = word.split(/([aeiou].*)/)
        
        piglatinized_word = word_to_array[1] + word_to_array[0] + "ay"      
      end

    end.join(" ")
  end

end