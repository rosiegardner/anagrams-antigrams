require('pry')
#ruby-dictionary


class Anagrams
  attr_reader :word1, :word2
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end
  
  def anagrams?() 
    anagrams1 = @word1.split("").sort
    anagrams2 = @word2.split("").sort
    words?
    if(anagrams1 == anagrams2)
      "These words are Anagrams!"
    end
  end

  def antigrams?() 
    antigrams1 = @word1.split("").sort
    antigrams2 = @word2.split("").sort
    if(antigrams1 != antigrams2)
      "These words have no letter matches and are antigrams."
    end 
  end
  
  def words?() 
    word = @word1.split(" ")
    word2 = @word2.split(" ")
    if(word.all? { |word| word.count('aeiou') >= 1 }) && (word2.all? { |word| word2.count('aeiou') >= 1 })
      true
    else
      "You need to put in an actual word!"
    end 
  end
end






# attr_reader :words