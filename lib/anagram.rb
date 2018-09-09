class Anagram
  attr_accessor :anagram_word

  def initialize(anagram_word)
    @anagram_word = anagram_word
  end

  def match(matched)
    matched.find_all do |word|
      if word.split("").sort == self.anagram_word.split("").sort
        anagram_word
      end
    end
  end

end
