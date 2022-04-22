require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagrams?')do
    it('Will return true if 2 words are anagrams')do
      word = Anagrams.new()
      expect(word.anagrams?("tea", "eat")).to(eq(true))
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