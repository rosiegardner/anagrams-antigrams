#!/usr/bin/env ruby
require './lib/anagrams_antigrams.rb'

puts ""
puts "   Greetings Earthling!  "
puts ""
puts "     .adOOOOOOOOOba. "
puts "    dOOOOOOOOOOOOOOOb "
puts "   dOOOOOOOOOOOOOOOOOb "
puts "  dOOOOOOOOOOOOOOOOOOOb "
puts " |OOOOOOOOOOOOOOOOOOOOO| "
puts " OP'~'YOOOOOOOOOOOP'~`YO "
puts " OO     `YOOOOOP'     OO "
puts " OOb      `OOO'      dOO "
puts " YOOo      OOO      oOOP "
puts " `OOOo     OOO     oOOO' "
puts "  `OOOb._,dOOOb._,dOOO' "
puts "   `OOOOOOOOOOOOOOOOO' "
puts "    OOOOOOOoOoOOOOOOO " 
puts "    YOOOOOOOOOOOOOOOP " 
puts "    `OOOOOI```IOOOOO' " 
puts "     `OOOOI,,,IOOOO' " 
puts "      `OOOOOOOOOOO' " 
puts "        `~OOOOO~' " 
puts ""
puts "Lets put your knowledge of Anagrams to the test!"
puts "Are you ready? Because your life depends on it."
puts "Remember, Anagrams are a word, phrase, or name formed by rearranging the letters of another"
puts ""
puts "Enter in your first word or phrase"
@word1 = gets.chomp.downcase()
puts "Enter in your second word or phrase"
@word2 = gets.chomp.downcase()
words = Anagrams.new(@word1, @word2)
puts words.anagrams?
puts words.antigrams?
puts words.palindrome?
puts words.words?







