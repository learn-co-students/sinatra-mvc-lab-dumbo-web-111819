class PigLatinizer
  attr_reader :piglatin_text, :ordw

  def initialize(english)
    @english = english.downcase
  end

  def split_and_rearrange
    @words = @english.split(" ")
    split_words_sentence = ""
    @words.each do |word|
      period = word.scan(/[.]/) # scan for periods
      word.tr('.','') # why not working?
      ordw = word.scan(/[aeiou]/).first # find the first vowel
      if ordw
        split_word = word.split(ordw, 2) # the 2 limits split to 2 parts
        ordw += split_word[1]
        ordw += split_word[0]
        ordw += "ay"
        split_words_sentence << ordw
      else
        split_words_sentence << word
      end
      if period[0]
        split_words_sentence << period[0]
      end
      split_words_sentence << " "
    end
    split_words_sentence.capitalize
  end

end
