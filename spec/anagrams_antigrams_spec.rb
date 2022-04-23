require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  # describe('#initalize')do
  #   it('Return key end value of word input 1 and 2')do
  #     words = Anagrams.new("Tea" "Eat")
  #     expect(words.words).to(eq("tea" "eat"))
  #   end
  # end
  
  describe('#anagrams?')do
    it('Will check to see if 2 words are anagrams')do
      words = Anagrams.new()
      expect(words.anagrams?("tea", "eat")).to(eq("These words are Anagrams!"))
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