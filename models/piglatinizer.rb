class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    words = text.split(' ')
    if words.length == 1
      return pigword(words[0])
    else
      converted_words = words.map {|word| pigword(word)}
      converted_words.join(' ')
    end
  end

  def pigword(word)

    new_word = ''
    vowels = "aAeEiIoOuU"

    if vowels.include?(word[0])
      new_word = word << "w"
    elsif !vowels.include?(word[0]) && vowels.include?(word[1])
      new_word = word[1..-1] + word[0]
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && vowels.include?(word[2])
      new_word = word[2..-1] + word[0,2]
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      new_word = word[3..-1] + word[0,3]
    end
    new_word << "ay"


  end
end
