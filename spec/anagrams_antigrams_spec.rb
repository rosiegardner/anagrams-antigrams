require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram?')do
    it('Will return true if 2 words are anagrams')do
      word = Anagrams.new()
      expect(word.anagram?("tea", "eat")).to(eq(true))
    end
  end
end