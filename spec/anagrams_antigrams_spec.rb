require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram?')do
    it('Will return true if 2 words are anagrams')do
      word = Anagrams.new()
      expect(word.anagram?("tea", "eat")).to(eq(true))
    end

    it('Will return true if 2 words are anagrams')do
      word = Anagrams.new()
      expect(word.anagram?("ruby", "bury")).to(eq(true))
    end

    # it('Will respond with "These words are anagrams!" if 2 words are anagrams')do
    #   word = Anagrams.new()
    #   expect(word.anagram?("tea", "eat")).to(eq("These words are anagrams!"))
    # end
    

  end
end