require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#initialize')do
    it('Downcases the string arguments, deletes spaces and non letters')do
      anagrams = Anagrams.new("!#$%^hello$(@9", "3432bye467!")
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
    it('Will check to see if the input are actual words')do
      word = Anagrams.new("pkmn", "kmpn")
      expect(word.words?).to(eq("You need to put in an actual word!")) 
    end
  end 
end
