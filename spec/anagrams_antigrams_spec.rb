require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
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

# describe('#initialize')do
#   it('Will return words in downcase')do
#   words = Anagram.new()
#   expect(word.word1("Hi")).to(eq("hi"))
#   end
# end
# it('Will return lower case if user inputs different cases ')do
#   word2 = Anagrams.new()
#   expect(word2.anagrams?("Tea")).to(eq("tea"))
# end

# it('Will respond with "These words are anagrams!" if 2 words are anagrams')do
#   word = Anagrams.new()
#   expect(word.anagram?("tea", "eat")).to(eq("These words are anagrams!"))
# end