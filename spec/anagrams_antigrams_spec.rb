require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#initialize')do
    it('Downcases the string arguments, deletes spaces and non letters')do
      anagrams = Anagrams.new("!#$%^he llo$(@9", "3432by e467!")
      expect(anagrams.word1).to(eq("hello"))
      expect(anagrams.word2).to(eq("bye"))
    end
  end

  describe('#anagrams?')do
    it('Will check to see if 2 words are anagrams')do
      anagram = Anagrams.new("tea", "eat")
      expect(anagram.anagrams?).to(eq("These words are Anagrams!"))
    end

    it('It will check for the possibility of words having different cases but should still be anagrams')do
      anagram = Anagrams.new("Tea", "Eat")
      expect(anagram.anagrams?).to(eq("These words are Anagrams!"))
    end
  end

  describe('#antigrams?')do
    it('Will check to see if 2 words are antigrams')do
      antigram = Anagrams.new("hi", "bye")
      expect(antigram.antigrams?).to(eq("These words have no letter matches and are antigrams."))
    end
  end 

  describe('#words?')do  
    it('Will check to see if the input are not actual words')do
      word = Anagrams.new("pkmn", "kmpn")
      expect(word.words?).to(eq(true)) 
    end
  end 

  describe('#palindrome?')do
    it('Will check to see if the input is an anagram and also a  palindrome')do
      palindrome = Anagrams.new("racecar", "racecar")
      expect(palindrome.palindrome?).to(eq("This anagram is also a palindrome!"))
    end
  end
end
